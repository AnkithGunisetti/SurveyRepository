package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.bao.StoreData;
import com.example.demo.entities.EmployeeSurvey;
import com.example.demo.service.EmployeeSurveyService;

@Controller
@RequestMapping("/admin")
public class ExcelController {

	@Autowired
	StoreData storeData;
	@Autowired
	EmployeeSurveyService employeeSurveyService;
	
	@GetMapping("/showdata")
	public String showData(Model model) {
		model.addAttribute("attendedData",storeData.getAttendedMap());
		model.addAttribute("notAttendedData",storeData.getNotAttendedMap());
		return "showdatapage";
	}
	@GetMapping("/getData")
	public String getData(Model model) {
		List<EmployeeSurvey> employeeSurveyList=employeeSurveyService.getAllBySurveyId(101);
		model.addAttribute("employeeSurveys",employeeSurveyList);
		return "employee-surveys";
	}
}
