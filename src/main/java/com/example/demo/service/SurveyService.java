package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dto.AttendedDTO;
import com.example.demo.dto.NotAttendedDTO;
import com.example.demo.entities.Employee;
import com.example.demo.entities.EmployeeSurvey;
import com.example.demo.entities.EmployeeSurveyKey;
import com.example.demo.entities.Survey;
import com.example.demo.repositories.EmployeeRepository;
import com.example.demo.repositories.EmployeeSurveyRepository;
import com.example.demo.repositories.SurveyRepository;


@Service
public class SurveyService {

	@Autowired
	private final EmployeeSurveyRepository employeeSurveyRepository;

	@Autowired
	private final SurveyRepository surveyRepository;
	@Autowired
	private final EmployeeRepository employeeRepository;

	public SurveyService(EmployeeSurveyRepository employeeSurveyRepository, SurveyRepository surveyRepository,
			EmployeeRepository employeeRepository) {
		super();
		this.employeeSurveyRepository = employeeSurveyRepository;
		this.surveyRepository = surveyRepository;
		this.employeeRepository = employeeRepository;
	}

	public void saveSurveyData(Integer employeeId, Integer surveyId, AttendedDTO attended, NotAttendedDTO notAttended) {
		
        EmployeeSurvey employeeSurvey = new EmployeeSurvey();
        Employee employee=employeeRepository.findById(employeeId).orElse(new Employee());
        System.out.println(surveyId);
        employee.setId(employeeId);
        employee=employeeRepository.save(employee);
        Survey survey= surveyRepository.findById(surveyId).orElseThrow(()->new RuntimeException("Unable TO fetch Suevey"));
        EmployeeSurveyKey key=new EmployeeSurveyKey(employee, survey);
        employeeSurvey.setEmployeeSurveyKey(key);
        if(attended==null) {
        	employeeSurvey.setReason(notAttended.getReason());
        	employeeSurvey.setOtherReason(notAttended.getOtherReason());
        }
        else {
        	employeeSurvey.setContinueParticipate(attended.getContinueParticipate());
        	employeeSurvey.setEngaging(attended.getEngaging());
        	employeeSurvey.setParticipated(attended.getParticipated());
        	employeeSurvey.setRating(attended.getRating());
        }
        
        employeeSurvey= employeeSurveyRepository.save(employeeSurvey);
        System.out.println(employeeSurvey);
    }
	
}
