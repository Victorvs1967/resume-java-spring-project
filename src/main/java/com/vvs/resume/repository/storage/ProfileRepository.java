package com.vvs.resume.repository.storage;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.vvs.resume.entity.Profile;

public interface ProfileRepository extends PagingAndSortingRepository<Profile, Long> {
	
	default Profile findOne(Long id) {
		return findById(id).get();
	}

	Profile findByUid(String uid);
	
	Profile findByEmail(String email);
	
	Profile findByPhone(String phone);
	
	int countByUid(String uid);
	
	Page<Profile> findAllByCompletedTrue(Pageable pageable);
	
	List<Profile> findByCompletedFalseAndCreatedBefore(Timestamp oldDate);

}
