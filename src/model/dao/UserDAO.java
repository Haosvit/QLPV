package model.dao;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.Customer;
import model.bean.User;

public class UserDAO extends Database {

	public boolean addUser(User user) {
		
		String queryStr = "insert into NHANVIEN (MaNhanVien, TenNhanVien, NgaySinh, GioiTinh, TaiKhoan, MatKhau, SDT, Quyen)"
				+ "values ('" + user.getId() + "', " + user.getFullName() + "', " + user.getDob()
				+ "', " + user.isMale() + "', " + user.getEmail() + "', " + user.getPwd()
				+ "', " + user.getPhoneNumber() + "', " + user.getPrivilege() + "');";
		try {
			update(queryStr);
		}
		catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public boolean deleteUser(int userId) {
		String queryStr = "delete from NHANVIEN where MaNhanVien = '" + userId + "';";
		
		try {
			update(queryStr);
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean updateUser(User user) {
		String queryStr = "update NHANVIEN set "
				+ "TenNhanVien = '" + user.getFullName() + ", NgaySinh = '#" + user.getDob().toString() + "'# "
				+ ", GioiTinh = '" + user.isMale() + "', TaiKhoan = '" + user.getEmail() + "', MatKhau = '" + user.getPwd()
				+ "', SDT = '" + user.getPhoneNumber() + "', Quyen = '" + user.getPrivilege()
				+ "' where MaNhanVien = '" + user.getId() + "';";
		try {
			update(queryStr);
		}
		catch (SQLException e) {
			e.printStackTrace();
			return false;
		}		
		return true;
	}

	public User getUser(int userId) {
		String queryStr = "select * from NHANVIEN where MaNhanVien='" + userId + "'";
		User user = null;
		try {
			ResultSet rs = execute(queryStr);
			if (rs.next()) {
				String id = rs.getString("MaNhanVien");
				String fullName = rs.getString("TenNhanVien");
				Date dob = rs.getDate("NgaySinh");
				Boolean isMale = rs.getBoolean("GioiTinh");
				String email = rs.getString("TaiKhoan");
				String pwd = rs.getString("MatKhau");
				String phoneNumber = rs.getString("SDT");
				String privilege = rs.getString("Quyen");
				
				// TODO add more properties
				user = new User(id, fullName, dob, isMale, email, pwd, phoneNumber, privilege);
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}
	
	public ArrayList<User> getUsers() {
		String queryStr = "select * from NHANVIEN;";
		ArrayList<User> users = new ArrayList<User>();
		
		try {
			ResultSet rs = execute(queryStr);
			while (rs.next()) {
				String id = rs.getString("MaNhanVien");
				String fullName = rs.getString("TenNhanVien");				
				Date dob = rs.getDate("NgaySinh");
				boolean isMale = rs.getBoolean("GioiTinh");
				String email = rs.getString("TaiKhoan");
				String pwd = rs.getString("MatKhau");
				String phoneNumber = rs.getString("SDT");
				String privilege = rs.getString("Quyen");
				
				User user = new User(id, fullName, dob, isMale, email, pwd, phoneNumber, privilege);
				users.add(user);
			}
		}
		catch (SQLException ex) {
			ex.printStackTrace();
		}		
		return users;
		
	}

	public ArrayList<User> searchBy(String type, String searchContent) {
		String queryStr = "select * from NHANVIEN where " + type + "= '"  + searchContent + "';";
		ArrayList<User> users = new ArrayList<User>();
		try {
			ResultSet rs = execute(queryStr);
			while (rs.next()) {
				String id = rs.getString("MaNhanVien");
				String fullName = rs.getString("TenNhanVien");				
				Date dob = rs.getDate("NgaySinh");
				boolean isMale = rs.getBoolean("GioiTinh");
				String email = rs.getString("TaiKhoan");
				String pwd = rs.getString("MatKhau");
				String phoneNumber = rs.getString("SDT");
				String privilege = rs.getString("Quyen");
				
				User user = new User(id, fullName, dob, isMale, email, pwd, phoneNumber, privilege);
				users.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return users;
	}

}
