package com.comtrade.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UBoatController {
	@GetMapping("/uboat")
	public String uboat() {
		return "uboat";
	}
}
