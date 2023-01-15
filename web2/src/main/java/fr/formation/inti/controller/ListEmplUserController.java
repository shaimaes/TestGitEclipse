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
import fr.formation.inti.service.EmployeeService;
import fr.formation.inti.service.EmployeeServiceImpl;




/**
 * Servlet implementation class ListUserController
 */
@WebServlet("/listempUser")
public class ListEmplUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private EmployeeService eService;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListEmplUserController() {
       this.eService = new EmployeeServiceImpl();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		if (session == null) {
			
			request.getServletContext().getRequestDispatcher("/index.html").forward(request, response);
		} else {
			
			List<Employee> employees = eService.findAll();
			request.setAttribute("employees", employees);
			employees.forEach(System.out::println);
			request.getServletContext().getRequestDispatcher("/WEB-INF/view/listemployeeUser.jsp").forward(request, response);

		
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
