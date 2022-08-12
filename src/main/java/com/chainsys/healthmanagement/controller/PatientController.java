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
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.healthmanagement.dto.FeedBackAndPatientDTO;
import com.chainsys.healthmanagement.model.Patient;
import com.chainsys.healthmanagement.service.PatientService;

@Controller
@RequestMapping("/patient")
public class PatientController 
{
	@Autowired
	PatientService patientservice;

	@GetMapping("/patientlist")
	public String getAllPatient(Model model) {
		List<Patient> patientlist = patientservice.getAllPatient();
		model.addAttribute("allpatient", patientlist);
		return "list-patient";
	}

	@GetMapping("/addpatientform")
	public String showAddForm(Model model) {
		Patient thepatient = new Patient();
		model.addAttribute("addpatient", thepatient);
		return "add-patient-form";
	}

	@PostMapping("/addpatient")
	public String addNewPatient(@Valid @ModelAttribute("addpatient") Patient thepatient, Errors error) {
		if (error.hasErrors()) 
		{
			return "add-patient-form";
		} else {
			patientservice.save(thepatient);
			return "redirect:/patient/patientlist";
		}
	}

	@GetMapping("/updatepatientform")
	public String showUpdateForm(@RequestParam("patientId") int id, Model model) {
		Patient thepatient = patientservice.findPatientById(id);
		model.addAttribute("updatepatient", thepatient);
		return "update-patient-form";
	}

	@GetMapping("/findpatientid")
	public String findPatientById(@RequestParam("patientId") int id, Model model) {
		Patient thepatient = patientservice.findPatientById(id);
		model.addAttribute("findpatientbyid", thepatient);
		return "find-patient-id-form";
	}

	@PostMapping("/updatepatient")
	public String updatePatient(@Valid @ModelAttribute("updatepatient") Patient thepatient, Errors error) {
		if (error.hasErrors()) {
			return "update-patient-form";
		} else {
			patientservice.save(thepatient);
			return "redirect:/patient/patientlist";
		}
	}

	@GetMapping("/deletepatient")
	public String deletePatient(@RequestParam("patientId") int id) {
		patientservice.deletePatient(id);
		return "redirect:/patient/patientlist";
	}

	@GetMapping("/getpatientfeedback")
	public String getPatientAndFeedback(@RequestParam("id") int id, Model model) {
		FeedBackAndPatientDTO dto = patientservice.getFeedBackAndPatientDTO(id);
		model.addAttribute("getpatient", dto.getPatient());
		model.addAttribute("getfeedback", dto.getFeedBack());
		return "list-patient-feedback";
	}
}
