package com.generation.project.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController 
{	
	
	@GetMapping("/")
	@ResponseBody
	public String test()
	{
		return "sto funzionando";
	}
	
}