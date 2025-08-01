<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<link rel="stylesheet" href="css/player/playerRank.css">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.0/chart.umd.min.js"></script>
		
	</head>
	<body>
		
		<div class="logo">
				<a href="/index"><img src="/image/logo.png" alt="맨체스터 시티 엠블럼"></a>
		</div>
		
	   
	   <canvas id="chart"></canvas>
		
	   <script>
			const players = [
				<c:forEach var="player" items="${playerList}" varStatus="status">
				{
					name: "${player.p_name}",
					rating: "${player.p_rating}",
				}<c:if test="${!status.last}">,</c:if>
				</c:forEach>
				];
			const player_names = players.map(p => p.name);
			const player_ratings = players.map(p => p.rating);
	   		const chart = document.getElementById("chart");

	   			let myChart = new Chart(chart, {
	   			    type : 'bar',
	   			    data : {
	   			        labels : player_names,
	   			        datasets : [
	   			            {
	   			                label : '선수 인기 랭킹',
	   			                data: player_ratings,
	   			            }
	   			        ]
	   			    }
	   			});
	   		</script>
	</body>
</html>