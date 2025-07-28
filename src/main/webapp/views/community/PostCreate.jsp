<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
    <head>
        <link rel="stylesheet" href="/css/index.css">
        <link rel="stylesheet" href="/css/reset.css">
        <title>Document</title>
    </head>
    <body>
        <header id="header">
            <h1>글 작성</h1><hr>
        </header>
        <main>
            <form action="/PostCreate" method="get">
                <h2>제목</h2>
                <input type="text" name="title" id="title">
                <h2>내용</h2>
                <textarea name="content" id="content" rows="10" cols="100" maxlength="2500"></textarea>
                <button type="submit">작성</button>
            </form>
                

            </div>


        </main>
    <footer></footer>
    </body>

</html>