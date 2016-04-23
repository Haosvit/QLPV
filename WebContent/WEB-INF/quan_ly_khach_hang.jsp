<%@page import="model.bean.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/header.jsp"%>

<%@ page import="java.util.ArrayList" %>
<%@ page import="model.bean.Customer" %>

<% ArrayList<Customer> customers = (ArrayList<Customer>) request.getAttribute("customerList"); %>
<% 
	User currentUser = (User)session.getAttribute("currentUser");
boolean isStaff = ("nv".equalsIgnoreCase(currentUser.getPrivilege())) ? true : false; %>
<div style="text-align: center">
	<label style="font-size: 20px; margin: 15px">QUẢN LÝ KHÁCH HÀNG</label>
</div>

<div class="row">
			<div class="col-sm-2">
				<a href="them_khach_hang.html">
					<button type="button" class="btn btn-success" name="themNhanVien">Thêm khách hàng</button>
				</a>
			</div>
	
			<div class="col-sm-2" style="text-align: right">
				<p style="margin-top: 6px">Tìm kiếm theo</p>
			</div>
			<div class="col-sm-3">
				<select name="timKiemTheoSelect" id="inputTimKiemTheoSelect"
					class="form-control" required="required">
					<option value="">Mã khách hàng</option>
					<option value="">Họ tên</option>
					<option value="">Số điện thoại</option>
					<option value="">Email</option>
				</select>
			</div>
	
			<div class="col-sm-3" style="align-content: right;">
				<span style="align-content:  center"><input type="search" name="searchContent" id="inputSearchContent" class="form-control"> </span>
			</div>
			<div class="col-sm-2">
				<button type="submit" class="btn btn-success">Tìm</button>
			</div>
		</div>

<div class="table-responsive" style="margin-top: 20px">
<table style="width: 100%" class="table table-bordered table-hover table-striped">
	<tr color="green">
		<td>STT</td>
		<td>Mã khách</td>
		<td>Họ tên</td>
		<td>Ngày sinh</td>
		<td>Giới tính</td>
		<td>Email</td>
		<td>Số điện thoại</td>
		
		<% if (isStaff) { %>
			<td colspan="2">Thao tác</td>
		<% } %>
	</tr>
	
	<% int i = 1;
		if (isStaff) {		
			for (Customer c : customers) { 
	%>	
	<tr>
		<form method="POST" action="">
			<td><%= i %></td>
			<td>
				<%= c.getId() %>
			</td>
			<td>
				<input type="text" name="fullname" id="inputFullname" class="form-control" value="<%= c.getFullName() %>" required="required">
			</td>
			<td>
				<input type="date" name="dob" id="inputDob" class="form-control" value="<%=c.getDob().toLocalDate() %>" required="required">
			</td>
			<td>
				<select name="gender" id="inputGender" class="form-control" required="required" select>
					<option value="M" <% if (c.isMale()) %> selected>Nam</option>
					<option value="F" <% if (!c.isMale()) %> selected>Nữ</option>
				</select>
			</td>
			<td>
				<input type="email" name="" id="input" class="form-control" value="<%= c.getEmail() %>" required="required">
			</td>
			<td>	
				<input type="text" name="phoneNumber" id="inputPhoneNumber" class="form-control" value="<%= c.getPhoneNumber() %>" required="required" pattern="" title="">
			</td>
			<td>
				<button type="submit" class="btn btn-primary" name="editUserSubmit">Sửa</button>
			</td>
			<td>
				<button type="submit" class="btn btn-danger" name="deleteUserSubmit">Xóa</button>
			</td>
		</form>
	</tr>
			<% 
			i++;
			}
		}
		else {
			for (Customer c : customers) { 
			%>
	<tr>
		<td><%= i %></td>
		<td><%= c.getId() %></td>
		<td><%= c.getFullName() %></td>
		<td><%= c.getDob().toString() %></td>
		<td><%= (c.isMale()) ? "Nam" : "Nữ" %></td>
		<td><%= c.getEmail() %></td>
		<td><%= c.getPhoneNumber() %></td>
	</tr>
				<%
				i++;
				} 
			}
			%>

</table>
</div>
</div>
</body>
</html>
