<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.bean.User"%>
<% User user = (User) request.getAttribute("currentUser"); 
boolean isStaff = (user.getPrivilege().equalsIgnoreCase("nv")) ? true : false;%>

<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Quản lý phòng vé</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery-1.12.3.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">

		<!-- header -->
		<div class="row"
			style="text-align: center; background-color: #F0F0F0; height: 100px">
			<label style="font-size: 30px; padding: 30px;">HỆ THỐNG QUẢN
				LÝ PHÒNG BÁN VÉ MÁY BAY</label>
		</div>

		<div class="row">
			<nav class="navbar navbar-inverse">
				<div class="row">
					<div class="col-md-9">
						<div class="container-fluid">
							<div class="navbar-header">
								<a class="navbar-brand" href="#"><span
									class="glyphicon glyphicon-plane"></span></a>
							</div>
							<ul class="nav navbar-nav">
								<li class="active"><a href="#">Trang chủ</a></li>
								<li class="dropdown"><a class="dropdown-toggle"
									data-toggle="dropdown" href="#">Quản lý kinh doanh<span
										class="caret"></span></a>
									<ul class="dropdown-menu">
										<% if (isStaff) { %>
										<li><a href="#" target="_main">Quản lý bán vé</a></li>
										<%}%>

										<li><a href="#" target="_main">Tạo báo cáo</a></li>


									</ul></li>
								<li><a href="#">Quản lý nhân viên</a></li>
								<li><a href="#">Quản lý khách hàng</a></li>
							</ul>
						</div>
					</div>

					<div class="col-md-2"
						style="vertical-align: center; text-align: right">
						<label style="color: #FFFFFF; padding-top: 14px">Chào <%= user.getFullName() %></label>
					</div>

					<div class="col-md-1" style="text-align: right;">
						<a href="login?action=logout"><span class="glyphicon glyphicon-log-out"
							style="color: #FFFFFF; padding-top: 10px; font-size: 24px"></span></a>
					</div>
				</div>
			</nav>
		</div>