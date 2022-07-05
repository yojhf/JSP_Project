<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%
		// 여기는 자바 소스가 들어가는 위치
		out.print("냥냥펀치 가렵네 ㅎㅎ");
		out.print("<br>");
		out.print("승리!");
		out.print("<br>");
		out.print("보유골드 : 3000 골드");
		out.print("<br>");
		out.print("어떤 가디언 토벌을 하시겠습니까?");
		out.print("<br>");
		%>
		<br>
		<a href = "Game02-3-3-end.jsp">1. 칼엘리고스 (전기 비둘기) => 클리어 보상 : 2000 골드</a><br>
		<a href = "Game02-3-3.jsp">2. 우르닐 (곰탱이) => 클리어 보상 : 1000 골드</a><br>
</body>
</html>