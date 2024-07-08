package com.example.demo.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.bao.StoreData;
import com.example.demo.dto.AttendedDTO;
import com.example.demo.dto.NotAttendedDTO;
import com.example.demo.service.SurveyService;

import jakarta.servlet.http.HttpServletRequest;

@Controller()
public class SurveyController {

	@Autowired
	StoreData storeData;
	@Autowired
	SurveyService surveyService;
	
	
	@GetMapping(path="/")
	public String index(Model model,HttpServletRequest request) {
		
		model.addAttribute("attended",new AttendedDTO());
		model.addAttribute("notAttended",new NotAttendedDTO());
		return "index";
	}
	
	@PostMapping("/submitAttendedForm")
	public String submitFeedbackAttended(@ModelAttribute AttendedDTO attended,@RequestParam("employee_id") String employeeId) {
	        
		storeData.addAttendedData(attended);
		
		surveyService.saveSurveyData(Integer.valueOf(employeeId), 101, attended,null);
		return "thankYou";
	}
	@PostMapping("/submitNotAttendedForm")
	public String submitFeedbackNotAttended(@ModelAttribute NotAttendedDTO notAttended,@RequestParam("employee_id") String employeeId) {
	      
		storeData.addNotAttendedData(notAttended);
		
		surveyService.saveSurveyData(Integer.valueOf(employeeId), 101, null, notAttended);
		
		return "thankYou";
	}
	@GetMapping(path="/already")
	public String already() {

		return "Already";
	}

}
