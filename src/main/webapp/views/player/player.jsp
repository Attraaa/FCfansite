<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Player</title>
	<link rel="stylesheet" href="css/player/player.css">
</head>
<body>
    <h1>Player List</h1><hr>
	<div class="logo">
		<a href="/index"><img src="/image/logo.png" alt="맨체스터 시티 엠블럼"></a>
	</div>
    <table>
        <tr>
            <th>등번호</th>
            <th>선수명</th>
            <th>포지션</th>
        </tr>
        <c:forEach var="player" items="${playerList}">
            <tr>
                <td>${player.p_backNum}</td>
                <td><a href="playerinfo/${player.p_seq}">${player.p_name}</a></td>
                <td>${player.p_position}</td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>