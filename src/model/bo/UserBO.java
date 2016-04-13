package model.bo;

import model.bean.User;
import model.dao.UserDAO;

public class UserBO {

	UserDAO userDAO;
	public UserBO() {
		userDAO = new UserDAO();
	}
	
	public boolean addUser(User user) {
		if (userDAO.addUser(user)) {
			return true;
		};
		return false;
	}

	public boolean updateUser(User user) {
		return userDAO.updateUser(user);
	}

	public User getUser(int userId) {
		return userDAO.getUser(userId);
	}
	
	
}
