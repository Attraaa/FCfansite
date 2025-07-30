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
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/user/mypage.css">
    <title>Document</title>
</head>
<body>
    <div class="profile">
		<div class="logo">
			<a href="/index"><img src="/image/logo.png" alt="맨체스터 시티 엠블럼"></a>
		</div>
        <p>프로필</p>
        <div class="profile_menu">
            <ul>
                <li>닉네임</li>
                <li>아이디</li>
                <li>비밀번호</li>
                <li>생년월일</li>
                <li>가입날짜</li>
                <li>맨시티 팬이 된 이유</li>
            </ul>
        </div>
        <div class="userInfo">
            <ul>
                <li class="userName"><%=userName %></li>
                <li class="userID"><%=userID %></li>
                <li class="userPassword"> <button class="replace_password_btn">비밀번호 변경</button></li>
                <li class="userBirth"><%=userBirth %></li>
                <li class="userJoinDate"><%=userJoinDate%></li>
                <li class="userWhy"><textarea id="userWhy"><%=userWhy%></textarea></li>
    
            </ul>
        </div>
        <form class="replace_password_form" action="/replacePassword/response" method="post">
            <div class="replace_password_div">
				<input type="hidden" name="u_id" value=<%=userID %>>
                <input type="password" name="u_pwd" class="replace_password" placeholder="변경할 비밀번호를 입력해주세요.">
                <input type="password" class="again_replace_password" placeholder="변경할 비밀번호를 한번 더 입력해주세요.">
                
                <div class="buttons">
                    <button type="button" class="back_btn">이전</button>
                    <button type="submit">변경</button>
                </div>
            </div>
            <div class="dim"></div>
        </form>
    </div>
    <script src="/script/mypage.js"></script>
</body>
</html>