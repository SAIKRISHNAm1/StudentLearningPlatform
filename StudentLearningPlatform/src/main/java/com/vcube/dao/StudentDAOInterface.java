package com.vcube.dao;

import com.vcube.model.LoginModel;
import com.vcube.model.RegisterModel;
import com.vcube.model.UpdateModel;

public interface StudentDAOInterface {
	public String insertStudent(RegisterModel rm);
	public String loginStudent(LoginModel rm);
	public String updateStudent(UpdateModel um);
}
