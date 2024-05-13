package com.jee.multitenancy.schema.service;

import com.jee.multitenancy.schema.entity.Note;
import com.jee.multitenancy.schema.repository.NoteRepository;
import org.springframework.stereotype.Service;

@Service
public class NoteService {

    private NoteRepository repository;

    public NoteService(NoteRepository repository) {
        this.repository = repository;
    }

    public Note createNote(Note note) {
        return repository.save(note);
    }

    public Note findNote(Long id) {
        return repository.findById(id).orElseThrow();
    }

    public Iterable<Note> findAllNotes() {
        return repository.findAll();
    }
}
