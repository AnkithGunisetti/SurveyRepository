package com.example.demo.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Employee {

	@Id
	private Integer id;
	@Column(nullable = true)
	private String name;
	
	public Employee() {
		// TODO Auto-generated constructor stub
	}

	
	public Employee(Integer id, String name) {
		super();
		this.id = id;
		this.name = name;
	}

	

	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	@Override
	public String toString() {
		return "Employee [id=" + id + ", name=" + name + "]";
	}

	
}
