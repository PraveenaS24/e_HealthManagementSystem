package com.chainsys.healthmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.healthmanagement.dao.StaffsRepository;
import com.chainsys.healthmanagement.pojo.Staffs;

@Service
public class StaffsService {
	@Autowired
	private StaffsRepository staffsrepo;

	public List<Staffs> getAllStaffs() {
		List<Staffs> staffslist = staffsrepo.findAll();
		return staffslist;
	}

	public Staffs save(Staffs staffs) {
		return staffsrepo.save(staffs);
	}

	public Staffs findStaffsById(int id) {
		return staffsrepo.findById(id);
	}

	public void deleteStaffs(int id) {
		staffsrepo.deleteById(id);
	}

}
