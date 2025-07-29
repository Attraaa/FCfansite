<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <link rel="stylesheet" href="/css/user/login.css">
    <link rel="stylesheet" href="/css/reset.css">
    <title>로그인</title>
</head>
<body>
    <form id="login_form" action="/login/response" method="post">
        <div class="login_div">
			<div class="logo">
				<a href="/index"><img src="/image/logo.png" alt="맨체스터 시티 엠블럼"></a>
			</div>
            <p>로그인</p>
            <input type="text" id="userID" name="u_id" placeholder="아이디를 입력해주세요." required>
            <input type="password" id="password" name="u_pwd" placeholder="비밀번호를 입력해주세요." required>
            <div class="buttons">
                <button type="submit" class="submit">로그인</button>
                <button type="reset" class="cancel">취소</button>
            </div>
            <a href="/register"><button type="button" class="register_link">회원가입창으로</button></a>
        </div>
    </form>
    <script src="/script/login.js"></script>
</body>
</html>