package com.monpanierbio.servlets;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CreerPanierServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("today", new Date());
		// dispatch vers welcome.jsp
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/jspf/creer-panier.jsp");
		dispatcher.forward(req, resp);
	}
}
