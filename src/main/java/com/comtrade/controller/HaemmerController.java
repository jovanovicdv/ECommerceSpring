package com.comtrade.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HaemmerController {
	@GetMapping("/haemmer")
	public String haemmer(Model model) {
		return "haemmer";
	}
}
