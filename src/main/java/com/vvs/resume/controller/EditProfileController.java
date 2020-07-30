package com.vvs.resume.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.vvs.resume.entity.Profile;
import com.vvs.resume.form.SkillForm;
import com.vvs.resume.repository.storage.ProfileRepository;
import com.vvs.resume.repository.storage.SkillCategoryRepository;

@Controller
public class EditProfileController {
	
	@Autowired
	private SkillCategoryRepository skillCategoryRepository;
	
	@Autowired
	private ProfileRepository profileRepository;
	
	@GetMapping(value="/edit")
	public String getEditProfile(){
		return "edit";
	}
	
	@GetMapping(value = "/edit/skills")
	public String getEditTechSkills(Model model) {
		model.addAttribute("skillForm", new SkillForm(profileRepository.findById(1L).orElse(new Profile()).getSkills()));
		return gotoSkillsJSP(model);
	}

	@PostMapping(value = "/edit/skills")
	public String saveEditTechSkills(@ModelAttribute("skillForm") SkillForm form, BindingResult bindingResult, Model model) {
		if (bindingResult.hasErrors()) {
			return gotoSkillsJSP(model);
        }
		//TODO Update skills 
		return "redirect:/mike-ross";
	}
	
	private String gotoSkillsJSP(Model model){
		model.addAttribute("skillCategories", skillCategoryRepository.findAll());
		return "edit/skills";
	}
}
