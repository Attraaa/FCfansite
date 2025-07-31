<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.List, net.aisw.dto.communityDTO" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% List<communityDTO> communityList = (List<communityDTO>) session.getAttribute("communityInfo"); %>
<html>
    <head>
        <title>커뮤니티</title>
		<link rel="stylesheet" href="/css/community/communityMain.css">
    </head>
    <body>
        <header id="header">
            <h1>커뮤니티</h1><hr>
        </header>
        <main>
            <h2>게시글</h2>
                <div class="article_list">
					<table>
						<tr>
							<th class="th_title">제목</th>
							<th class="th_date">작성일</th>
							<th class="th_ID">작성자</th>
							<th class="th_like">좋아요</th>
							<th class="th_dislike">싫어요</th>
						</tr>
					<%
						if(communityList != null) {
							for (communityDTO dto : communityList) {
					%>
					<tr>
						<td class="title"><a href="/CommunityDetail/<%=dto.getC_seq() %>"><%=dto.getC_title() %></td>
						<td class="date"><%=dto.getC_date() %></td>
						<td class="ID"><%=dto.getU_id() %></td>
						<td class="like"><%=dto.getC_like() %></td>
						<td class="dislike"><%=dto.getC_dislike() %></td>
						</a>
					</tr>
						
					<% 
							}
						}
					%>
					</table>
				</div>
        </main>
		<a href="/PostCreate"><button type="button" class="write_btn">글 작성</button></a>

        <footer>
        </footer>
    </body>

</html>