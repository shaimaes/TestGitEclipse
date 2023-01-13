package fr.formation.inti.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class Session
 */
@WebServlet("/menu")
public class MenuController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
    /**
	 * 
	 */

	/**
     * @see HttpServlet#HttpServlet()
     */
    public MenuController() {

    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		
		if(session != null) {
			RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/menu.html");
			dispatcher.forward(request, response);
		}else {
			RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/login.jsp"); 
			dispatcher.forward(request, response);
	}
	}
}
