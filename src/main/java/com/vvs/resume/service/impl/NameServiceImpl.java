package com.vvs.resume.service.impl;

import org.apache.commons.lang.WordUtils;
import org.springframework.stereotype.Service;

import com.vvs.resume.service.NameService;

@Service
public class NameServiceImpl implements NameService {

	@Override
	public String convertName(String name) {
		
		if (name.contains("-")) {
			String[] part = name.split("-");
			return WordUtils.capitalize(part[0]) + " " + WordUtils.capitalize(part[1]);
		}
		return WordUtils.capitalize(name);
	}

}
