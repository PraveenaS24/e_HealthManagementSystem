package com.chainsys.healthmanagement.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.chainsys.healthmanagement.model.PrescriptionDetails;

@Repository
public interface PrescriptionDetailsRepository extends JpaRepository<PrescriptionDetails, Integer> {
	PrescriptionDetails findById(int id);

	@SuppressWarnings("unchecked")
	PrescriptionDetails save(PrescriptionDetails prescriptiondetails);

	List<PrescriptionDetails> findAll();

	List<PrescriptionDetails> findByPatientId(int id);

	List<PrescriptionDetails> findByStaffId(int id);

	@Query(value = "SELECT * FROM PRESCRIPTIONDETAILS where PATIENT_ID=?1", nativeQuery = true)
	public List<PrescriptionDetails> getPatientId(int patId);
	
	@Query(value = "SELECT * FROM PRESCRIPTIONDETAILS where STAFF_ID=?1", nativeQuery = true)
	public List<PrescriptionDetails> getStaffId(int staffId);
	
}
