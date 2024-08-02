package com.DemoDynamicWebProject.controller;

import java.io.IOException;
import java.sql.ResultSet;
import com.DemoDynamicWebProject.model.DAOServiceImpl;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/updateReg")

public class UpdateRegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateRegistrationController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String country = request.getParameter("country");

		request.setAttribute("email", email);
		request.setAttribute("mobile", mobile);
		request.setAttribute("country", country);

		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/update_registration.jsp");
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String country = request.getParameter("country");

		DAOServiceImpl service = new DAOServiceImpl();
		service.connectdb();
		service.updateRegistration(email, mobile, country);

		ResultSet result = service.getAllRegistration();
		request.setAttribute("res", result);

		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/read_registration.jsp");
		rd.forward(request, response);

	}

}
