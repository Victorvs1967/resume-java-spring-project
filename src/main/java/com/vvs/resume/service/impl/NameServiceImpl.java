package com.vvs.resume.service.impl;

import org.springframework.stereotype.Service;

import com.vvs.resume.service.NameService;

@Service
public class NameServiceImpl implements NameService {

	@Override
	public String convertName(String name) {
		return name.toUpperCase();
	}

}
