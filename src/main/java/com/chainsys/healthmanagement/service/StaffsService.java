package com.chainsys.healthmanagement.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.healthmanagement.dao.FeedBackRepository;
import com.chainsys.healthmanagement.dao.StaffsRepository;
import com.chainsys.healthmanagement.dto.FeedBackAndStaffsDTO;
import com.chainsys.healthmanagement.model.FeedBack;
import com.chainsys.healthmanagement.model.Staffs;

@Service
public class StaffsService {
	@Autowired
	private StaffsRepository staffsrepo;
	@Autowired
	private FeedBackRepository feedBackRepository;

	public List<Staffs> getAllStaffs() {
		List<Staffs> staffslist = staffsrepo.findAll();
		return staffslist;
	}

	public Staffs save(Staffs staffs) {
		long contactNo = staffs.getCountryCode() * 10000000000L + staffs.getContactNo();
		staffs.setContactNo(contactNo);
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
			dto.addFeedBack((FeedBack) itr.next());
		}
		return dto;
	}

}
