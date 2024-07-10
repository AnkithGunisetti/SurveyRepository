package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entities.EmployeeSurvey;
import com.example.demo.repositories.EmployeeSurveyRepository;

@Service
public class EmployeeSurveyService {

	@Autowired
	EmployeeSurveyRepository employeeSurveyRepository;
	
	public List<EmployeeSurvey> getAllBySurveyId(Integer surveyId){
		return employeeSurveyRepository.findAllByEmployeeSurveyKeySurveyId(surveyId);
	}
}
