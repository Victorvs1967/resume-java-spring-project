package com.vvs.resume.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.apache.commons.collections.CollectionUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.vvs.resume.entity.Profile;
import com.vvs.resume.entity.Skill;
import com.vvs.resume.entity.SkillCategory;
import com.vvs.resume.exception.CantCompleteClientRequestException;
import com.vvs.resume.form.SignUpForm;
import com.vvs.resume.repository.storage.ProfileRepository;
import com.vvs.resume.repository.storage.SkillCategoryRepository;
import com.vvs.resume.service.EditProfileService;
import com.vvs.resume.util.DataUtil;


@Service
public class EditProfileServiceImpl implements EditProfileService {
	
	private static Logger LOGGER = LoggerFactory.getLogger(EditProfileServiceImpl.class);

	@Autowired
	private ProfileRepository profileRepository;
	
	@Autowired
	private SkillCategoryRepository skillCategoryRepository;
	
	@Value("${generate.uid.suffix.length}")
	private int generateUidSuffixLength;

	@Value("${generate.uid.alphabet}")
	private String generateUidAlphabet;

	@Value("${generate.uid.max.try.count}")
	private int maxTryCountToGenerateUid;
	
	@Override
	@Transactional
	public Profile createNewProfile(SignUpForm signUpForm) {
		Profile profile = new Profile();
		profile.setUid(generateProfileUid(signUpForm));
		profile.setFirstName(DataUtil.capitalizeName(signUpForm.getFirstName()));
		profile.setLastName(DataUtil.capitalizeName(signUpForm.getLastName()));
		profile.setPassword(signUpForm.getPassword());
		profile.setCompleted(false);
		profileRepository.save(profile);
		return profile;
	}

	private String generateProfileUid(SignUpForm signUpForm) throws CantCompleteClientRequestException {
		String baseUid = DataUtil.generateProfileUid(signUpForm);
		String uid = baseUid;
		for (int i = 0; profileRepository.countByUid(uid) > 0; i++) {
			uid = DataUtil.regenerateUidWithRandomSuffix(baseUid, generateUidAlphabet, generateUidSuffixLength);
			if (i >= maxTryCountToGenerateUid) {
				throw new CantCompleteClientRequestException("Can't generate unique uid for profile: " + baseUid+": maxTryCountToGenerateUid detected");
			}
		}
		return uid;
	}

	@Override
	public List<Skill> listSkills(long idProfile) {
		return profileRepository.findOne(idProfile).getSkills();
	}

	@Override
	public List<SkillCategory> listSkillCategories() {
		return (List<SkillCategory>) skillCategoryRepository.findAll(Sort.by("id"));
	}

	@Override
	@Transactional
	public void updateSkills(long idProfile, List<Skill> updateData) {
		Profile profile = profileRepository.findOne(idProfile);
		if (CollectionUtils.isEqualCollection(updateData, profile.getSkills())) {
			LOGGER.debug("Profile skills: nothing to update.");
			return;
		} else {
			profile.setSkills(updateData);
			profileRepository.save(profile);
		}
	}
}
