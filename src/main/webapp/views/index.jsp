<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%
	String userID = (String) session.getAttribute("userID");
	String history_none = (String) session.getAttribute("history_none");
	
	String h_title = (String) request.getAttribute("h_title");
	String h_date = String.valueOf(request.getAttribute("h_date"));
	String h_content = (String) request.getAttribute("h_content");
	String h_photo = (String) request.getAttribute("h_photo");
%>
<html>
    <head>
        <link rel="stylesheet" href="/css/index.css">
        <link rel="stylesheet" href="/css/reset.css">
        <title>Document</title>
    </head>
    <body>
		
        <header id="header">
            <div class="menu">
                <div class="logo">
                    <a href="/index"><img src="/image/logo.png" alt="맨체스터 시티 엠블럼"></a>
                </div>
                <ul class="menu_ul">
                    <li class="li_1"><a href="/player">선수</a></li>
                    <li class="li_2"><a href="#">구단</a></li>
                    <li class="li_3"><a href="/CommunityMain">커뮤니티</a></li>
                    <li class="li_4"><a href="#">컨텐츠</a></li>
                </ul>
                <div class="profile">
                    <img src="/image/profile.png" alt="프로필 이미지">
                    <div class="profile_menu">
						
                        <ul>
							<% 
								if(userID == null) {	
							%>
                            <li><a href="/login">로그인</a></li>
                            <li><a href="/register">회원가입</a></li>
							<%
								} else {
							%>
							<li><a href="/mypage/response">마이페이지</a></li>
							<li><a href="/logout">로그아웃</a></li>
							<%
								}
							%>

                        </ul>
                    </div>
                </div>
            </div>
            <div class="sub_menu">
				<a href="/playerRank">선수 인기 순위</a>
            </div>
			<div class="dim"></div>
			<% if (h_title != null && userID != null && history_none != "yes") { %>
            <div class="dimLayer"></div>
				<div id="historyPopup">
					<button class="close_btn">✖</button>
				    <p class="title">${diffYear}년 전 오늘</p>
				    <h3><%= h_title %></h3>
				    <p class="h_content"><%= h_content %></p>
				    <img src="<%= h_photo %>" alt="역사 이미지">
				</div>
			<% } %>	
        </header>
        <aside id="aside_left">
            <div class="slide">
                <img src="/image/haaland.png" alt="슬라이드 사진1">
            </div>
        </aside>
        <section>
            <div class="news n1"></div>
            <div class="news n2"></div>
            <div class="news n3"></div>
            <div class="news n4"></div>
            <div class="news n5"></div>
            <div class="news n6"></div>
        </section>
        <aside id="aside_right">
            리그 테이블이 들어갈 공간
        </aside>
		<footer></footer>
        
        <script src="/script/index.js"></script>
    </body>
    
</html>