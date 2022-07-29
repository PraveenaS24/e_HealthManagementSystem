package com.chainsys.healthmanagement.pojo;

import java.util.Date;

public class FeedBack {
	private int patient_id;
	private int staff_id;
	private String staff_nature;
	private String address_locate;
	private String patient_comment;
	private Date dateoffeedback;
	private int points;

	public int getPatient_id() {
		return patient_id;
	}

	public void setPatient_id(int patient_id) {
		this.patient_id = patient_id;
	}

	public int getStaff_id() {
		return staff_id;
	}

	public void setStaff_id(int staff_id) {
		this.staff_id = staff_id;
	}

	public String getStaff_nature() {
		return staff_nature;
	}

	public void setStaff_nature(String staff_nature) {
		this.staff_nature = staff_nature;
	}

	public String getAddress_locate() {
		return address_locate;
	}

	public void setAddress_locate(String address_locate) {
		this.address_locate = address_locate;
	}

	public String getPatient_comment() {
		return patient_comment;
	}

	public void setPatient_comment(String patient_comment) {
		this.patient_comment = patient_comment;
	}

	public Date getDateoffeedback() {
		return dateoffeedback;
	}

	public void setDateoffeedback(Date dateoffeedback) {
		this.dateoffeedback = dateoffeedback;
	}

	public int getPoints() {
		return points;
	}

	public void setPoints(int points) {
		this.points = points;
	}

}
