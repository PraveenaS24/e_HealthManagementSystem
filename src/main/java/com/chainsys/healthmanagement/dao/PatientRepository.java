package com.chainsys.healthmanagement.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.chainsys.healthmanagement.model.Patient;

@Repository
public interface PatientRepository extends JpaRepository<Patient, Integer> {
	Patient findById(int id);

	@SuppressWarnings("unchecked")
	Patient save(Patient patient);

	void deleteById(int patientid);

	List<Patient> findAll();
	
	Patient getByPatientNameAndPassword(String patientName, String password);
	
	@Query(value = "SELECT * FROM PATIENT where CONTACT_NO=?1", nativeQuery = true)
	public List<Patient> getContactNo(long contactNo);
}
