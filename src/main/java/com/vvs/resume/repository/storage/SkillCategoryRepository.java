package com.vvs.resume.repository.storage;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.vvs.resume.entity.SkillCategory;

public interface SkillCategoryRepository extends PagingAndSortingRepository<SkillCategory, Long> {

}
