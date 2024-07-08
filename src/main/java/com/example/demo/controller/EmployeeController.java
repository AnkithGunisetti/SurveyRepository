package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.entities.Employee;
import com.example.demo.repositories.EmployeeRepository;

@CrossOrigin
@RestController
public class EmployeeController {

	@Autowired
	EmployeeRepository employeeRepository;
	@GetMapping("/checkEmployee/{employeeId}")
	public ResponseEntity<Boolean> checkEmployee(@PathVariable Integer employeeId){
		Employee employee= employeeRepository.findById(employeeId).orElse(null);
		if(employee==null) {
			return ResponseEntity.ok(true);
		}
		return ResponseEntity.ok(false);
	}
}
