package com.chainsys.healthmanagement.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.chainsys.healthmanagement.model.FeedBack;

public interface FeedBackRepository extends JpaRepository<FeedBack, Integer> {
	FeedBack findById(int id);

	@SuppressWarnings("unchecked")
	FeedBack save(FeedBack feedback);

	void deleteById(int feedbackid);

	List<FeedBack> findAll();

	List<FeedBack> findByPatientId(int id);
	
	List<FeedBack> findByStaffId(int id);
}
