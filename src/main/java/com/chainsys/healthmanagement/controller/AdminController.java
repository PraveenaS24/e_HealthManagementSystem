package com.chainsys.healthmanagement.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.healthmanagement.model.Admin;
import com.chainsys.healthmanagement.model.Users;
import com.chainsys.healthmanagement.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	AdminService adminservice;

	@GetMapping("/adminlist")
	public String getAllAdmin(Model model) {
		List<Admin> adminlist = adminservice.getAllAdmin();
		model.addAttribute("alladmin", adminlist);
		return "list-admin";
	}

	@GetMapping("/addadminform")
	public String showAddForm(Model model) {
		Admin theadmin = new Admin();
		model.addAttribute("addadmin", theadmin);
		return "add-admin-form";
	}

	@PostMapping("/addadmin")
	public String addNewAdmin(@Valid @ModelAttribute("addadmin") Admin theadmin, Errors error) {
		if (error.hasErrors()) {
			return "add-admin-form";
		} else {
			adminservice.save(theadmin);
			return "redirect:/admin/adminlist";
		}
	}

	@GetMapping("/adminlogin")
	public String adminaccessform(Model model) {
		Admin theadmin = new Admin();
		model.addAttribute("admin", theadmin);
//        return "user-login-form";
		return "login3";
	}

	@PostMapping("/checkadminlogin")
	public String checkingAccess(@ModelAttribute("admin") Admin admins) {
		Admin admin = adminservice.getAdminByIdAndPassword(admins.getAdminId(), admins.getPassword());
		if (admin != null) {
			return "redirect:/patient/patientlist";
		} else
			return "invalid-admin-error";
	}
}
