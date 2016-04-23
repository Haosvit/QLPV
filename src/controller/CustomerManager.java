package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bean.Customer;
import model.bean.User;
import model.bo.CustomerBO;

/**
 * Servlet implementation class CustomerManager
 */
public class CustomerManager extends HttpServlet {
	private static final long serialVersionUID = 1L;
    CustomerBO customerBO;
	ArrayList<Customer> customers = new ArrayList<Customer>();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerManager() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		
		HttpSession session = request.getSession();
		
		customerBO = new CustomerBO();
		customers = customerBO.getCustomerList();
		
		request.setAttribute("customerList", customers);
		
		User currentUser = (User) session.getAttribute("currentUser");
		
		request.getRequestDispatcher("/WEB-INF/quan_ly_khach_hang_admin.jsp").include(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
