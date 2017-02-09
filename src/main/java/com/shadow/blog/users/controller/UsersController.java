package com.shadow.blog.users.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shadow.blog.users.service.UsersService;

@Controller
public class UsersController {
	
	@Autowired
	private UsersService usersService;
	
	// 회원가입폼 요청 처리
	@RequestMapping("/users/signup-form")
	public String signupForm() {
		
		return "/users/signup-form";
	}
	
}
