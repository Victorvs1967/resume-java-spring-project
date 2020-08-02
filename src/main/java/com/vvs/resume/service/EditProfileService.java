package com.vvs.resume.service;

import java.util.List;

import com.vvs.resume.entity.Profile;
import com.vvs.resume.entity.Skill;
import com.vvs.resume.entity.SkillCategory;
import com.vvs.resume.form.SignUpForm;

public interface EditProfileService {

	Profile createNewProfile(SignUpForm signUpForm);
	List<Skill> listSkills(long idProfile);
	List<SkillCategory> listSkillCategories();
	void updateSkills(long idProfile, List<Skill> skills);

}
