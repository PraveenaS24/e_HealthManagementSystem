package com.chainsys.healthmanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.healthmanagement.pojo.FeedBack;
import com.chainsys.healthmanagement.pojo.Patient;
import com.chainsys.healthmanagement.service.FeedBackService;

@Controller
@RequestMapping("/feedback")
public class FeedBackController {
	@Autowired
	FeedBackService feedbackservice;

	@GetMapping("/feedbacklist")
	public String getAllFeedBack(Model model) {
		List<FeedBack> feedbacklist = feedbackservice.getAllFeedBack();
		model.addAttribute("allfeedback", feedbacklist);
		return "list-feedback";
	}

	@GetMapping("/findfeedbackid")
	public String findFeedBackById(@RequestParam("feedbackId") int id, Model model) {
		FeedBack thefeedback = feedbackservice.findFeedBackById(id);
		model.addAttribute("findfeedbackbyid", thefeedback);
		return "find-feedback-id-form";
	}

	@GetMapping("/addfeedbackform")
	public String showAddForm(Model model) {
		FeedBack thefeedback = new FeedBack();
		model.addAttribute("addfeedback", thefeedback);
		return "add-feedback-form";
	}

	@PostMapping("/addfeedback")
	public String addNewFeedBack(@ModelAttribute("addfeedback") FeedBack thefeedback) {
		feedbackservice.save(thefeedback);
		return "redirect:/feedback/feedbacklist";
	}

	@GetMapping("/updatefeedbackform")
	public String showUpdateForm(@RequestParam("fbId") int id, Model model) {
		FeedBack thefb = feedbackservice.findFeedBackById(id);
		model.addAttribute("updatefeedback", thefb);
		return "update-feedback-form";
	}
	@PostMapping("/updatefeedback")
	public String updateFeedBack(@ModelAttribute("updatefeedback") FeedBack thefeedback) {
		feedbackservice.save(thefeedback);
		return "redirect:/feedback/feedbacklist";
	}

}
