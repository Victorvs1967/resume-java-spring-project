package com.vvs.resume.service;

import com.vvs.resume.entity.Profile;

public interface FindProfileService {
	
	Profile findByUid(String uid);
	
	Iterable<Profile> findAll();
}
