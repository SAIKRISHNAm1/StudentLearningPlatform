package com.vcube.model;

public class RegisterModel {
	private String fullname;
	private String username;
	private String email;
	private String password;
	private String gender;
	
	public RegisterModel(){}
	public RegisterModel(String fn,String un,String pwd,String em,String ge)
	{
		this.fullname=fn;
		this.username=un;
		this.email=em;
		this.password=pwd;
		this.gender=ge;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	@Override
	public String toString() {
		return "RegisterModel [fullname=" + fullname + ", username=" + username + ", password=" + password + ", email="
				+ email + ", gender=" + gender + "]";
	}
	
	
	
	

}
