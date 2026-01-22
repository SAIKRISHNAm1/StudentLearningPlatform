package com.vcube.model;

public class UpdateModel {
	private String new_fullname;
	private String new_username;
	private String new_password;
	private String new_email;
	private String new_gender;
	
	public UpdateModel() {}

	public UpdateModel(String fn, String un,  String pwd,String em,String ge) {
		super();
		this.new_fullname = fn;
		this.new_username = un;
		this.new_password = pwd;
		this.new_email = em;
		this.new_gender = ge;
	}

	public String getNew_fullname() {
		return new_fullname;
	}

	public void setNew_fullname(String new_fullname) {
		this.new_fullname = new_fullname;
	}

	public String getNew_username() {
		return new_username;
	}

	public void setNew_username(String new_username) {
		this.new_username = new_username;
	}

	public String getNew_password() {
		return new_password;
	}

	public void setNew_password(String new_password) {
		this.new_password = new_password;
	}

	public String getNew_email() {
		return new_email;
	}

	public void setNew_email(String new_email) {
		this.new_email = new_email;
	}

	public String getNew_gender() {
		return new_gender;
	}

	public void setNew_gender(String new_gender) {
		this.new_gender = new_gender;
	}

	@Override
	public String toString() {
		return "UpdateModel [new_fullname=" + new_fullname + ", new_username=" + new_username + ", new_password="
				+ new_password + ", new_email=" + new_email + ", new_gender=" + new_gender + "]";
	}

	
}
