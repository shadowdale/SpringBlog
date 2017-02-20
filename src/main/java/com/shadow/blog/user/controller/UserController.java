package com.shadow.blog.user.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.shadow.blog.user.dto.UserDto;
import com.shadow.blog.user.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	// 회원가입폼 요청 처리
	@RequestMapping("/user/signup-form")
	public String signupForm() {
		
		return "/user/signup-form";
	}
	
	// 회원가입 요청 처리
	@RequestMapping("/user/signup")
	public String signup(@ModelAttribute UserDto dto){
		userService.insert(dto);
		
		return "redirect:/home.do";
	}
	
	// 중복 아이디 체크 요청처리
	@RequestMapping("/user/checkid")
	@ResponseBody
	public Map<String, Object> checkId(@RequestParam String inputId) {
		// 입력받은 문자열을 전달하고 boolean 값을 리턴 받는다.
		boolean canUse = userService.checkId(inputId);
		// Map 객체를 생성하고 서비스에서 리턴받은 값을 담는다.
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("canUse", canUse);
		// Map을 리턴한다.
		return map;
	}
	
	// 로그인폼 요청처리
	@RequestMapping("/user/signin-form")
	public String signinForm() {
		
		return "user/signin-form";
	}
	
	// 로그인 요청처리
	@RequestMapping("/user/signin")
	public String signin(HttpSession session, @ModelAttribute UserDto dto) {
		// 회원정보를 초기화 한다.
		session.removeAttribute("id");
		
		boolean isValid= userService.isValid(dto);
		if(isValid) {
			session.setAttribute("id", dto.getUser_id());
		}
		
		return "redirect:/home.do";
	}
}
