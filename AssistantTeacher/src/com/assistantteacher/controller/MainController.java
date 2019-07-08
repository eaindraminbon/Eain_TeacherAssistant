package com.assistantteacher.controller;

import java.io.IOException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.util.Base64;
import java.util.Locale;
import java.util.UUID;

import javax.crypto.Cipher;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.core.env.Environment;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;


import org.springframework.web.bind.annotation.RequestMapping;

import com.assistantteacher.service.UserServices;




@Controller
public class MainController {
	@Autowired
	UserServices userService;
	@RequestMapping(value = "/welcome.htm")
	public String loginWelcome(Model model) {
		return "adminLogin";
	}
	@RequestMapping(value = "/home.htm")
	public String homeWelcome(Model model) {
		return "home";
	}
	
}

