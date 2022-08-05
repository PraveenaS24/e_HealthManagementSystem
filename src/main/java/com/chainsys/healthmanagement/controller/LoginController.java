package com.chainsys.healthmanagement.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("/home")
public class LoginController {
	@GetMapping("/logins")
	public String getLogin(Model model) {
		model.addAttribute("loginslist");
		return "login";
	}

}