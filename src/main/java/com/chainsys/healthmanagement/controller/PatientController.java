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

import com.chainsys.healthmanagement.dto.PatientPrescriptionDetailsDTO;
import com.chainsys.healthmanagement.model.FeedBack;
import com.chainsys.healthmanagement.model.Patient;
import com.chainsys.healthmanagement.service.FeedBackService;
import com.chainsys.healthmanagement.service.PatientService;

@Controller
@RequestMapping("/patient")
public class PatientController {
	
	@Autowired
	PatientService patientservice;
	@Autowired
	FeedBackService FeedbackService;
	
	private static final String LIST = "redirect:/patient/patientlist";

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
		if (error.hasErrors()) {
			return "add-patient-form";
		} else {
			patientservice.save(thepatient);
			return LIST;
		}
	}

	@GetMapping("/updatepatientid")
	public String updatepatientid() {
		return "updatepatientid";
	}

	@GetMapping("/updatepatientform")
	public String showUpdateForm(@RequestParam("patientId") int id, Model model) {
		Patient thepatient = patientservice.findPatientById(id);
		model.addAttribute("updatepatient", thepatient);
		if(thepatient!=null) {
		return "update-patient-form";
	}
		else {
			model.addAttribute("result" , "Id not found");
			return "getpatientid";
		}
	}

	@GetMapping("/getpatient")
	public String getpatient() {
		return "getpatientid";
	}

	@GetMapping("/findpatientid")
	public String findPatientById(@RequestParam("patientId") int id, Model model) {
		Patient thepatient = patientservice.findPatientById(id);
		model.addAttribute("findpatientbyid", thepatient);
		if(thepatient!=null) {
		return "find-patient-id-form";
		}
		else {
			model.addAttribute("result", "Id not found ");
			return "getpatientid";
		}
	}

	@PostMapping("/updatepatient")
	public String updatePatient(@Valid @ModelAttribute("updatepatient") Patient thepatient, Errors error) {
		if (error.hasErrors()) {
			return "update-patient-form";
		} else {
			patientservice.save(thepatient);
			return LIST;
		}
	}

	@GetMapping("/deletepatient")
	public String deletePatient(@RequestParam("patientId") int id) {
		patientservice.deletePatient(id);
		return LIST;
	}

	@GetMapping("/getpatientfeedbackform")
	public String getPatientFeedbackForm() {
		return "getpatientidfeedback";
	}

	@GetMapping("/getpatientfeedback")
	public String getPatientAndFeedback(@RequestParam("patientId") int id, Model model) {
		Patient thepatient = patientservice.findPatientById(id);
		model.addAttribute("getpatient", thepatient);
		if(thepatient!=null) {
		return "list-patient-feedback";
	}
		else {
			model.addAttribute("result", "Id not found ");
			return "getpatientidfeedback";
		}
	}

	@GetMapping("/feedback")
	public String getFeedBackByPatientId(@RequestParam("patientId") int id, Model model) {
		List<FeedBack> feedbackList = FeedbackService.getFeedBackByPatient(id);
		model.addAttribute("allfeedback", feedbackList);
		if(feedbackList!=null) {
		return "list-feedback";
	}
		else {
			model.addAttribute("result", "Id not found");
			return "getpatientidfeedback";
		}
	}
	@GetMapping("/patientpres")
	public String getPatientPrescription(@RequestParam("patientId") int id, Model model) {
		PatientPrescriptionDetailsDTO dto=patientservice.getPatientPrescriptionDetailsDTO(id);
		model.addAttribute("patient", dto.getPatient());
		model.addAttribute("patientpres", dto.getPatientpreslist());
		return "list-patient-prescription";
	}
	
	@GetMapping("/patientlogin")
	public String patientaccessform(Model model) {
		Patient thepatient = new Patient();
		model.addAttribute("patient",thepatient);
		return "login4";
	}
	
	@GetMapping("/patli")
	public String check(Model model) {
		return "listpat";
	}

	@PostMapping("/checkpatientlogin")
	public String checkingAccess(@ModelAttribute("patient") Patient patients,Model model) {
		Patient patient = patientservice.getPatientByNameAndPassword(patients.getPatientName(), patients.getPassword());
		if (patient != null) {

			return "listpat";
		} else {
			model.addAttribute("result", "Warning !: Patientname or Password Mismatch");
			return "login4";

	   }
	}
	@GetMapping("/getpatientcontactno")
    public String getPatientContactNo() {
        return "list-patient-contactno";
    }
	
	 @GetMapping("/contactNo")
     public String getAllPatient(@RequestParam("contactNo") long contactNo, Model model) {
         List<Patient> patientcontact = patientservice.getContactNo(contactNo);
         model.addAttribute("allpatient", patientcontact);
         return "list-patient";
     }
}
