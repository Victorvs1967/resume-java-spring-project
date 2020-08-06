package com.vvs.resume.controller;

import java.io.UnsupportedEncodingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.data.web.SortDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.vvs.resume.Constants;
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
	public String listAll(Model model) {
		Page<Profile> profiles = findProfileService.findAll(PageRequest.of(0, Constants.MAX_PROFILES_PER_PAGE, Sort.by("id")));
		model.addAttribute("profiles", profiles.getContent());
		model.addAttribute("page", profiles);
		return "profiles";
	}
	
	@GetMapping("/fragment/more")
	public String moreProfiles(Model model, @PageableDefault(size=Constants.MAX_PROFILES_PER_PAGE) @SortDefault(sort="id") Pageable pageable) throws UnsupportedEncodingException {
		Page<Profile> profiles = findProfileService.findAll(pageable);
		model.addAttribute("profiles", profiles.getContent());
		return "fragment/profile-items";
	}
	
	@GetMapping(value="/error")
	public String getError() {
		return "error";
	}
}