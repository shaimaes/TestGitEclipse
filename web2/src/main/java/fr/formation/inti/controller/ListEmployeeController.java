package fr.formation.inti.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.formation.inti.entity.Employee;
import fr.formation.inti.service.EmployeeService;
import fr.formation.inti.service.EmployeeServiceImpl;

/**
 * Servlet implementation class ListEmployeeController
 */
@WebServlet("/listemp")
public class ListEmployeeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private EmployeeService eService;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListEmployeeController() {
    	this.eService = new EmployeeServiceImpl();
       
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Employee> employees = eService.findAll();
		request.setAttribute("employees", employees);
		employees.forEach(System.out::println);
		request.getServletContext().getRequestDispatcher("/listemployee.jsp").forward(request, response);

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
