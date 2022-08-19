package com.chainsys.healthmanagement.dto;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.healthmanagement.model.FeedBack;
import com.chainsys.healthmanagement.model.Patient;

public class FeedBackAndPatientDTO {
	@Autowired
	private Patient patient;
	private FeedBack feedBack;

	public Patient getPatient() {
		return patient;
	}

	public void setPatient(Patient patient) {
		this.patient = patient;
	}

	public FeedBack getFeedBack() {
		return feedBack;
	}

	public void setFeedBack(FeedBack feedBack) {
		this.feedBack = feedBack;
	}

}
