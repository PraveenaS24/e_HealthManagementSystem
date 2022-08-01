package com.chainsys.healthmanagement.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.healthmanagement.pojo.Users;

@Repository
public interface UsersRepository extends JpaRepository<Users, Integer> {
	Users save(Users user);

}
