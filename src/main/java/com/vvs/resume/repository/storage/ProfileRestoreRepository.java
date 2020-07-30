package com.vvs.resume.repository.storage;

import org.springframework.data.repository.CrudRepository;

import com.vvs.resume.entity.ProfileRestore;

public interface ProfileRestoreRepository extends CrudRepository<ProfileRestore, Long> {
	
	ProfileRestore findByToken(String token);
}
