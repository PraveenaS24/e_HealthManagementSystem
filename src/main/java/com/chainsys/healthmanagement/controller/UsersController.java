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

import com.chainsys.healthmanagement.model.Users;
import com.chainsys.healthmanagement.service.UsersService;

@Controller
@RequestMapping("/users")
public class UsersController {
	@Autowired
	UsersService userservice;

	@GetMapping("/userlist")
	public String getAllUsers(Model model) {
		List<Users> userlist = userservice.getAllUsers();
		model.addAttribute("allusers", userlist);
		return "list-users";
	}

	@GetMapping("/adduserform")
	public String showAddForm(Model model) {
		Users theuser = new Users();
		model.addAttribute("addusers", theuser);
		return "add-users-form";
	}

	@PostMapping("/adduser")
	public String addNewUsers(@Valid @ModelAttribute("addusers") Users theuser, Errors error) {
		if (error.hasErrors()) {
			return "add-users-form";
		} else {
			userservice.save(theuser);
			return "redirect:/users/userlist";
		}
	}

	@GetMapping("/userlogin")
	public String useraccessform(Model model) {
		Users theuser = new Users();
		model.addAttribute("users", theuser);
		return "login2";
	}
	
	@GetMapping("/userli")
	public String check(Model model) {
		return "listus";
	}

	@PostMapping("/checkuserlogin")
	public String checkingAccess(@ModelAttribute("users") Users users,Model model) {
		Users user = userservice.getUserByIdAndSecretword(users.getUserId(), users.getSecretword());
		if (user != null) {

			return "listus";
		} else
			model.addAttribute("result", "Warning !: Username or Password Mismatch");
			return "login2";

	}
}
