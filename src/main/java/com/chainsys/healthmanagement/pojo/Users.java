package com.chainsys.healthmanagement.pojo;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class Users {
	@Id
	private int user_Id;
	private String user_Type;
	private String secretword;
	private Date register;

	public int getUser_Id() {
		return user_Id;
	}

	public void setUser_Id(int user_Id) {
		this.user_Id = user_Id;
	}

	public String getUser_Type() {
		return user_Type;
	}

	public void setUser_Type(String user_Type) {
		this.user_Type = user_Type;
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
	@Override
    public String toString() {
        return String.format("%d, %s, %s, %s",user_Id, user_Type, secretword, register);
    }

}
