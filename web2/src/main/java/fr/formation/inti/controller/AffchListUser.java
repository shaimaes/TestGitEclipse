package fr.formation.inti.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.formation.inti.entity.Employee;
import fr.formation.inti.entity.User;
import fr.formation.inti.service.UserService;
import fr.formation.inti.service.UserServiceImpl;

/**
 * Servlet implementation class AffchListUser
 */
@WebServlet("/affchUser")
public class AffchListUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private UserService uService;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AffchListUser() {
        this.uService = new UserServiceImpl();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession(false);
		if (session == null) {
			
			response.sendRedirect(request.getContextPath());
		} else {
			
			List<User> users = uService.findAll();
			request.setAttribute("users", users);
			users.forEach(System.out::println);
		request.getServletContext().getRequestDispatcher("/WEB-INF/view/listuser.jsp").forward(request, response);

		
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
