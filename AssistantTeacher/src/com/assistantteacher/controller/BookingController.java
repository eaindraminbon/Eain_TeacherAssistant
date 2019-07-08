package com.assistantteacher.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookingController {
	@RequestMapping(value = "/booking.htm")
	public String loginWelcome(Model model) {
		return "booking";
	}
}
