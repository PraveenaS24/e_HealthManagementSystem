package com.chainsys.healthmanagement.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.healthmanagement.dao.FeedBackRepository;
import com.chainsys.healthmanagement.dao.PrescriptionDetailsRepository;
import com.chainsys.healthmanagement.dao.StaffsRepository;
import com.chainsys.healthmanagement.dto.FeedBackAndStaffsDTO;
import com.chainsys.healthmanagement.dto.StaffsPrescriptionDetailsDTO;
import com.chainsys.healthmanagement.model.FeedBack;
import com.chainsys.healthmanagement.model.PrescriptionDetails;
import com.chainsys.healthmanagement.model.Staffs;

@Service
public class StaffsService {
	@Autowired
	private StaffsRepository staffsrepo;
	@Autowired
	private FeedBackRepository feedBackRepository;
	@Autowired
	PrescriptionDetailsRepository prescriptionDetailsRepository;

	public List<Staffs> getAllStaffs() {
		return staffsrepo.findAll();
	}

	public Staffs save(Staffs staffs) {
		return staffsrepo.save(staffs);
	}

	public Staffs findStaffsById(int id) {
		return staffsrepo.findById(id);
	}

	public void deleteStaffs(int id) {
		staffsrepo.deleteById(id);
	}

	public FeedBackAndStaffsDTO getFeedBackAndStaffsDTO(int id) {
		Staffs staffs = staffsrepo.findById(id);
		FeedBackAndStaffsDTO dto = new FeedBackAndStaffsDTO();
		dto.setStaffs(staffs);
		List<FeedBack> feedback = feedBackRepository.findByStaffId(id);
		Iterator<FeedBack> itr = feedback.iterator();
		while (itr.hasNext()) {
			dto.addFeedBack(itr.next());
		}
		return dto;
	}
	
	public StaffsPrescriptionDetailsDTO getStaffPrescriptionDetailsDTO(int id) {
		Staffs staff = staffsrepo.findById(id);
		StaffsPrescriptionDetailsDTO dto= new StaffsPrescriptionDetailsDTO();
		dto.setStaffs(staff);
		List<PrescriptionDetails> prescriptionDetails= prescriptionDetailsRepository.findByPatientId(id);
		Iterator<PrescriptionDetails> itr=prescriptionDetails.iterator();
		while(itr.hasNext()) {
			dto.addPrescriptionDetail(itr.next());
		}
		return dto;
	}

}
