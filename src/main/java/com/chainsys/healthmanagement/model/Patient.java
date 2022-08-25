package com.chainsys.healthmanagement.model;

import java.sql.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;


import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name = "Patient")
public class Patient {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "PATIENT_ID_REF")
	@SequenceGenerator(name = "PATIENT_ID_REF", sequenceName = "PATIENT_ID_REF", allocationSize = 1)
	@Column(name = "PATIENT_ID")
	private int patientId;
	@Column(name = "PATIENT_NAME")
	@Size(max = 20, min = 3, message = "*Name length should be 3 to 20")
	@NotBlank(message = "*Name can't be Empty")
	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid name ")
	private String patientName;
	@Column(name = "PASSWORD")
	@Size(max = 20, min = 8, message = "*Minimum eight characters ")
	@NotBlank(message = "*Secretword can't be Empty")
	@Pattern(regexp = "^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$", message = "*at least one letter, one number and one special character ")
	private String password;
	@Column(name = "DOB")
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd/MM/yyyy")
	private Date dob;
	@Column(name = "BLOODGROUP")
	@NotNull(message = "*BloodGroup is required")
	private String bloodgroup;
	@Column(name = "CONTACT_NO")
	@Digits(integer = 10, fraction = 0)
	private long contactNo;
	@Column(name = "EMAIL")
	@Email(regexp = "[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,3}")
	private String email;
	@Column(name = "ADDRESS")
	@NotBlank(message = "*Address is required")
	private String address;
	

	@OneToOne(mappedBy = "patient", fetch = FetchType.LAZY)
	private FeedBack feedback;
	
	@OneToMany(mappedBy = "patient", fetch = FetchType.LAZY)
	private List<PrescriptionDetails> prescriptiondetails;

	public List<PrescriptionDetails> getPrescriptiondetails() {
		return prescriptiondetails;
	}


	public void setPrescriptiondetails(List<PrescriptionDetails> prescriptiondetails) {
		this.prescriptiondetails = prescriptiondetails;
	}


	public int getPatientId() {
		return patientId;
	}


	public void setPatientId(int patientId) {
		this.patientId = patientId;
	}


	public String getPatientName() {
		return patientName;
	}


	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public Date getDob() {
		return dob;
	}


	public void setDob(Date dob) {
		this.dob = dob;
	}


	public String getBloodgroup() {
		return bloodgroup;
	}


	public void setBloodgroup(String bloodgroup) {
		this.bloodgroup = bloodgroup;
	}


	public long getContactNo() {
		return contactNo;
	}


	public void setContactNo(long contactNo) {
		this.contactNo = contactNo;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}

	public FeedBack getFeedback() {
		return feedback;
	}


	public void setFeedback(FeedBack feedback) {
		this.feedback = feedback;
	}



}









