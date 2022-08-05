package com.chainsys.healthmanagement.model;

import java.sql.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Staffs")
public class Staffs {

	@Id
	@Column(name = "Staff_Id")
	private int staffId;
	@Column(name = "First_name")
	private String firstName;
	@Column(name = "Last_name")
	private String lastName;
	@Column(name = "Gender")
	private String gender;
	@Column(name = "Contact_No")
	private long contactNo;
	@Column(name = "DOB")
	private Date dob;
	@Column(name = "Email")
	private String email;
	@Column(name = "Role")
	private String role;
	@Column(name = "Qualification")
	private String qualification;
	@Column(name = "Speciality")
	private String speciality;
	@Column(name = "Intime")
	private String intime;
	@Column(name = "Outtime")
	private String outtime;

	@OneToMany(mappedBy = "staffs", fetch = FetchType.LAZY)
	private List<FeedBack> feedback;

	public List<FeedBack> getFeedback() {
		return feedback;
	}

	public void setFeedback(List<FeedBack> feedback) {
		this.feedback = feedback;
	}

	public int getStaffId() {
		return staffId;
	}

	public void setStaffId(int staffId) {
		this.staffId = staffId;
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

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public String getSpeciality() {
		return speciality;
	}

	public void setSpeciality(String speciality) {
		this.speciality = speciality;
	}

	public String getIntime() {
		return intime;
	}

	public void setIntime(String intime) {
		this.intime = intime;
	}

	public String getOuttime() {
		return outtime;
	}

	public void setOuttime(String outtime) {
		this.outtime = outtime;
	}

}
