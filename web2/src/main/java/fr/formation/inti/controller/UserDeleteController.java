package fr.formation.inti.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import fr.formation.inti.service.UserService;
import fr.formation.inti.service.UserServiceImpl;


/**
 * Servlet implementation class DeleteController
 */
@WebServlet("/Udelete")
public class UserDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserService uService;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserDeleteController() {
    	this.uService = new UserServiceImpl();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if (session == null) {
			
			request.getServletContext().getRequestDispatcher("/index.html").forward(request, response);
		} else {
	
		String idUser = request.getParameter("id");
		Integer id = Integer.parseInt(idUser);
		
		uService.deleteById(id);
		
		request.getServletContext().getRequestDispatcher("/listempAdmin").forward(request, response);
		} 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//request.getServletContext().getRequestDispatcher("/listemp").forward(request, response);
		
		doGet(request, response);
	}

}
