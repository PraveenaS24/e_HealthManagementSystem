package com.chainsys.healthmanagement.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "feedback")
public class FeedBack {
	@Id
	@Column(name = "Feedback_Id")
	private int feedbackId;
	@Column(name = "Patient_Id")
	private int patientId;
	@Column(name = "Staff_Id")
	private int staffId;
	@Column(name = "Staff_nature")
	private String staffNature;
	@Column(name = "Address_locate")
	private String addressLocate;
	@Column(name = "Patient_Comment")
	private String patientComment;
	@Column(name = "Onregisterfeedback")
	private Date onregisterfeedback;
	@Column(name = "Points")
	private String points;
	@OneToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="Patient_Id",nullable=false,insertable=false,updatable=false)
	private Patient patient;
	

	public Patient getPatient() {
		return patient;
	}

	public void setPatient(Patient patient) {
		this.patient = patient;
	}

	public int getFeedbackId() {
		return feedbackId;
	}

	public void setFeedbackId(int feedbackId) {
		this.feedbackId = feedbackId;
	}

	public int getPatientId() {
		return patientId;
	}

	public void setPatientId(int patientId) {
		this.patientId = patientId;
	}

	public int getStaffId() {
		return staffId;
	}

	public void setStaffId(int staffId) {
		this.staffId = staffId;
	}

	public String getStaffNature() {
		return staffNature;
	}

	public void setStaffNature(String staffNature) {
		this.staffNature = staffNature;
	}

	public String getAddressLocate() {
		return addressLocate;
	}

	public void setAddressLocate(String addressLocate) {
		this.addressLocate = addressLocate;
	}

	public String getPatientComment() {
		return patientComment;
	}

	public void setPatientComment(String patientComment) {
		this.patientComment = patientComment;
	}

	public Date getOnregisterfeedback() {
		return onregisterfeedback;
	}

	public void setOnregisterfeedback(Date onregisterfeedback) {
		this.onregisterfeedback = onregisterfeedback;
	}

	public String getPoints() {
		return points;
	}

	public void setPoints(String points) {
		this.points = points;
	}

}
