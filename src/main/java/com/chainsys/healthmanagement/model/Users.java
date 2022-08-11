package com.chainsys.healthmanagement.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Range;
import org.springframework.lang.NonNull;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name = "USERS")
public class Users {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO,generator="USER_ID_REF")
    @SequenceGenerator(name="USER_ID_REF",sequenceName ="USER_ID_REF",allocationSize = 1)
	@Column(name = "USER_ID")
	private int userId;
	@Column(name = "USER_TYPE")
	@Size(max=20, min=3, message="*Name length should be 3 to 20")
	@NotBlank(message="*Name can't be Empty")
	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid type ")
	private String userType;
	@Column(name = "SECRETWORD")
	@Size(max = 20, min = 8, message = "*Minimum eight characters ")
	@NotBlank(message = "*Secretword can't be Empty")
	@Pattern(regexp = "^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$", message = "*at least one letter, one number and one special character ")
	private String secretword;
	@Column(name = "REGISTER")
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd/MM/yyyy")
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
