package com.jee.multitenancy.schema.service;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.jee.multitenancy.schema.entity.User;
import com.jee.multitenancy.schema.repository.UserRepository;

import jakarta.transaction.Transactional;

@Service
public class UserService implements UserDetailsService {

    private UserRepository repository;
    private PasswordEncoder encoder;
    private TenantService tenantService;

    public UserService(UserRepository repository, TenantService tenantService) {
        this.repository = repository;
        this.tenantService = tenantService;
        this.encoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
    }

    @Transactional
    public User createUser(User user) {
        String encodedPassword = encoder.encode(user.getPassword());
        user.setPassword(encodedPassword);
        User saved = repository.save(user);
        tenantService.initDatabase(user.getUsername());
        return saved;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        return repository.findByUsername(username)
                .orElseThrow(() -> new UsernameNotFoundException("User with the specified username is not found"));
    }
}
