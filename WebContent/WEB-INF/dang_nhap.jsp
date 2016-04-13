<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/header.jsp"%>
	<!-- header -->
	 	<div class="row" style="text-align: center; background-color: #F0F0F0; height: 100px">
			<label style="font-size: 30px; padding:30px;">HỆ THỐNG QUẢN LÝ PHÒNG BÁN VÉ MÁY BAY</label>
		</div>
	
	<div class="container" style="width: 40%; padding-top: 50px">
		<form action="login" method="POST" role="form">
			<legend>Đăng nhập</legend>

			<div class="form-group">
				<label for="email">Email</label> <input type="text"
					class="form-control" id="email" placeholder="User ID" name="email">
			</div>
			<div class="form-group">
				<label for="password">Mật khẩu</label> <input type="password"
					class="form-control" id="password" placeholder="" name="password">
			</div>
			<div align="right">				
				<button type="submit" class="btn btn-success">Đăng nhập</button>
				<input type="hidden" name="loginPressed" value="yes">
			</div>
		</form>

<%@ include file="/WEB-INF/footer.jsp"%>
