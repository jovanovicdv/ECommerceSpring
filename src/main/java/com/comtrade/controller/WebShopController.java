package com.comtrade.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WebShopController {
	@GetMapping("/webshop")
	public String webshop() {
		return "webshop";
	}
}
