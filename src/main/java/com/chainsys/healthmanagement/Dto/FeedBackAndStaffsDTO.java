package com.chainsys.healthmanagement.dto;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.healthmanagement.model.FeedBack;
import com.chainsys.healthmanagement.model.Staffs;

public class FeedBackAndStaffsDTO {
	@Autowired
	private Staffs staffs;
	private List<FeedBack> fdbacklist = new ArrayList<FeedBack>();

	public Staffs getStaffs() {
		return staffs;
	}

	public void setStaffs(Staffs staffs) {
		this.staffs = staffs;
	}

	public List<FeedBack> getFeedbacklist() {
		return fdbacklist;
	}

	public void addFeedBack(FeedBack feedbacklist) {
		fdbacklist.add(feedbacklist);
	}

}
