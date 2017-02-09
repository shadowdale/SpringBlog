package com.shadow.blog.users.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import com.shadow.blog.users.dao.UsersDao;

@Component
public class UsersServiceImpl implements UsersService {

	@Autowired
	private UsersDao usersDao;
	
	@Override
	public void insert() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean checkId() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void update() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ModelAndView getData() {
		// TODO Auto-generated method stub
		return null;
	}

}
