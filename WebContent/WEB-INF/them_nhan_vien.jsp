<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ include file="/WEB-INF/header.jsp" %>

<div class="container">

<div style="text-align: center">
	<label style="font-size: 20px; margin-top: 15px;">QUẢN LÝ NHÂN VIÊN</label>
</div>
<div style="text-align: center">
	<label style="font-size: 15px;">THÊM NHÂN VIÊN</label>
</div>
<div class="container">
	<form action="usermanager?action=addUser" method="POST" class="form-horizontal" role="form">
		<div class="row" style="margin-top: 20px;">
			<div class="col-sm-6">
				<div style="width: 80%;">
					<div class="form-group">
					 	 <label for="workerId">Mã nhân viên</label>
					  	<input type="text" class="form-control" id="workerId" name="userId">
					</div>
					<div class="form-group">
					  	<label for="fullname">Họ tên</label>
					  	<input type="text" class="form-control" id="fullname" name="fullname">
					</div>
					<div class="form-group">
					 	 <label for="dob">Ngày sinh</label>
					  	<input type="date" name="dob" id="inputDob" class="form-control" required="required">
					</div>
					<div class="form-group">
					  	<label for="gender">Giới tính</label>
					  	<select name="" id="gender" class="form-control" required="required">
					  	 	<option value="M">Nam</option>
					  	 	<option value="F">Nữ</option>
					  	 </select>
					</div>
				</div>
			</div>
			
			<div class="col-sm-6">
				<div style="width: 80%">
					<div class="form-group">
					 	 <label for="email">Tài khoản</label>
					  	<input type="email" class="form-control" id="email" name="email">
					</div>
					<div class="form-group">
					  	<label for="pwd">Mật khẩu</label>
					  	<input type="text" class="form-control" id="pwd" name="pwd">
					</div>
					<div class="form-group">
					 	 <label for="phoneNumber">Số điện thoại</label>
					  	<input type="text" class="form-control" id="phoneNumber" name="phoneNumber">
					</div>
					<div class="form-group">
					  	<label for="privilege">Quyền</label>
					  	<select name="privilege" id="privilege" class="form-control" required="required">
					  		<option value="admin">Admin</option>
					  		<option value="staff" selected>Nhân viên</option>
					  	</select>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-2 col-sm-offset-2">
				<button type="button" class=btn btn-default>Quay lại</button>
			</div>
			<div class="col-sm-2 col-sm-offset-1">
				<button type="reset" class="btn btn-danger">Xóa ô đã nhập</button>
			</div>
			<div class="col-sm-5">
				<button type="submit" class="btn btn-success">Lưu</button>
			</div>
		</div>
	</form>
</div>
</body>
</html>