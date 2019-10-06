package com.comtrade.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class OdgovorController {
	@GetMapping("/odgovor")
	public String odgovor() {
		return "odgovor";
	}
}
