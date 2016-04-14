<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/WEB-INF/header.jsp" %>
<%@ page import="model.bean.User" %>
<%@ page import="java.util.ArrayList" %>

<% ArrayList<User> users = (ArrayList<User>) request.getAttribute("userList"); %>

<div>
	<% out.println(users.size()); %>
</div>
</div>
</body>
</html>