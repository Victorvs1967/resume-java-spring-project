package com.vvs.resume.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.vvs.resume.entity.Profile;
import com.vvs.resume.repository.storage.ProfileRepository;

@Controller
public class PublicDataController {
	
	@Autowired
	private ProfileRepository profileRepository;

	@GetMapping(value="/{uid}")
	public String getProfile(@PathVariable("uid") String uid, Model model){
		Profile profile = profileRepository.findByUid(uid);
		if(profile == null) {
			return "profile_not_found";
		}
		model.addAttribute("profile", profile);
		return "profile";
	}
	
	@GetMapping(value="/all")
	public String getAllProfile(Model model){
		Iterable<Profile> profiles = profileRepository.findAll();
		if(profiles == null) {
			return "profile_not_found";
		}
		model.addAttribute("profiles", profiles);
		return "profile-list";
	}
	
	@GetMapping(value="/error")
	public String getError(){
		return "error";
	}
}