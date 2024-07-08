package com.example.demo.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.entities.EmployeeSurvey;

public interface EmployeeSurveyRepository extends JpaRepository<EmployeeSurvey, Long>{

}
