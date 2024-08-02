package com.DemoDynamicWebProject.model;

import java.sql.ResultSet;

public interface DAOService {

	public void connectdb();
	
	public boolean verifyLogin(String email,String password);
	
	public void addRegistration(String name, String email, String phone, String country);
	
	public void deleteRegistration(String email);
	
	public void updateRegistration(String email,String phone,String country);
	
	public ResultSet getAllRegistration(); 
	
	
}
