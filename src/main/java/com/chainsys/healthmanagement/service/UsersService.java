package com.chainsys.healthmanagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.healthmanagement.dao.UsersRepository;
import com.chainsys.healthmanagement.model.Users;

@Service
public class UsersService {
	@Autowired
	private UsersRepository userservicerepo;

	public List<Users> getAllUsers() {
		List<Users> userservicelist = userservicerepo.findAll();
		return userservicelist;
	}

	public Users save(Users user) {
		return userservicerepo.save(user);
	}
}
