package com.chainsys.healthmanagement.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name = "feedback")
public class FeedBack {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO,generator="FEEDBACK_ID_REF")
    @SequenceGenerator(name="FEEDBACK_ID_REF",sequenceName ="FEEDBACK_ID_REF",allocationSize = 1)
	@Column(name = "FEEDBACK_ID")
	private int feedbackId;
	@Column(name = "PATIENT_ID")
	@NotNull(message="*Id must be required")
	private int patientId;
	@Column(name = "STAFF_ID")
	@NotNull(message="*Id must be required")
	private int staffId;
	@Column(name = "STAFF_NATURE")
	@Size(max = 30, min = 3, message = "*Staff Nature length should be 3 to 30")
	@NotBlank(message = "*Staff nat can't be Empty")
	private String staffNature;
	@Column(name = "ADDRESS_LOCATE")
	@Size(max = 40, min = 3, message = "*Name length should be 3 to 40")
	@NotBlank(message = "*Address can't be Empty")
	private String addressLocate;
	@Column(name = "PATIENT_COMMENT")
	@Size(max = 40, min = 3, message = "*Comment length should be 3 to 40")
	@NotBlank(message = "*Comment can't be Empty")
	private String patientComment;
	@Column(name = "ONREGISTERFEEDBACK")
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd/MM/yyyy")
	private Date onregisterfeedback;
	@Column(name = "POINTS")
	@NotBlank(message="*Points must be Required")
	private String points;
	
	@OneToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="Patient_Id",nullable=false,insertable=false,updatable=false)
	private Patient patient;

	@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="Staff_Id" , nullable=false,insertable=false,updatable=false)
    private Staffs staffs;
	

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
