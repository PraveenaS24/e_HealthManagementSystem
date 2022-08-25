package com.chainsys.healthmanagement.dto;

import java.util.ArrayList;
import java.util.List;

import com.chainsys.healthmanagement.model.PrescriptionDetails;
import com.chainsys.healthmanagement.model.Staffs;

public class StaffsPrescriptionDetailsDTO {
	private Staffs staffs;
	private List<PrescriptionDetails> staffpreslist = new ArrayList<>();
	public Staffs getStaffs() {
		return staffs;
	}
	public void setStaffs(Staffs staffs) {
		this.staffs = staffs;
	}
	public List<PrescriptionDetails> getStaffspreslist() {
		return staffpreslist;
	}
	public void addPrescriptionDetail(PrescriptionDetails prescriptionDetails) {
		staffpreslist.add(prescriptionDetails);
	}
	
}
