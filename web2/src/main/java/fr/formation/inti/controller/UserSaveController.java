package fr.formation.inti.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
 * Servlet implementation class UserSaveController
 */
@WebServlet("/userSave")
public class UserSaveController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserService uService;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserSaveController() {
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
			
			List<User> users = uService.findAll();
			users.forEach(System.out::println);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession(false);
		if (session == null) {
			
			request.getServletContext().getRequestDispatcher("/index.html").forward(request, response);
		} else {
			
			String email = request.getParameter("email");
			String password= request.getParameter("password");
			String first_name = request.getParameter("first_name");
			String last_name = request.getParameter("last_name");
			String roleName = request.getParameter("roleName");
			

			String dateCreationStr = request.getParameter("dateCreation");
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			
			try {
				Date dateCreation = sdf.parse(dateCreationStr);
				User u = new User(email, password, dateCreation, first_name, last_name, roleName);
			
				uService.save(u);
				request.getServletContext().getRequestDispatcher("/affchUser").forward(request, response);
			
			} catch (ParseException e) {
				
				e.printStackTrace();
			}
			
		}
		}
	}


