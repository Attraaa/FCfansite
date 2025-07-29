<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="java.util.Date" %>

<% 
	String userID = (String) session.getAttribute("userID");
	Date userBirth = (Date) session.getAttribute("userBirth");
	Date userJoinDate = (Date) session.getAttribute("userJoinDate");
	String userName = (String) session.getAttribute("userName");
	String userWhy = (String) session.getAttribute("userWhy");
%>
<html>
	<head>
		<title>마이페이지</title>	
	</head>
	
	<body>
		<ul>
			<li><% out.print(userID);%></li>
			<li><% out.print(userName);%></li>
			<li><%= userBirth%></li>
			<li><%= userJoinDate%></li>
			<li><% out.print(userWhy);%></li>
		</ul>
	</body>
	
</html>