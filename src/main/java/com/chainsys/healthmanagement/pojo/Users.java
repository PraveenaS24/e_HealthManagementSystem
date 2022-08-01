package com.chainsys.healthmanagement.pojo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "USERS")
public class Users {
	@Id
	@Column(name = "User_Id")
	private int userId;
	@Column(name = "User_Type")
	private String userType;
	@Column(name = "Secretword")
	private String secretword;
	@Column(name = "Register")
	private Date register;

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public String getSecretword() {
		return secretword;
	}

	public void setSecretword(String secretword) {
		this.secretword = secretword;
	}

	public Date getRegister() {
		return register;
	}

	public void setRegister(Date register) {
		this.register = register;
	}

}
