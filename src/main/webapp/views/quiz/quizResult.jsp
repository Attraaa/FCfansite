<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>

<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="/css/quiz_style.css">
	<title>퀴즈 결과</title>
</head>

<body>
	<div class="quiz-box">
		<h2>퀴즈 결과</h2>
		<p>총 ${total}문제 중 ${score}문제 정답</p>

		<c:forEach var="quiz" items="${quizList}" varStatus="status">
			<div>
				<p>Q${status.index + 1}</p>
				<img src="${quiz.q_quizLink}" width="300px"><br />
				<p>
					<b>정답:</b>
					<c:choose>
						<c:when test="${quiz.q_type == 1}">
							${quiz.q_ans}번
						</c:when>
						<c:otherwise>
							<c:if test="${quiz.q_ans == 1}">O</c:if>
							<c:if test="${quiz.q_ans == 2}">X</c:if>
						</c:otherwise>
					</c:choose>
				</p>
				<p>
					<b>결과:</b>
					<c:choose>
						<c:when test="${isCorrectList[status.index]}">✅ 정답</c:when>
						<c:otherwise>❌ 오답</c:otherwise>
					</c:choose>
				</p>
			</div>
			<hr />
		</c:forEach>
		<div class="button-group">
			<a href="/quiz"><button type="submit">문제 다시 풀기</button></a>
			<a href="/index"><button type="submit">홈으로</button></a>
		</div>
	</div>
</body>

</html>