package com.chainsys.healthmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.healthmanagement.dao.PatientRepository;
import com.chainsys.healthmanagement.model.Patient;

@Service
public class PatientService {
	@Autowired
	private PatientRepository patientrepo;

	public List<Patient> getAllPatient() {
		List<Patient> patientlist = patientrepo.findAll();
		return patientlist;
	}

	public Patient save(Patient patient) {
		return patientrepo.save(patient);

	}

	public Patient findPatientById(int id) {
		return patientrepo.findById(id);
	}

	public void deletePatient(int id) {
		patientrepo.deleteById(id);
	}

}
