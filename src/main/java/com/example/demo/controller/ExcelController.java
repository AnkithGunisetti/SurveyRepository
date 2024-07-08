package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.bao.StoreData;

@Controller
@RequestMapping("/admin")
public class ExcelController {

	@Autowired
	StoreData storeData;
	
	@GetMapping("/showdata")
	public String showData(Model model) {
		model.addAttribute("attendedData",storeData.getAttendedMap());
		model.addAttribute("notAttendedData",storeData.getNotAttendedMap());
		return "showdatapage";
	}
}
