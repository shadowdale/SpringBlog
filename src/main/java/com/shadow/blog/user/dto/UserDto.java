package com.shadow.blog.user.dto;

// 회원정보를 저장할 Dto 객체
public class UserDto {
	private String user_id; 	// 아이디
	private String user_pwd;	// 패스워드
	private String user_email;	// 이메일
	private String regdate;		// 가입일
	
	public UserDto() {}

	public UserDto(String user_id, String user_pwd, String user_email, String regdate) {
		super();
		this.user_id = user_id;
		this.user_pwd = user_pwd;
		this.user_email = user_email;
		this.regdate = regdate;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pwd() {
		return user_pwd;
	}

	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	
}
