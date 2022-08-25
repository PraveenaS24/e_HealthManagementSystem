package com.chainsys.healthmanagement.dto;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.healthmanagement.model.Patient;
import com.chainsys.healthmanagement.model.PrescriptionDetails;

public class PatientPrescriptionDetailsDTO {

	@Autowired
	private Patient patient;

	private List<PrescriptionDetails> patientpreslist = new ArrayList<>();

	public Patient getPatient() {
		return patient;
	}

	public void setPatient(Patient patient) {
		this.patient = patient;
	}

	public List<PrescriptionDetails> getPatientpreslist() {
		return patientpreslist;
	}
	
	public void addPrescriptionDetail(PrescriptionDetails prescriptionDetails) {
		patientpreslist.add(prescriptionDetails);
	}
}
