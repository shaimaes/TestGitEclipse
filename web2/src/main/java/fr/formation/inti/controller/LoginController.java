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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

//		HttpSession session = request.getSession(false);
//		if (session == null) {
//
//			request.getServletContext().getRequestDispatcher("/index.html").forward(request, response);
//		} else {
			request.getServletContext().getRequestDispatcher("/WEB-INF/view/login.jsp").forward(request, response);
	//	}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String roleName = request.getParameter("roleName");

		User user = userService.findUserBy(email, password);

		if (user != null) {
			HttpSession session = request.getSession();

			session.setMaxInactiveInterval(1800);
			session.setAttribute("user", user);
			session.setAttribute("roleName", roleName);
			request.getServletContext().getRequestDispatcher("/listemp").forward(request, response);

		} else {
			request.setAttribute("erreurlogin", "Email ou mot de passe incorrect");
			request.getServletContext().getRequestDispatcher("/WEB-INF/view/login.jsp").forward(request, response);
		}

	}

}
