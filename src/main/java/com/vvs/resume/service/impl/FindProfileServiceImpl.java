package com.vvs.resume.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vvs.resume.entity.Profile;
import com.vvs.resume.repository.storage.ProfileRepository;
import com.vvs.resume.service.FindProfileService;

@Service
public class FindProfileServiceImpl implements FindProfileService {

	@Autowired
	private ProfileRepository profileRepository;
	
	@Override
	public Profile findByUid(String uid) {
		return profileRepository.findByUid(uid);
	}
	
	@Override
	public Iterable<Profile> findAll() {		
		return profileRepository.findAll();
	}
}
