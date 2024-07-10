package com.example.demo.restcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.entities.EmployeeSurvey;
import com.example.demo.service.EmployeeSurveyService;

@RestController
public class DataRestController {

	@Autowired
	EmployeeSurveyService employeeSurveyService;
	@GetMapping("/admin/rest/getAll")
	public ResponseEntity<List<EmployeeSurvey>> getAllBySurveyId(Integer surveyId){
		return ResponseEntity.ok(employeeSurveyService.getAllBySurveyId(101));
	}
}
