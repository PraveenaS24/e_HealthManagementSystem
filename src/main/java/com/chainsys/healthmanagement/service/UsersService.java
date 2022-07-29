package com.chainsys.healthmanagement.service;

import org.springframework.stereotype.Service;

import com.chainsys.healthmanagement.dao.UsersRepository;
import com.chainsys.healthmanagement.pojo.Users;

@Service
public class UsersService {
	private UsersRepository repo;

	public Users addUsers(Users us) {
		return repo.save(us);
	}
}
