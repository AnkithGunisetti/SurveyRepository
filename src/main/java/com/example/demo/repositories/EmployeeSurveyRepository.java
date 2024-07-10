package com.example.demo.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.entities.EmployeeSurvey;
import com.example.demo.entities.EmployeeSurveyKey;

public interface EmployeeSurveyRepository extends JpaRepository<EmployeeSurvey, EmployeeSurveyKey>{

	 List<EmployeeSurvey> findAllByEmployeeSurveyKeySurveyId(Integer surveyId);
}
