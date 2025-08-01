<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<% 
	String userID = (String) session.getAttribute("userID");
	String uId = (String) request.getAttribute("communityDetailUserID");
%>
<html>
    <head>
        <title>글내용</title>
        <script src="/script/jquery-3.7.1.js"></script>
        <script type="text/javascript"></script>
    </head>
    <body>
        <header id="header">
            <h1>게시글 내용</h1><hr>
        </header>
        <main>
            <h2>게시글</h2>
            <div class="article_detail">
                <table>
                    <tr>
                        <th>제목</th>
                        <td>${communityDetail.c_title}</td>
                    </tr>
                    <tr>
                        <th>작성일</th>
                        <td>${communityDetail.c_date}</td>
                    </tr>
                    <tr>
                        <th>작성자</th>
                        <td>${communityDetail.u_id}</td>
                    </tr>
                    <tr>
                        <th>내용</th>
                        <td>${communityDetail.c_contents}</td>
                    </tr>
                </table>
				
                <form action="/CommunityMain" method="get">
                    <input type="submit" value="돌아가기" >
                </form>
				<%
					System.out.print(uId);
					if(userID != null && userID.equals(uId)) {
						
				 %>
	                <form action="/EditPost/${communityDetail.c_seq}" method="post">
	                    <input type="hidden" name="c_seq" value="${communityDetail.c_seq}">
	                    <input type="hidden" name="u_id" value="${communityDetail.u_id}">
	                    <input type="submit" value="수정하기">
	                </form>
	                <form action="/DeletePost/${communityDetail.c_seq}" method="post">
	                    <input type="hidden" name="c_seq" value="${communityDetail.c_seq}">
	                    <input type="hidden" name="u_id" value="${communityDetail.u_id}">
	                    <input type="submit" value="삭제하기">
	                </form>
				<% 
					}				
				%>
        <footer>
        </footer>
    </body>

</html>