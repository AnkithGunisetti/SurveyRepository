package com.example.demo.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.entities.Survey;

public interface SurveyRepository extends JpaRepository<Survey, Integer> {

}
