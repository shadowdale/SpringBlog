package com.shadow.blog.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import com.shadow.blog.user.dao.UserDao;
import com.shadow.blog.user.dto.UserDto;

@Component
public class UserServiceImpl implements UserService {
	
	// 비밀번호 인코더 객체
	private PasswordEncoder pEncoder = new BCryptPasswordEncoder();

	@Autowired
	private UserDao userDao;
	
	
	@Override
	public void insert(UserDto dto) {
		// 비밀번호를 암호화 한다
		String encodedPwd = pEncoder.encode(dto.getUser_pwd());
		dto.setUser_pwd(encodedPwd);
		
		userDao.insert(dto);
		
	}

	@Override
	public boolean checkId(String inputId) {
		return userDao.checkId(inputId);
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

	@Override
	public boolean isValid(UserDto dto) {

		boolean isValid = false;
		String password = userDao.getPassword(dto.getUser_id());
		
		if(password != null) {
			isValid = pEncoder.matches(dto.getUser_pwd(), password);
		}
		
		return isValid;
	}
	
	

}
