package com.shadow.blog.user.service;

import org.springframework.web.servlet.ModelAndView;

import com.shadow.blog.user.dto.UserDto;

public interface UserService {
	public void insert(UserDto Dto);	
	public boolean checkId(String inputId);
	public void update();
	public ModelAndView getData();
}
