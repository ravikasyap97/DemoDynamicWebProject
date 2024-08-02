package com.DemoDynamicWebProject.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DAOServiceImpl implements DAOService {
	private Connection con;
	private Statement stmnt;

	public void connectdb() {

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/julydemo", "root", "ravi");
			stmnt = con.createStatement();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void addRegistration(String name, String email, String phone, String country) {
		try {
			stmnt.executeUpdate("Insert into registration values('" + name + "','" + email + "','" + phone + "', '"+country+"')");
		} catch (Exception e) {

			e.printStackTrace();
		}

	}

	public void deleteRegistration(String email) {
		try {
			stmnt.executeUpdate("Delete from  registration where email='" + email + "'");
		} catch (Exception e) {

			e.printStackTrace();
		}

	}

	public void updateRegistration(String email, String phone, String country) {
		try {
			stmnt.executeUpdate("Update registration set phone = '" + phone + "', country = '" + country + "' where email = '" + email + "'");

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public ResultSet getAllRegistration() {

		try {
			ResultSet result = stmnt.executeQuery("Select * from registration");
			return result;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public boolean verifyLogin(String email, String password) {
		try {
			ResultSet result = stmnt
					.executeQuery("Select * from login where email='" + email + "' and password='" + password + "'");
			return result.next();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

}
