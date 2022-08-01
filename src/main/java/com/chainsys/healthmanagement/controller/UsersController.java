package com.chainsys.healthmanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.healthmanagement.pojo.Users;
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
	public String addNewUsers(@ModelAttribute("addusers") Users theuser) {
		userservice.save(theuser);
		return "redirect:/users/userlist";
	}

}
