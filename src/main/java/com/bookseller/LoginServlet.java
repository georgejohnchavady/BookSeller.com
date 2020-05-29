package com.bookseller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns="/login.do")
public class LoginServlet extends HttpServlet{
	private UserValidationService userValidationService = new UserValidationService();
	
	
	protected void doGet(HttpServletRequest req,
            HttpServletResponse resp)
     throws ServletException,
            IOException{		
		
		req.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(req, resp);
	}
	
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");		
		String password = req.getParameter("password");
		
		if(userValidationService.isUserValid(username, password))
		{
			req.setAttribute("password", password);
			req.setAttribute("username", username);
			req.getRequestDispatcher("/WEB-INF/views/home_page.jsp").forward(req, resp);
		}
		else
		{
			req.setAttribute("message", "Invalid Credentials!");
			req.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(req, resp);
		}
		
	}
	
}
