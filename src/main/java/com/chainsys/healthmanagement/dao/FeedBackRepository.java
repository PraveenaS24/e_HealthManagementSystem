package com.chainsys.healthmanagement.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.chainsys.healthmanagement.pojo.FeedBack;

public interface FeedBackRepository extends JpaRepository<FeedBack, Integer> {
	FeedBack findById(int id);

	FeedBack save(FeedBack feedback);

	void deleteById(int feedbackb_id);

	List<FeedBack> findAll();
}
