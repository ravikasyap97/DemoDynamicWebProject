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
import jakarta.servlet.http.HttpSession;

@WebServlet("/readReg")

public class ReadRegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ReadRegistrationController() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if (session.getAttribute("email") != null) {

			DAOServiceImpl service = new DAOServiceImpl();
			service.connectdb();
			ResultSet result = service.getAllRegistration();
			request.setAttribute("res", result);

			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/read_registration.jsp");
			rd.forward(request, response);

		} else {

			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/login.jsp");
			rd.forward(request, response);

		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
