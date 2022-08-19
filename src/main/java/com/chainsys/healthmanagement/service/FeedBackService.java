package com.chainsys.healthmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.healthmanagement.dao.FeedBackRepository;
import com.chainsys.healthmanagement.model.FeedBack;

@Service
public class FeedBackService {
	@Autowired
	private FeedBackRepository feedbackrepo;
    public List<FeedBack> getAllFeedBack() {
		return feedbackrepo.findAll();
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
	public List<FeedBack>getFeedBackByPatient(int id){
		return feedbackrepo.findByPatientId(id);
	}
	
}
