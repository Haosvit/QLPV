package model.dao;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.User;

public class UserDAO extends Database {

	public boolean addUser(User user) {
		
		String queryStr = "insert into NHANVIEN (MaNhanVien, TenNhanVien, NgaySinh, GioiTinh, TaiKhoan, MatKhau, SDT, Quyen)"
				+ "values ('" + user.getId() + "', " + user.getFullName() + "', " + user.getDob()
				+ "', " + user.isMale() + "', " + user.getEmail() + "', " + user.getPwd()
				+ "', " + user.getPhoneNumber() + "', " + user.getPrivilege() + "');";
	//	String queryStr = "insert into USERS (Email, Password, FullName, Sex) values ('"
	//			+ user.getEmail() + "', '" + user.getPwd() + "', '" + user.getFullName() + "', "
	//			+ (user.isMale() ? "true" : "false") + ")";				
		try {
			update(queryStr);
		}
		catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
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
				String email = rs.getString("TaiKhoan");
				Boolean isMale = rs.getBoolean("GioiTinh");
				// TODO add more properties
				user = new User(id, fullName, null, isMale, email, null, null, null);
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

}
