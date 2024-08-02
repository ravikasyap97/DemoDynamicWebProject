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

@WebServlet("/deleteReg")

public class DeleteRegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DeleteRegistrationController() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		DAOServiceImpl service = new DAOServiceImpl();
		service.connectdb();
		service.deleteRegistration(email);

		ResultSet result = service.getAllRegistration();
		request.setAttribute("res", result);

		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/read_registration.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
