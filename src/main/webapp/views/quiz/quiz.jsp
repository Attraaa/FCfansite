<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>

<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="/css/quiz_style.css">
	<title>퀴즈</title>
</head>

<body>
	<div id="quiz-div">
		<a href="/index">
			<button type="submit">홈으로</button>
		</a>
		<form action="/quiz/submit" method="post">
			<c:forEach var="quiz" items="${quizList}" varStatus="status">
				<div>
					<p>Q${status.index + 1}</p>
					<img src="${quiz.q_quizLink}" width="300px"><br />

					<c:choose>
						<c:when test="${quiz.q_type == 1}">
							<input type="radio" name="q${quiz.q_seq}" value="1" /> 1번<br />
							<input type="radio" name="q${quiz.q_seq}" value="2" /> 2번<br />
							<input type="radio" name="q${quiz.q_seq}" value="3" /> 3번<br />
							<input type="radio" name="q${quiz.q_seq}" value="4" /> 4번<br />
						</c:when>
						<c:otherwise>
							<input type="radio" name="q${quiz.q_seq}" value="1" /> O<br />
							<input type="radio" name="q${quiz.q_seq}" value="2" /> X<br />
						</c:otherwise>
					</c:choose>
					<input type="hidden" name="q${quiz.q_seq}" value="5" />
				</div>
				<hr>
			</c:forEach>
			<button type="submit">확인하기</button>
		</form>
	</div>
</body>

</html>