package com.chainsys.healthmanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.healthmanagement.dto.FeedBackAndStaffsDTO;
import com.chainsys.healthmanagement.dto.StaffsPrescriptionDetailsDTO;
import com.chainsys.healthmanagement.model.Staffs;
import com.chainsys.healthmanagement.service.StaffsService;

@Controller
@RequestMapping("/staffs")
public class StaffsController {
	@Autowired
	StaffsService staffservice;
	
	private static final String LIST = "redirect:/staffs/staffslist";

	@GetMapping("/staffslist")
	public String getAllStaffs(Model model) {
		List<Staffs> staffslist = staffservice.getAllStaffs();
		model.addAttribute("allstaffs", staffslist);
		return "list-staffs";
	}
	
	@GetMapping("/getstaff")
	public String getstaff() {
		return "getstaffid";
	}

	@GetMapping("/findstaffsid")
	public String findStaffsById(@RequestParam("staffId") int id, Model model) {
		Staffs thestaff = staffservice.findStaffsById(id);
		model.addAttribute("findstaffsbyid", thestaff);
		if(thestaff!=null) {
			return "find-staffs-id-form";
		}
		else {
			model.addAttribute("result", "Id not found");
			return "getstaffid";		
			}
	}

	@GetMapping("/addstaffsform")
	public String showAddForm(Model model) {
		Staffs thestaff = new Staffs();
		model.addAttribute("addstaffs", thestaff);
		return "add-staffs-form";
	}

	@PostMapping("/addstaff")
	public String addNewStaff(@ModelAttribute("addstaffs") Staffs thestaff, Errors error) {
		if (error.hasErrors()) {
			return "add-staffs-form";
		} else {
			staffservice.save(thestaff);
			return LIST;
		}
	}
	
	@GetMapping("/updatestaffid")
	public String updatestaffid() {
		return "updatestaffid";
	}


	@GetMapping("/updatestaffsform")
	public String showUpdateForm(@RequestParam("staffId") int id, Model model) {
		Staffs thestaff = staffservice.findStaffsById(id);
		model.addAttribute("updatestaffs", thestaff);
		if(thestaff!=null) {
		return "update-staffs-form";
	}
		else {
			model.addAttribute("result", "Id not found");
			return("getstaffid");
		}
	}

	@PostMapping("/updatestaff")
	public String updateStaffs(@ModelAttribute("updatestaffs") Staffs thestaff, Errors error) {
		if (error.hasErrors()) {
			return "update-staffs-form";
		} else {
			staffservice.save(thestaff);
			return LIST;
		}
	}

	@GetMapping("/deletestaff")
	public String deleteStaffs(@RequestParam("staffId") int id) {
		staffservice.deleteStaffs(id);
		return LIST;
	}
	
    @GetMapping("/getstafffeedbackform")
    public String getStaffFeedbackForm()  {
    	return "getstaffidfeedback";
    }
	
	@GetMapping("/getstaffsfeedback")
	public String getStaffsAndFeedback(@RequestParam("staffId") int id, Model model) {
		FeedBackAndStaffsDTO dto = staffservice.getFeedBackAndStaffsDTO(id);
			model.addAttribute("getstaffs", dto.getStaffs());
			model.addAttribute("getfeedback", dto.getFeedbacklist());
			return "list-staffs-feedback";
		
	}
	
	@GetMapping("/staffpres")
	public String getStaffPrescription(@RequestParam("patientId") int id, Model model) {
		StaffsPrescriptionDetailsDTO dto=staffservice.getStaffPrescriptionDetailsDTO(id);
		model.addAttribute("staffs", dto.getStaffs());
		model.addAttribute("staffspres", dto.getStaffspreslist());
		return "list-staffs-prescription";
	}
	
	
}
