package com.example.demo.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Survey {

	@Id
	private Integer id;
	private String name;

	
	public Survey() {
		// TODO Auto-generated constructor stub
	}
	
	

	public Survey(Integer id, String name) {
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
		return "Survey [id=" + id + ", name=" + name + "]";
	}
	
	
}
