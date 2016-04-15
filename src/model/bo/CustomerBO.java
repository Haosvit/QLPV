package model.bo;

import java.util.ArrayList;

import model.bean.Customer;
import model.bean.User;
import model.dao.CustomerDAO;

public class CustomerBO {
	CustomerDAO customerDAO;
	
	public CustomerBO(){
		customerDAO = new CustomerDAO();
	}
	
	public ArrayList<Customer> getCustomerList() {
		return customerDAO.getCustomersList();
	}
	
	public boolean addCustomer(Customer cus) {
		if (customerDAO.addCustomer(cus)) {
			return true;
		};
		return false;
	}

	public boolean updateCustomer(Customer cus) {
		return customerDAO.updateCustomer(cus);
	}

	public Customer getCustomer(int cusId) {
		return customerDAO.getCustomer(cusId);
	}
	
	public boolean deleteCustomer(int cusId) {
		return customerDAO.deleteCustomer(cusId);
	}
}
