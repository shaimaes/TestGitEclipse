package fr.formation.inti.controller.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class ExampleFilter
 */
@WebFilter("/*")
public class ExampleFilter implements Filter {
	private ServletContext context;
    /**
     * Default constructor. 
     */
    public ExampleFilter() {
        
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		
	}
	enum URL{
		login, 
		error,
		listemp,
		addaffchUser,
		delete, 
		addUser,
		addemployee,
		edit,
		contact,
		conx,
		listempUser,
		editU,
		save,
		userSave,
		Udelete,
		logout,
		loggedout
	}
	enum CSS{
		loginStyle	
	}
	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		// TODO Auto-generated method stub
				// place your code here
				HttpServletRequest httpRequest = (HttpServletRequest) request;
				HttpServletResponse httpResponse = (HttpServletResponse) response;
				System.out.println("doFilter : avant");
				System.out.println("path:" + httpRequest.getContextPath());
				System.out.println("path:" + httpRequest.getServletPath());
				System.out.println("methode:" + httpRequest.getMethod());
				HttpSession session = httpRequest.getSession(false);
				
				System.out.println("session :" + session);
				
				String email = httpRequest.getParameter("email");
				String password = httpRequest.getParameter("password");
				
				System.out.println("email : " + email);
				System.out.println("password" + password);
				
//				boolean urlExist = false;
//				
//				//Verifie tous les URL
//				for (URL url : URL.values()) {
//					String urlComplete = "/" + url;
//					String urlCompleteJSP = "/WEB-INF/views/" + url + ".jsp"; //Les points ne sont pas pris en compte dans enum
//					String urlCompleteHTML = "/WEB-INF/views/" + url + ".html";
//					
//					if(urlComplete.equals(httpRequest.getServletPath()) || 
//							urlCompleteJSP.equals(httpRequest.getServletPath()) ||
//							urlCompleteHTML.equals(httpRequest.getServletPath())) {
//						urlExist = true;
//					}
//				}		
//				
//				System.out.println("urlExist : " + urlExist);
//				
//				//Vérifie tous les css et laisse passer
//				boolean cssExist = false;
//				
//				for (CSS css : CSS.values()) {
//					String cssComplete = "/" + css + ".css";
//					if(cssComplete.equals(httpRequest.getServletPath()) ||
//							"signup-image.jpg".equals(httpRequest.getServletPath()) ||
//							"img/signup-image.jpg".equals(httpRequest.getServletPath()) ||
//							"img/FleursImages.PNG".equals(httpRequest.getServletPath())) {
//						cssExist = true;
//					}
//				}
//				
//				//Permet d'acceder Ã  la landing page et au login
//				boolean urlExistLanding = false;
//				if("/web2/".equals(httpRequest.getServletPath()) || 
//						"/add".equals(httpRequest.getServletPath()) ||
//						"/conx".equals(httpRequest.getServletPath()) || 
//						"/addUser".equals(httpRequest.getServletPath()) ||
//						"/addemployee".equals(httpRequest.getServletPath()) ||
//						"/contact.jsp".equals(httpRequest.getServletPath()) ||
//						"/login.jsp".equals(httpRequest.getServletPath()) ||
//						"/index.html".equals(httpRequest.getServletPath()) ||
//						"/login".equals(httpRequest.getServletPath()))	{
//					urlExistLanding = true;
//					System.out.println("je suis dans le if landing");
//				}
//				
//				System.out.println("contextPath : " + httpRequest.getContextPath());
//				System.out.println("ServletPath : " + httpRequest.getServletPath());
//				System.out.println("urlExistLanding : " + urlExistLanding);
//				
//				// pass the request along the filter chain
//				if((session != null && urlExist) || urlExistLanding || cssExist) {
//				chain.doFilter(request, response);
//				}
//				else 
//					httpResponse.sendRedirect(httpRequest.getContextPath());
//				
				chain.doFilter(request, response);
				
				System.out.println("doFilter : après");
				System.out.println("session :" + session);
				System.out.println("========================");
			}
	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		
	}

}






























//
//
///**
// * Servlet Filter implementation class ExampleFilter
// */
//@WebFilter("/*")
//public class ExampleFilter implements Filter {
//	private ServletContext context;
//    /**
//     * Default constructor. 
//     */
//    public ExampleFilter() {
//        
//    }
//
//	/**
//	 * @see Filter#destroy()
//	 */
//	public void destroy() {
//		
//	}
//
//	/**
//	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
//	 */
//	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
//		
//		// place your code here
//		HttpServletRequest httpRequest = (HttpServletRequest) request;
//		HttpServletResponse httpResponse = (HttpServletResponse) response;
//		System.out.println("doFilter : avant");
//		System.out.println("path :"+httpRequest.getContextPath());
//		System.out.println("path :"+httpRequest.getServletPath());
//		System.out.println("Method :"+httpRequest.getMethod());
//		HttpSession session = httpRequest.getSession(false);
//		System.out.println("session :"+session);
//		
//		String email = httpRequest.getParameter("email");
//		String password = httpRequest.getParameter("password");
//		System.out.println("email :"+email);
//		System.out.println("password :"+password);
//		
//		
////		String uri = httpRequest.getRequestURI();
////		this.context.log("Requested Resource::"+uri);
////		
////		
////		if(session == null && session.getAttribute(password))){
////			this.context.log("Unauthorized access request");
////			httpResponse.sendRedirect("/WEB-INF/view/login.jsp");
////		}else{
////			// pass the request along the filter chain
////			chain.doFilter(request, response);
////		}
//
//		
////		System.out.println("doFilter : apres");
////		session = httpRequest.getSession(false);
////		System.out.println("session :"+session);
////	}
//
//	
//	//check for null and empty values.
//	if(email == null || email.equals("") || 
//			password == null || password.equals("") 
//			|| session == null){
//		
//	RequestDispatcher requestDispatcher = request.getRequestDispatcher("/login.jsp");
//		requestDispatcher.include(request, response);
//		chain.doFilter(request, response);
//	}//Check for valid username and password.
//	else if(email.equals("jai") && password.equals("1234")){
//		 chain.doFilter(request, response);
//	}else{
//		//out.print("Wrong username or password. <br/><br/>");
//		RequestDispatcher requestDispatcher = 
//			request.getRequestDispatcher("/login.html");
//		requestDispatcher.include(request, response);
//	}	          
// }  
//	/**
//	 * @see Filter#init(FilterConfig)
//	 */
//	public void init(FilterConfig fConfig) throws ServletException {
//		this.context = fConfig.getServletContext();
//		this.context.log("AuthenticationFilter initialized");
//	}
//
//}
