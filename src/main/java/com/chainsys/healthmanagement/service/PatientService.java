package com.chainsys.healthmanagement.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.healthmanagement.dao.FeedBackRepository;
import com.chainsys.healthmanagement.dao.PatientRepository;
import com.chainsys.healthmanagement.dao.PrescriptionDetailsRepository;
import com.chainsys.healthmanagement.dto.PatientPrescriptionDetailsDTO;
import com.chainsys.healthmanagement.model.FeedBack;
import com.chainsys.healthmanagement.model.Patient;
import com.chainsys.healthmanagement.model.PrescriptionDetails;

@Service
public class PatientService {
	@Autowired
	private PatientRepository patientrepo;
	@Autowired
	private FeedBackRepository feedBackRepository;
	@Autowired
	private PrescriptionDetailsRepository prescriptionDetailsRepository;

	public List<Patient> getAllPatient() {
		return patientrepo.findAll();
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

	public List<FeedBack> feedBackByPatientId(int id) {
		return feedBackRepository.findByPatientId(id);
	}
	
	public PatientPrescriptionDetailsDTO getPatientPrescriptionDetailsDTO(int id) {
		Patient patient = patientrepo.findById(id);
		PatientPrescriptionDetailsDTO dto= new PatientPrescriptionDetailsDTO();
		dto.setPatient(patient);
		List<PrescriptionDetails> prescriptionDetails= prescriptionDetailsRepository.findByPatientId(id);
		Iterator<PrescriptionDetails> itr=prescriptionDetails.iterator();
		while(itr.hasNext()) {
			dto.addPrescriptionDetail(itr.next());
		}
		return dto;
	}
	
	public Patient getPatientByNameAndPassword(String string, String password) {
		return patientrepo.getByPatientNameAndPassword(string, password);
	}
	
	   public List<Patient> getContactNo(long contactNO) {
	        return patientrepo.getContactNo(contactNO);
	    }

}
