package com.vvs.resume.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.vvs.resume.repository.storage.SkillCategoryRepository;

@Controller
public class EditProfileController {
	
	@Autowired
	private SkillCategoryRepository skillCategoryRepository;
	
	@GetMapping("/edit")
	public String getError() {
		return "edit";
	}
	
	@GetMapping("/edit/skills")
	public String getEditSkills(Model model) {
		model.addAttribute("skillCategories", skillCategoryRepository.findAll());
		return "edit-skills";
	}
}
