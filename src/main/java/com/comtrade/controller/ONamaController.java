package com.comtrade.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ONamaController {
	@GetMapping("/onama")
	public String onama(Model model) {
		return "onama";
	}
}
