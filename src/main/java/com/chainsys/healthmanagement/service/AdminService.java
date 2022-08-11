package com.chainsys.healthmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.healthmanagement.dao.AdminRepository;
import com.chainsys.healthmanagement.model.Admin;
import com.chainsys.healthmanagement.model.Users;

@Service
public class AdminService {
	@Autowired
	private AdminRepository adminservicerepo;

	public List<Admin> getAllAdmin() {
		List<Admin> adminservicelist = adminservicerepo.findAll();
		return adminservicelist;
	}

	public Admin save(Admin admin) {
		return adminservicerepo.save(admin);
	}

	public Admin getAdminByIdAndPassword(int id, String password) {

		return adminservicerepo.findByAdminIdAndPassword(id, password);
	}

}
