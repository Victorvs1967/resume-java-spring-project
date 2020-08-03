package com.vvs.resume.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.vvs.resume.form.SkillForm;
import com.vvs.resume.service.EditProfileService;
import com.vvs.resume.service.FindProfileService;

@Controller
public class EditProfileController {
	
	@Autowired
	private EditProfileService editProfileService;
	
	@Autowired
	private FindProfileService findProfileService;
	
	@GetMapping(value="/edit")
	public String getEditProfile() {
		return "edit";
	}
	
	@GetMapping(value = "/edit/skills/{uid}")
	public String getEditSkills(@PathVariable String uid, Model model) {
		model.addAttribute("skillForm", new SkillForm(findProfileService.findByUid(uid).getSkills()));
		model.addAttribute("uid", uid);
		return toSkillsJSP(uid, model);
	}

	@PostMapping(value = "/edit/skills")
	public String saveEditSkills(@Valid String uid, @ModelAttribute("skillForm") SkillForm form, BindingResult bindingResult, Model model) {
		if (bindingResult.hasErrors()) {
			return toSkillsJSP(uid, model);
        }
		//TODO Update skills
		return "redirect:/";
	}
	
	private String toSkillsJSP(String uid, Model model) {
		model.addAttribute("skillCategories", editProfileService.listSkills(findProfileService.findByUid(uid).getId()));
		return "edit/skills";
	}
}
