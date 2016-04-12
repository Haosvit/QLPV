<%@ page contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/header.jsp" %>

		<div class ="container" style="width:30%">
			<form action="login" method="POST" role="form">
				<legend>Login</legend>
			
				<div class="form-group">
					<label for="email">Email</label>
					<input type="text" class="form-control" id="email" placeholder="User ID" name="email">
				</div>
				<div class="form-group">
					<label for="password">Password</label>
					<input type="password" class="form-control" id="password" placeholder="" name="password">
				</div>
				<div align="right">
					<a href="register"><span style="padding-right:10px" >Register</span></a>
					<button type="submit" class="btn btn-success">Login</button>
					<input type="hidden" name="loginPressed" value="yes">
				</div>
			</form>
		</div>

<%@ include file="/WEB-INF/footer.jsp" %>