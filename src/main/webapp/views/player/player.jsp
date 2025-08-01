<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Player</title>
</head>
<body>
    <h1>Player List</h1><hr>
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