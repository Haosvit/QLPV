package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.User;

/**
 * Servlet implementation class TrangChu
 */
public class HomePage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	User user;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public HomePage() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");	
		
		
		// get user privilege
		user = (User) request.getAttribute("currentUser");
		if (user != null) {
			request.setAttribute("userPrivilege", user.getPrivilege());
			request.setAttribute("userName", user.getFullName());
			request.getRequestDispatcher("/WEB-INF/trang_chu.jsp").include(request, response);
			
		}
		
		// redirect to home page with right privilege
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
