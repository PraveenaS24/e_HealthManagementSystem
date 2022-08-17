package com.chainsys.healthmanagement.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Range;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name = "Patient")
public class Patient {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "PATIENT_ID_REF")
	@SequenceGenerator(name = "PATIENT_ID_REF", sequenceName = "PATIENT_ID_REF", allocationSize = 1)
	@Column(name = "PATIENT_ID")
	private int patientId;
	@Column(name = "FIRST_NAME")
	@Size(max = 20, min = 3, message = "*Name length should be 3 to 20")
	@NotBlank(message = "*Name can't be Empty")
	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid name ")
	private String firstName;
	@Column(name = "LAST_NAME")
	@Size(max = 20, min = 3, message = "*Name length should be 3 to 20")
	@NotBlank(message = "*Name can't be Empty")
	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid name ")
	private String lastName;
	@Column(name = "GENDER")
	@NotBlank(message = "*Gender is required")
	private String gender;
	@Column(name = "CONTACT_NO")
	@Digits(integer = 10, fraction = 0)
	private long contactNo;
	@Column(name = "DOB")
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd/MM/yyyy")
	private Date dob;
	@Column(name = "EMAIL")
	@Email(regexp = "[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,3}")
	private String email;
	@Column(name = "BLOODGROUP")
	@NotNull(message = "*BloodGroup is required")
	private String bloodgroup;
	@Column(name = "ADDRESS")
	@NotBlank(message = "*Address is required")
	private String address;
	@Column(name = "STAFF_ID")
	@NotNull(message = "*Staffid is required")
	@Range(min = 1, message = "*Greater than zero")
	private int staffId;
	@Column(name = "OBSERVATION")
	@NotNull(message = "*Correct date format is required")
	private Date observation;
	@Column(name = "REPORT")
	@Size(max = 200, min = 3, message = "*Report length should be 3 to 200")
	@NotBlank(message = "*Report can't be Empty")
	private String report;
	@Column(name = "PRESCRIPTION")
	@Size(max = 200, min = 3, message = "*Prescription length should be 3 to 200")
	@NotBlank(message = "*Prescription can't be Empty")
	private String prescription;
	@Column(name = "FEES")
	@NotNull(message = "*Fees is must necessary")
	private float fees;
	@Column(name = "FOODMAINTENANCE")
	@Size(max = 200, min = 3, message = "*Food length should be 3 to 200")
	@NotBlank(message = "*Food can't be Empty")
	private String foodmaintenance;
	@Column(name = "REVISIT")
	@Size(max = 30, min = 3, message = "*Revisit length should be 3 to 30")
	@NotBlank(message = "*Revisit can't be Empty")
	private String revisit;
	@Column(name = "STATUS")
	private String status;

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

	public int getStaffId() {
		return staffId;
	}

	public void setStaffId(int staffId) {
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

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
