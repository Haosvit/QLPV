package model.dao;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.Customer;

public class CustomerDAO extends Database{
	
	public CustomerDAO() {
		super();
	}
	
public boolean addCustomer(Customer cus) {
		
		String queryStr = "insert into KHACHHANG (MaKhachHang, TenKhachHang, NgaySinh, GioiTinh, Email, SDT)"
				+ "values ('" + cus.getId() + "', " + cus.getFullName() + "', " + cus.getDob()
				+ "', " + cus.isMale() + "', " + cus.getEmail()
				+ "', " + cus.getPhoneNumber() + "');";		
		try {
			update(queryStr);
		}
		catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

public boolean deleteCustomer(int cusId) {
	String queryStr = "delete from KHACHHANG where MaKhachHang = '" + cusId + "';";
	
	try {
		update(queryStr);
		return true;
	} catch (SQLException e) {
		e.printStackTrace();
		return false;
	}
}

	public boolean updateCustomer(Customer cus) {
		String queryStr = "update KHACHHANG set "
				+ "TenKhachHang = '" + cus.getFullName() + ", NgaySinh = '#" + cus.getDob().toString() + "'# "
				+ ", GioiTinh = '" + cus.isMale() + "', Email = '" + cus.getEmail()
				+ "', SDT = '" + cus.getPhoneNumber()
				+ "' where MaKhachHang = '" + cus.getId() + "';";
		try {
			update(queryStr);
		}
		catch (SQLException e) {
			e.printStackTrace();
			return false;
		}		
		return true;
	}

	public Customer getCustomer(int cusId) {
		String queryStr = "select * from KHACHHANG where MaKhachHang='" + cusId + "'";
		Customer cus = null;
		try {
			ResultSet rs = execute(queryStr);
			if (rs.next()) {
				String id = rs.getString("MaKhachHang");
				String fullName = rs.getString("TenKhachHang");
				Date dob = rs.getDate("NgaySinh");
				Boolean isMale = rs.getBoolean("GioiTinh");
				String email = rs.getString("Email");
				String phoneNumber = rs.getString("SDT");
				
				// TODO add more properties
				cus = new Customer(id, fullName, dob, isMale, email, phoneNumber);
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		return cus;
	}
	
	public ArrayList<Customer> getCustomersList() {
		String queryStr = "select * from KHACHHANG;";
		ArrayList<Customer> customers = new ArrayList<Customer>();
		
		try {
			ResultSet rs = execute(queryStr);
			while (rs.next()) {
				String id = rs.getString("MaKhachHang");
				String fullName = rs.getString("TenKhachHang");				
				Date dob = rs.getDate("NgaySinh");
				boolean isMale = rs.getBoolean("GioiTinh");
				String email = rs.getString("Email");
				String phoneNumber = rs.getString("SDT");
				
				Customer cus = new Customer(id, fullName, dob, isMale, email, phoneNumber);
				customers.add(cus);
			}
		}
		catch (SQLException ex) {
			ex.printStackTrace();
		}		
		return customers;
		
	}

}
