<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/header.jsp"%>

<%@ page import="java.util.ArrayList" %>
<%@ page import="model.bean.Customer" %>

<% ArrayList<Customer> customers = (ArrayList<Customer>) request.getAttribute("customerList"); %>

<div style="text-align: center">
	<label style="font-size: 20px; margin: 15px">Quản Lý Khách Hàng</label>
</div>

<div class="row">
	<div class="col-md-2">
		<button type="submit" class="btn btn-success" name="themKhachHang">Thêm Khách Hàng</button>
	</div>
	<div class="col-md-2" style="text-align: right">
		<h4>Tìm Kiếm Theo</h4>
	</div>
	<div class="col-md-3">
		<select name="timKiemTheoSelect" id="inputTimKiemTheoSelect"
			class="form-control" required="required">
			<option value="">Mã Khách hàng</option>
			<option value="">Họ tên</option>
			<option value="">Số điện thoại</option>
		</select>
	</div>
	<div class="col-md-3">
		<input type="text" class="input-medium search-query">
	</div>
	<div class="col-md-2">
		<button type="submit" class="btn btn-success">Tìm</button>
	</div>
</div>
<div class="row">
<table style="width: 100%" class="table table-bordered table-hover table-striped">
	<tr color="green">
		<td>STT</td>
		<td>Mã khách</td>
		<td>Họ tên</td>
		<td>Ngày sinh</td>
		<td>Giới tính</td>
		<td>Email</td>
		<td>Số điện thoại</td>
	</tr>
	
	<% int i = 1;
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
	} %>

</table>
</div>
</div>
</body>
</html>
