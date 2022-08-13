package com.chainsys.healthmanagement.model;

import java.sql.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Digits;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Range;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name = "Staffs")
public class Staffs {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO,generator="STAFF_ID_REF")
    @SequenceGenerator(name="STAFF_ID_REF",sequenceName ="STAFF_ID_REF",allocationSize = 1)
	@Column(name = "STAFF_ID")
	private int staffId;
	@Column(name = "FIRST_NAME")
	@Size(max = 20, min = 3, message = "*Name length should be 3 to 20")
	@NotBlank(message = "*Name can't be Empty")
	private String firstName;
	@Column(name = "LAST_NAME")
	@Size(max = 20, min = 3, message = "*Name length should be 3 to 20")
	@NotBlank(message = "*Name can't be Empty")
	private String lastName;
	@Column(name = "GENDER")
	@NotBlank(message = "*Gender is required")
	private String gender;
	@Transient()
	private int countryCode;
	@Column(name = "CONTACT_NO")
	@Digits(integer = 13, fraction = 0)
	private long contactNo;
	@Column(name = "DOB")
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd/MM/yyyy")
	private Date dob;
	@Column(name = "EMAIL")
	@Email(regexp = "[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,3}")
	private String email;
	@Column(name = "ROLE")
	@Size(max = 40, min = 3, message = "*Role length should be 3 to 40")
	@NotNull(message = "*Role is required")
	private String role;
	@Column(name = "QUALIFICATION")
	@Size(max = 20, min = 3, message = "*Qualification length should be 3 to 10")
	@NotNull(message = "*Qualification is required")
	private String qualification;
	@Column(name = "SPECIALITY")
	@Size(max = 30, min = 3, message = "*Speciality length should be 3 to 30")
	@NotNull(message = "*Speciality is required")
	private String speciality;
	@Column(name = "INTIME")
	@NotNull(message = "*InTime is mandatory")
	private String intime;
	@Column(name = "OUTTIME")
	@NotNull(message = "*OutTime is mandatory")
	private String outtime;

	@OneToMany(mappedBy = "staffs", fetch = FetchType.LAZY)
	private List<FeedBack> feedback;

	public List<FeedBack> getFeedback() {
		return feedback;
	}

	public void setFeedback(List<FeedBack> feedback) {
		this.feedback = feedback;
	}

	public int getStaffId() {
		return staffId;
	}

	public void setStaffId(int staffId) {
		this.staffId = staffId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getCountryCode() {
		return countryCode;
	}

	public void setCountryCode(int countryCode) {
		this.countryCode = countryCode;
	}

	public long getContactNo() {
		return contactNo;
	}

	public void setContactNo(long contactNo) {
		this.contactNo = contactNo;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public String getSpeciality() {
		return speciality;
	}

	public void setSpeciality(String speciality) {
		this.speciality = speciality;
	}

	public String getIntime() {
		return intime;
	}

	public void setIntime(String intime) {
		this.intime = intime;
	}

	public String getOuttime() {
		return outtime;
	}

	public void setOuttime(String outtime) {
		this.outtime = outtime;
	}

}
