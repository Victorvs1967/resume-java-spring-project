package com.vvs.resume.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.vvs.resume.entity.Profile;
import com.vvs.resume.entity.Skill;
import com.vvs.resume.entity.SkillCategory;
import com.vvs.resume.form.SignUpForm;
import com.vvs.resume.repository.storage.ProfileRepository;
import com.vvs.resume.repository.storage.SkillCategoryRepository;
import com.vvs.resume.service.EditProfileService;

@Service
public class EditProfileServiceImpl implements EditProfileService {

	@Autowired
	private ProfileRepository profileRepository;
	
	@Autowired
	private SkillCategoryRepository skillCategoryRepository;
	
	@Override
	public Profile createNewProfile(SignUpForm signUpForm) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Skill> listSkills(long idProfile) {
		return profileRepository.findById(idProfile).get().getSkills();
	}

	@Override
	public List<SkillCategory> listSkillCategories() {
		return (List<SkillCategory>) skillCategoryRepository.findAll(Sort.by("id"));
	}

	@Override
	public void updateSkills(long idProfile, List<Skill> skills) {
		// TODO Auto-generated method stub

	}
}
