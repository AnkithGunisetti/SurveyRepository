package com.example.demo.entities;

import jakarta.persistence.Embeddable;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Embeddable
public class EmployeeSurveyKey {

	@ManyToOne
	@JoinColumn(name="EMPLOYEE_ID")
	private Employee employee;
	
	@ManyToOne
	@JoinColumn(name="SURVEY_ID")
	private Survey survey;
	
	
	public EmployeeSurveyKey() {
		// TODO Auto-generated constructor stub
	}


	public EmployeeSurveyKey(Employee employee, Survey survey) {
		super();
		this.employee = employee;
		this.survey = survey;
	}


	public Employee getEmployee() {
		return employee;
	}


	public void setEmployee(Employee employee) {
		this.employee = employee;
	}


	public Survey getSurvey() {
		return survey;
	}


	public void setSurvey(Survey survey) {
		this.survey = survey;
	}


	@Override
	public String toString() {
		return "EmployeeSurveyKey [employee=" + employee + ", survey=" + survey + "]";
	}

	
}
