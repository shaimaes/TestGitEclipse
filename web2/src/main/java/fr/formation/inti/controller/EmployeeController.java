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

import fr.formation.inti.entity.Employee;
import fr.formation.inti.service.EmployeeService;
import fr.formation.inti.service.EmployeeServiceImpl;

/**
 * Servlet implementation class SaveEmployeeController
 */
@WebServlet("/save")
public class EmployeeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private EmployeeService eService;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeController() {
        this.eService = new EmployeeServiceImpl();
       
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		if (session == null) {
			
			request.getServletContext().getRequestDispatcher("/conx").forward(request, response);
		} else {
			List<Employee> employees = eService.findAll();
			employees.forEach(System.out::println);
			
		}
			
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		if (session == null) {
			
			request.getServletContext().getRequestDispatcher("/conx").forward(request, response);
		} else {
		
		String empId = request.getParameter("empId");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String title = request.getParameter("title");
		
		
		String startDateStr = request.getParameter("startDate");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		try {
			Date startDate = sdf.parse(startDateStr);
			Employee e = new Employee(firstName, lastName, startDate, title);
		
			eService.save(e);
			request.getServletContext().getRequestDispatcher("/listemp").forward(request, response);
		
		} catch (ParseException e) {
			
			e.printStackTrace();
		}
		
	}
	}
}
