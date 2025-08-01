<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String userID = (String) session.getAttribute("userID"); 
%>

<html>
<head>
    <title>Player Information</title>
	<link rel="stylesheet" href="/css/player/player.css">
</head>
<body>
    <h1>Player Information</h1><hr>
    <img src="${playerInfo.p_photo}"><br>
    <p>이름: ${playerInfo.p_name}</p>
    <p>생년월일: ${playerInfo.p_birth}</p>
    <p>국적: ${playerInfo.p_nation}</p>
    <p>하트 갯수: ${playerInfo.p_rating}</p>
	<form action="/give_heart" method="post">
		<input type="hidden" name="p_name" value="${playerInfo.p_name}">
		<input type="hidden" name="p_seq" value=${playerInfo.p_seq}>
		<input type="hidden" name="p_rating" value=${playerInfo.p_rating}>
		<input type="hidden" name="userID" value=userID>
		<input type="submit" value="하트를 주려면 클릭하세요!"></input>
	</form>
    <p>포지션: ${playerInfo.p_position}</p>
    <p>등번호: ${playerInfo.p_backNum}</p>
    <p>키: ${playerInfo.p_height}cm</p>
    <p>몸무게: ${playerInfo.p_weight}kg</p>
    <p>입단일: ${playerInfo.p_joinDate}</p>
    <input type="button" value="목록으로 돌아가기" onclick="location.href='/player'">
	
	<script src="/script/player.js">
</body>
</html>