package com.shadow.blog.users.service;

import org.springframework.web.servlet.ModelAndView;

public interface UsersService {
	public void insert();	
	public boolean checkId(String inputId);
	public void update();
	public ModelAndView getData();
}
