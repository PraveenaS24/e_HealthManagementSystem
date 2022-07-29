package com.chainsys.healthmanagement.pojo;

import java.util.Date;

public class Staffs {
	private int staff_Id;
	private String first_name;
	private String last_name;
	private String gender;
	private long Contact_no;
	private Date dob;
	private String email;
	private String role;
	private String qualification;
	private String speciality;

	public int getStaff_Id() {
		return staff_Id;
	}

	public void setStaff_Id(int staff_Id) {
		this.staff_Id = staff_Id;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public long getContact_no() {
		return Contact_no;
	}

	public void setContact_no(long contact_no) {
		Contact_no = contact_no;
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

}
