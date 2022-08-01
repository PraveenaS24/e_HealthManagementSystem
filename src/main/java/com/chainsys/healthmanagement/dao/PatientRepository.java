package com.chainsys.healthmanagement.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.chainsys.healthmanagement.pojo.Patient;

public interface PatientRepository extends JpaRepository<Patient, Integer> {
	Patient findById(int id);

	Patient save(Patient patient);

	void deleteById(int patientid);

	List<Patient> findAll();
}
