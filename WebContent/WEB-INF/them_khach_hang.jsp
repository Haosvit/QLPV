<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ include file="/WEB-INF/header.jsp" %>
<div class="container">
	<div style="text-align: center">
		<label style="font-size: 20px; margin-top: 15px;">QUẢN LÝ KHÁCH HÀNG</label>
	</div>
	<div style="text-align: center">
		<label style="font-size: 15px;">THÊM KHÁCH HÀNG</label>
	</div>

	<form action="customermanager?action=add_customer" method="POST" class="form-horizontal" role="form">
		<div class="row" style="margin-top: 20px;">
			<div class="col-sm-6">
				<div style="width: 80%;">
					<div class="form-group">
					 	 <label for="customerId">Mã khách hàng</label>
					  	<input type="text" class="form-control" id="customerId" name="customerId">
					</div>
					<div class="form-group">
					  	<label for="fullname">Họ tên</label>
					  	<input type="text" class="form-control" id="fullname" name="fullname">
					</div>
					<div class="form-group">
					 	 <label for="dob">Ngày sinh</label>
					  	<input type="date" name="dob" id="inputDob" class="form-control" required="required">
					</div>
					
				</div>
			</div>
			
			<div class="col-sm-6">
				<div style="width: 80%">
					<div class="form-group">
					  	<label for="gender">Giới tính</label>
					  	<select name="gender" id="inputGender" class="form-control" required="required">
							<option value="M" selected>Nam</option>
							<option value="F">Nữ</option>	
						</select>
					</div>
					<div class="form-group">
					 	 <label for="email">Email</label>
					  	<input type="email" class="form-control" id="email" name="email">
					</div>					
					<div class="form-group">
					 	 <label for="phoneNumber">Số điện thoại</label>
					  	<input type="text" class="form-control" id="phoneNumber" name="phoneNumber">
					</div>

				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-2 col-sm-offset-2">
				<a href="customermanager">
					<button type="button" class=btn btn-default>Quay lại</button>
				</a>				
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
</div>
</body>
</html>