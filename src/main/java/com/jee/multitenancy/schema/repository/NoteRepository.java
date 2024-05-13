package com.jee.multitenancy.schema.repository;

import com.jee.multitenancy.schema.entity.Note;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NoteRepository extends CrudRepository<Note, Long> {
}
