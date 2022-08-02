package com.chainsys.healthmanagement.dao;

import org.springframework.data.jpa.repository.JpaRepository;


import com.chainsys.healthmanagement.Dto.FeedBackAndPatientDTO;

public interface FeedBackAndPatientRepository extends JpaRepository<FeedBackAndPatientDTO,Integer> {

	
	FeedBackAndPatientDTO findById(int id);
	FeedBackAndPatientDTO save(String id);
}
