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

import com.chainsys.healthmanagement.model.PrescriptionDetails;
import com.chainsys.healthmanagement.service.PrescriptionDetailsService;

@Controller
@RequestMapping("/prescriptiondetails")
public class PrescriptionDetailsController {
	 @Autowired
	 PrescriptionDetailsService prescriptiondetailsservice;
	 
	 private static final String LIST = "redirect:/prescriptiondetails/prescriptiondetailslist";
	 
	 @GetMapping("/prescriptiondetailslist")
	 public String getAllPrescriptionDetails(Model model) {
		 List<PrescriptionDetails> prescriptiondetailslist = prescriptiondetailsservice.getAllPrescriptionDetails();
			model.addAttribute("allprescription", prescriptiondetailslist);
			return "list-prescriptiondetails";
	 }

		@GetMapping("/addprescriptiondetailsform")
		public String showAddForm(Model model) {
			PrescriptionDetails theprescriptiondetails = new PrescriptionDetails();
			model.addAttribute("addprescriptiondetails", theprescriptiondetails);
			return "add-prescriptiondetails-form";
		}
		@PostMapping("/addprescriptiondetails")
		public String addNewPrescriptionDetails(@Valid @ModelAttribute("addprescriptiondetails") PrescriptionDetails theprescriptiondetails, Errors error) {
			if (error.hasErrors()) {
				return "add-prescriptiondetails-form";
			} else {
				prescriptiondetailsservice.save(theprescriptiondetails);
				return LIST;
			}
		}

		@GetMapping("/updateprescriptiondetailsid")
		public String updatepatientid() {
			return "updateprescriptiondetailsid";
		}
		
		@GetMapping("/updateprescriptiondetailsform")
		public String showUpdateForm(@RequestParam("prescriptionId") int id, Model model) {
			PrescriptionDetails theprescriptiondetails = prescriptiondetailsservice.findPrescriptionDetailsById(id);
			model.addAttribute("updateprescriptiondetails", theprescriptiondetails);
			if(theprescriptiondetails!=null) {
			return "update-prescriptiondetails-form";
		}
			else {
				model.addAttribute("result" , "Id not found");
				return "getprescriptiondetailsid";
			}
		}
		@GetMapping("/getprescriptiondetails")
		public String getprescriptiondetails() {
			return "getprescriptiondetailsid";
		}
		
		@PostMapping("/updateprescriptiondetails")
		public String updatePrescriptionDetail(@Valid @ModelAttribute("updateprescriptiondetails") PrescriptionDetails theprescriptiondetails, Errors error) {
			if (error.hasErrors()) {
				return "update-prescriptiondetails-form";
			} else {
				prescriptiondetailsservice.save(theprescriptiondetails);
				return LIST;
			}
		}
		
		
		@GetMapping("/findprescriptiondetailsid")
		public String findPrescriptiondetailsById(@RequestParam("prescriptionId") int id, Model model) {
			PrescriptionDetails theprescriptiondetails = prescriptiondetailsservice.findPrescriptionDetailsById(id);
			model.addAttribute("findprescriptiondetailsbyid", theprescriptiondetails);
			if(theprescriptiondetails!=null) {
			return "find-prescriptiondetails-id-form";
			}
			else {
				model.addAttribute("result", "Id not found ");
				return "getprescriptiondetailsid";
			}
		}
		
		
		@GetMapping("/getpatientprescription")
        public String getPatientprescription() {
            return "list-patient-prescription";
        }
     @GetMapping("/patientId")
        public String getAllStatus(@RequestParam("patientId") int patientId, Model model) {
            List<PrescriptionDetails> patientpres = prescriptiondetailsservice.getPatientId(patientId);
            model.addAttribute("allprescription", patientpres);
            return "list-prescriptiondetails";
        }
     @GetMapping("/staffId")
     public String getAllprescription(@RequestParam("staffId") int staffId, Model model) {
         List<PrescriptionDetails> patientpres = prescriptiondetailsservice.getStaffId(staffId);
         model.addAttribute("allprescription", patientpres);
         return "list-prescriptiondetails";
     }
}
