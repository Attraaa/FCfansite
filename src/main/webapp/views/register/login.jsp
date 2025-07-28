<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <link rel="stylesheet" href="/css/login.css">
    <link rel="stylesheet" href="/css/reset.css">
    <title>로그인</title>
</head>
<body>
    <form id="login_form" action="/index" method="get">
        <div class="login_div">
            <p>로그인</p>
            <input type="text" id="userID" name="userID" placeholder="아이디를 입력해주세요." required>
            <input type="text" id="password" name="password" placeholder="비밀번호를 입력해주세요." required>
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