package fr.formation.inti.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.formation.inti.entity.User;
import fr.formation.inti.service.UserService;
import fr.formation.inti.service.UserServiceImpl;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserService userService;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
    	 userService = new UserServiceImpl();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<User> users = userService.findAll();
		request.setAttribute("users", users);
		request.getServletContext().getRequestDispatcher("/menu.html").forward(request, response);
	return;	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		User user = userService.findUserBy(email, password);

		if(user != null) {
			HttpSession session = request.getSession();
			
			request.setAttribute("user", user);
			
			request.getServletContext().getRequestDispatcher("/menu.html").forward(request, response);
		}
		request.setAttribute("error", "mail or password error !");
		request.getServletContext().getRequestDispatcher("/login.html").forward(request, response);
	
	}

}
