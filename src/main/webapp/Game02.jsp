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
		String player = request.getParameter("player");
		out.println(player + "님 아크라시아에 오신 걸 환영합니다."); // 웹브라우저 화면에 출력
		%>
		<br>
		<br>
		<% 
		out.println(player + "님 캐릭터를 선택해 주세요.");
		%>
		
		
		<br>
		<br>
		<a href = "Game02-1.jsp">1. 리퍼(암살자)</a><br>
		<a href = "Game02-2.jsp">2. 아르카나(카드쓰는 마법사)</a><br>
		<a href = "Game02-3.jsp">3. 바드(힐러)</a><br>
</body>
</html>