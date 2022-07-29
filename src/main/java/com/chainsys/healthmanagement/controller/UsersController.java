package com.chainsys.healthmanagement.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.healthmanagement.pojo.Users;

@Controller
@RequestMapping("/users")
public class UsersController {
	@Autowired
	UsersController usservice;

	@GetMapping("/adddocform")
	public String showAddForm(Model model) {
		Users theus = new Users();
		model.addAttribute("addusers", theus);
		return "add-users-form";
	}

	@PostMapping("/adduser")
	public String addUsers(@ModelAttribute("addusers") Users theus) {
		usservice.addUsers(theus);
		return null;
	}
}
