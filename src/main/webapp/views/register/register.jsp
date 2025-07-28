<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>Document</title>
    <link rel="stylesheet" href="/css/register.css">
    <link rel="stylesheet" href="/css/reset.css">
</head>
<body>
      <form id="register_form" action="/index" method="get">
        <div class="register_div">
            <p>회원가입</p>
            <input type="text" id="userID" name="userID" placeholder="아이디를 입력해주세요.">
            <input type="password" id="password" name="password" placeholder="비밀번호를 입력해주세요.">
            <input type="password" id="again_password" placeholder="비밀번호를 재입력해주세요.">
            <div class="buttons">
                <button type="reset" class="cancel">취소</button>
                <button type="button" class="next">다음</button>
            </div>
        </div>
        <div class="register_div2">
            <p>추가 정보 입력</p>
            <input type="text" id="nickname" name="nickname" placeholder="닉네임을 입력해주세요.">
            <input type="text" id="birth" name="birth" placeholder="생년월일을 입력해주세요 ex) 2005-10-21">
            <input type="text" id="desc" name="desc" placeholder="맨체스터 시티 팬이 된 이유가 무엇인가요?">
            <div class="buttons">
                <button type="button" class="back">이전</button>
                <button type="button" class="submit">회원가입</button>
            </div>
        </div>
    </form>

    <script src="/script/register.js"></script>
</body>
</html>