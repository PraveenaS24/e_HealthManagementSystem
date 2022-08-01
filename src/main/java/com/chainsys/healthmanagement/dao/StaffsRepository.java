package com.chainsys.healthmanagement.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.chainsys.healthmanagement.pojo.Staffs;

public interface StaffsRepository extends JpaRepository<Staffs, Integer> {
	Staffs findById(int id);

	Staffs save(Staffs staff);

	void deleteById(int staffid);

	List<Staffs> findAll();
}
