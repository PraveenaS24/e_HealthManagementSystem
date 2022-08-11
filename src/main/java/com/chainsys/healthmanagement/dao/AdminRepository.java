package com.chainsys.healthmanagement.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.healthmanagement.model.Admin;

@Repository
public interface AdminRepository extends JpaRepository<Admin, Integer> {
	Admin save(Admin admin);

	Admin findByAdminIdAndPassword(int id, String password);
}
