package com.chainsys.healthmanagement.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "Patient")
public class Patient {
	@Id
	@Column(name = "Patient_Id")
	private int patientId;
	@Column(name = "First_name")
	private String firstName;
	@Column(name = "Last_name")
	private String lastName;
	@Column(name = "Gender")
	private String gender;
	@Transient
	private int countryCode;

	@Column(name = "Contact_No")
	private long contactNo;
	@Column(name = "DOB")
	private Date dob;
	@Column(name = "Email")
	private String email;
	@Column(name = "Bloodgroup")
	private String bloodgroup;
	@Column(name = "Address")
	private String address;
	@Column(name = "Staff_Id")
	private String staffId;
	@Column(name = "Observation")
	private Date observation;
	@Column(name = "Report")
	private String report;
	@Column(name = "Prescription")
	private String prescription;
	@Column(name = "Fees")
	private float fees;
	@Column(name = "Foodmaintenance")
	private String foodmaintenance;
	@Column(name = "Revisit")
	private String revisit;
	@OneToOne(mappedBy = "patient", fetch = FetchType.LAZY)
	private FeedBack feedback;

	public FeedBack getFeedback() {
		return feedback;
	}

	public void setFeedback(FeedBack feedback) {
		this.feedback = feedback;
	}

	public int getPatientId() {
		return patientId;
	}

	public void setPatientId(int patientId) {
		this.patientId = patientId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public long getContactNo() {
		return contactNo;
	}

	public void setContactNo(long contactNo) {
		this.contactNo = contactNo;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBloodgroup() {
		return bloodgroup;
	}

	public void setBloodgroup(String bloodgroup) {
		this.bloodgroup = bloodgroup;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getStaffId() {
		return staffId;
	}

	public void setStaffId(String staffId) {
		this.staffId = staffId;
	}

	public Date getObservation() {
		return observation;
	}

	public void setObservation(Date observation) {
		this.observation = observation;
	}

	public String getReport() {
		return report;
	}

	public void setReport(String report) {
		this.report = report;
	}

	public String getPrescription() {
		return prescription;
	}

	public void setPrescription(String prescription) {
		this.prescription = prescription;
	}

	public float getFees() {
		return fees;
	}

	public void setFees(float fees) {
		this.fees = fees;
	}

	public String getFoodmaintenance() {
		return foodmaintenance;
	}

	public void setFoodmaintenance(String foodmaintenance) {
		this.foodmaintenance = foodmaintenance;
	}

	public String getRevisit() {
		return revisit;
	}

	public void setRevisit(String revisit) {
		this.revisit = revisit;
	}

	public int getCountryCode() {
		return countryCode;
	}

	public void setCountryCode(int countryCode) {
		this.countryCode = countryCode;
	}

}
