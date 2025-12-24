package com.ips.controller;

import org.springframework.web.bind.annotation.RequestMapping;

public class HomeController {
	@RequestMapping("/")
	public String ingdexPage() {
		return "index";
	}

}
