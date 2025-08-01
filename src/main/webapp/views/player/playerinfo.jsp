<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
    <p>하트 갯수: ${playerInfo.p_rating}<button onclick="location.href='/give_heart/${playerInfo.p_seq}/${playerInfo.p_rating}/${playerInfo.p_name}'">하트를 주려면 클릭하세요!</button></p>
    <p>포지션: ${playerInfo.p_position}</p>
    <p>등번호: ${playerInfo.p_backNum}</p>
    <p>키: ${playerInfo.p_height}cm</p>
    <p>몸무게: ${playerInfo.p_weight}kg</p>
    <p>입단일: ${playerInfo.p_joinDate}</p>
    <input type="button" value="목록으로 돌아가기" onclick="location.href='/player'">
	
	<script src="/script/player.js">
</body>
</html>