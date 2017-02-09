package com.shadow.blog.users.dto;

// 회원정보를 저장할 Dto 객체
public class UsersDto {
	private String users_id; 	// 아이디
	private String users_pwd;	// 패스워드
	private String users_eamil;	// 이메일
	private String regdate;		// 가입일
	
	public UsersDto() {}

	public UsersDto(String users_id, String users_pwd, String users_eamil, String regdate) {
		super();
		this.users_id = users_id;
		this.users_pwd = users_pwd;
		this.users_eamil = users_eamil;
		this.regdate = regdate;
	}

	public String getUsers_id() {
		return users_id;
	}

	public void setUsers_id(String users_id) {
		this.users_id = users_id;
	}

	public String getUsers_pwd() {
		return users_pwd;
	}

	public void setUsers_pwd(String users_pwd) {
		this.users_pwd = users_pwd;
	}

	public String getUsers_eamil() {
		return users_eamil;
	}

	public void setUsers_eamil(String users_eamil) {
		this.users_eamil = users_eamil;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
}
