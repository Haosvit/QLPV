package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.User;
import model.bean.User;
import model.bo.UserBO;

/**
 * Servlet implementation class UserManager
 */
public class UserManager extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserBO userBO;
	private ArrayList<User> users = new ArrayList<User>();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserManager() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		String action = request.getParameter("action");
		if (action == null) {
			action = "";
		}

		switch (action) {

		case "redir_add_User":
			request.getRequestDispatcher("/WEB-INF/them_nhan_vien.jsp").include(request, response);
			break;

		case "add_User":
			User cus = getRequestUser(request);
			userBO.addUser(cus);

			response.sendRedirect("Usermanager");
			break;

		case "updateOrDelete":
			String actionDetail = request.getParameter("actionDetail");
			if ("update".equals(actionDetail)) {
				User upUser = getRequestUser(request);
				userBO.updateUser(upUser);
			} else {
				// delete
				userBO.deleteUser(request.getParameter("UserId"));
			}
			response.sendRedirect("Usermanager");
			break;

		case "search":
			String searchBy = request.getParameter("searchBy");
			String searchContent = request.getParameter("searchContent");
			ArrayList<User> users = new ArrayList<User>();
			switch (searchBy) {
			case "userId":
				users = userBO.searchById(searchContent);
				break;
			case "fullName":
				users = userBO.searchByName(searchContent);
				break;
			case "phoneNumber":
				users = userBO.searchByPhoneNumber(searchContent);
				break;
			case "email":
				users = userBO.searchByEmail(searchContent);
				break;
			}

			request.setAttribute("UserList", users);
			request.getRequestDispatcher("/WEB-INF/quan_ly_nhan_vien.jsp").include(request, response);
			break;

		case "":
			userBO = new UserBO();
			users = userBO.getUsers();

			request.setAttribute("userList", users);
			request.getRequestDispatcher("/WEB-INF/quan_ly_nhan_vien.jsp").include(request, response);

			break;
		default:
			break;

		}

	}

	private User getRequestUser(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
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
