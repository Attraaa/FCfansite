<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="java.util.List, net.aisw.dto.communityDTO" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% List<communityDTO> communityList = (List<communityDTO>) session.getAttribute("communityInfo"); %>
<html>
    <head>
        <title>글내용</title>
        <script src="/script/jquery-3.7.1.js"></script>
        <script type="text/javascript">
            $(function(){
                let frm = $("#please");
                let editedTitle = $("#c_title");
                let editedContents = $("#c_contents");

                frm.submit(function(){
                    if(editedTitle.val()==""){
                        alert("제목을 입력해주세요");
                        editedTitle.focus();
                        return false;
                    }
                    if(editedContents.val()==""){
                        alert("내용을 입력해주세요");
                        editedContents.focus();
                        return false;
                    }
                    frm.attr("method", "post");
                    frm.attr("action","/EditPostSubmit/${communityDetail.c_seq}");
                    frm.submit();
                })
            })
        </script>

    </head>
    <body>
        <header id="header">
            <h1>게시글 내용</h1><hr>
        </header>
        <main>
            <h2>게시글</h2>
            <div class="article_detail">
                
                <form id=please action="/EditPostSubmit/${communityDetail.c_seq}" method="Post">
                    <table>
                        <tr>
                            <th>제목</th>
                            <td><textarea id="c_title" name="c_title">${communityDetail.c_title}</textarea></td>
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
                            <td><textarea id="c_contents" name="c_contents">${communityDetail.c_contents}</textarea></td>
                        </tr>
                    </table>
                        <input type="submit" value="수정하기">
                </form>
                <form action="/CommunityMain" method="get">
                    <input type="submit" value="돌아가기" >
                </form>
        <footer>
        </footer>
    </body>

</html>