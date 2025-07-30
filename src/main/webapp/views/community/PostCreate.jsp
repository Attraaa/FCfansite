<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%
	String userID = (String) session.getAttribute("userID");
	String userName = (String) session.getAttribute("userName");
 %>
<html>
    <head>
        <title>글 작성</title>
		<script src="/script/jquery-3.7.1.js"></script>
        <script type="text/javascript">
            $(function(){
                let frm = $("#frm");
                let c_title = $("#c_title");
                let c_contents = $("#c_contents");


                $("#submitBtn").click(function(){
                    if(c_title.val()==""){
                        alert("제목을 입력해주세요");
                        c_title.focus();
                        return false;
                    }
                    if(c_contents.val()==""){
                        alert("내용을 입력해주세요");
                        c_contents.focus();
                        return false;
                    }
                    frm.attr("method", "post");
                    frm.attr("action","/SavePost");
                    frm.submit();
                })
            })
        </script>
    </head>
    <body>
        <header id="header">
            <h1>글 작성</h1><hr>
        </header>
        <main>
            <form name="frm" id="frm">
                <h2>제목</h2>
                <input type="text" name="c_title" id="c_title">
                <h2>내용</h2>
                <textarea name="c_contents" id="c_contents" rows="10" cols="100" maxlength="2500"></textarea>
				<input type="hidden" name="u_id" value=<%=userID %>>
				<input type="hidden" name="u_name" value=<%=userName %>>
                <button type="submit" name="submitBtn" id="submitBtn">작성</button>
                <input type="button" name="back" value="뒤로가기" onClick="location.href=CommunityMain"> 
            </form>
                

            </div>


        </main>
    <footer></footer>
    </body>

</html>