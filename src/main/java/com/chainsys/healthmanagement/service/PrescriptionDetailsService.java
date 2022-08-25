package com.chainsys.healthmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.healthmanagement.dao.PrescriptionDetailsRepository;
import com.chainsys.healthmanagement.model.PrescriptionDetails;

@Service
public class PrescriptionDetailsService {
    @Autowired
    private PrescriptionDetailsRepository prescriptiondetailsrepo;
    
    
    public List<PrescriptionDetails> getAllPrescriptionDetails() {
    	return prescriptiondetailsrepo.findAll();
    }

    public PrescriptionDetails save(PrescriptionDetails prescriptiondetails) {
    	return prescriptiondetailsrepo.save(prescriptiondetails);
    }
  
    public PrescriptionDetails findPrescriptionDetailsById(int id) {
    	return prescriptiondetailsrepo.findById(id);
    }
    
    public List<PrescriptionDetails> getPatientId(int patId) {
        return prescriptiondetailsrepo.getPatientId(patId);
    }
    
    public List<PrescriptionDetails> getStaffId(int staffId) {
        return prescriptiondetailsrepo.getStaffId(staffId);
    }
    
}






