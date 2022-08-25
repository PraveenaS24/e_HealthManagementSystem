package com.chainsys.healthmanagement.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.hibernate.validator.constraints.Range;
import com.fasterxml.jackson.annotation.JsonFormat;

@Entity
@Table(name = "PRESCRIPTIONDETAILS")
public class PrescriptionDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "PRESCRIPTION_ID_REF")
	@SequenceGenerator(name = "PRESCRIPTION_ID_REF", sequenceName = "PATIENT_ID_REF", allocationSize = 1)
	@Column(name = "PRESCRIPTION_ID")
	private int prescriptionId;
	@Column(name = "PATIENT_ID")
	@NotNull(message = "*Id must be required")
	private int patientId;
	@Column(name = "GENDER")
	@NotBlank(message = "*Gender must be required")
	private String gender;
	@Column(name = "STAFF_ID")
	@NotNull(message = "*Id must be required")
	@Range(min = 1, message = "*Greater than zero")
	private int staffId;
	@Column(name = "OBSERVATION")
	@NotNull(message = "*Correct date format is required")
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd/MM/yyyy")
	private Date observation;
	@Column(name = "REPORT")
	@Size(max = 200, min = 3, message = "*Report length should be 3 to 200")
	@NotBlank(message = "*Report can't be Empty")
	private String report;
	@Column(name = "PRESCRIPTION")
	@Size(max = 200, min = 3, message = "*Prescription length should be 3 to 200")
	@NotBlank(message = "*Prescription can't be Empty")
	private String prescription;
	@Column(name = "FEES")
	@NotNull(message = "*Fees is must necessary")
	private float fees;
	@Column(name = "FOODMAINTENANCE")
	@Size(max = 200, min = 3, message = "*Food length should be 3 to 200")
	@NotBlank(message = "*Food can't be Empty")
	private String foodmaintenance;
	@Column(name = "REVISIT")
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd/MM/yyyy")
	private Date revisit;
	
	@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="PATIENT_ID" , nullable=false,insertable=false,updatable=false)
	
    private Patient patient;
	
	public Patient getPatient() {
		return patient;
	}
	public void setPatient(Patient patient) {
		this.patient = patient;
	}
	
	@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="STAFF_ID" , nullable=false,insertable=false,updatable=false)
	
	private Staffs staffs;
	
	public int getPrescriptionId() {
		return prescriptionId;
	}
	public Staffs getStaffs() {
		return staffs;
	}
	public void setStaffs(Staffs staffs) {
		this.staffs = staffs;
	}
	public void setPrescriptionId(int prescriptionId) {
		this.prescriptionId = prescriptionId;
	}
	public int getPatientId() {
		return patientId;
	}
	public void setPatientId(int patientId) {
		this.patientId = patientId;
	}
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getStaffId() {
		return staffId;
	}
	public void setStaffId(int staffId) {
		this.staffId = staffId;
	}
	public Date getObservation() {
		return observation;
	}
	public void setObservation(Date observation) {
		this.observation = observation;
	}
	public String getReport() {
		return report;
	}
	public void setReport(String report) {
		this.report = report;
	}
	public String getPrescription() {
		return prescription;
	}
	public void setPrescription(String prescription) {
		this.prescription = prescription;
	}
	public float getFees() {
		return fees;
	}
	public void setFees(float fees) {
		this.fees = fees;
	}
	public String getFoodmaintenance() {
		return foodmaintenance;
	}
	public void setFoodmaintenance(String foodmaintenance) {
		this.foodmaintenance = foodmaintenance;
	}
	public Date getRevisit() {
		return revisit;
	}
	public void setRevisit(Date revisit) {
		this.revisit = revisit;
	}

}
