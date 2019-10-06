package com.comtrade.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WelderController {
	@GetMapping("/welder")
	public String welder() {
		return "welder";
	}
}
