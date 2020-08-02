package com.vvs.resume.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.vvs.resume.entity.Profile;
import com.vvs.resume.service.FindProfileService;

@Controller
public class PublicDataController {
	
	@Autowired
		private FindProfileService findProfileService;

	@GetMapping(value="/{uid}")
	public String getProfile(@PathVariable("uid") String uid, Model model) {
		Profile profile = findProfileService.findByUid(uid);
		if(profile == null) {
			return "profile_not_found";
		}
		model.addAttribute("profile", profile);
		model.addAttribute("uid", uid);
		return "profile";
	}
	
	@GetMapping(value="/welcome")
	public String getAllProfile(Model model) {
		Iterable<Profile> profiles = findProfileService.findAll();
		if (profiles == null) {
			return "profile_not_found";
		}
		model.addAttribute("profiles", profiles);
		return "profile-list";
	}
	
	@GetMapping(value="/error")
	public String getError() {
		return "error";
	}
}