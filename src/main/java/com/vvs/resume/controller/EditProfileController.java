package com.vvs.resume.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class EditProfileController {

	@GetMapping("/edit")
	public String getError() {
		return "edit";
	}
}
