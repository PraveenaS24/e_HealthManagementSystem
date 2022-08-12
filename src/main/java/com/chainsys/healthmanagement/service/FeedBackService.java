package com.chainsys.healthmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.healthmanagement.dao.FeedBackRepository;
import com.chainsys.healthmanagement.dto.FeedBackAndPatientDTO;
import com.chainsys.healthmanagement.model.FeedBack;
import com.chainsys.healthmanagement.model.Patient;

@Service
public class FeedBackService {
	@Autowired
	private FeedBackRepository feedbackrepo;
    public List<FeedBack> getAllFeedBack() {
		List<FeedBack> feedbacklist = feedbackrepo.findAll();
		return feedbacklist;
	}

	public FeedBack save(FeedBack feedback) {
		return feedbackrepo.save(feedback);

	}

	public FeedBack findFeedBackById(int id) {
		return feedbackrepo.findById(id);
	}

	public void deleteFeedBack(int id) {
		feedbackrepo.deleteById(id);
	}
	
}
