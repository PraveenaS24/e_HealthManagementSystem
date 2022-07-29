package com.chainsys.healthmanagement.pojo;

import java.util.Date;

public class PatientDetails {
	private int patient_id;
	private int staff_id;
	private Date dateOfObservation;
	private String report;
	private String prescription;
	private float fees;

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

	public Date getDateOfObservation() {
		return dateOfObservation;
	}

	public void setDateOfObservation(Date dateOfObservation) {
		this.dateOfObservation = dateOfObservation;
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

}
