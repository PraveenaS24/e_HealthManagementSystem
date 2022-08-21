package com.chainsys.healthmanagement.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.healthmanagement.model.Users;

@Repository
public interface UsersRepository extends JpaRepository<Users, Integer> {
	Users save(Users user);

	Users findByUserIdAndSecretword(String userId, String secretword);

}
