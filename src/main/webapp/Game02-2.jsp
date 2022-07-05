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
		out.print("아르카나를 선택하셨습니다."); // 웹브라우저 화면에 출력
		out.print("<br>");
		out.print("레이드 보스 몹을 선택하세요");
		out.print("<br>");
		%>
		<a href = "Game02-2-1.jsp">1. 아브렐슈드(공격력 : 1000 / 방어력 : 1000) => 클리어 보상 : 3000 골드</a><br>
		<a href = "Game02-2-end.jsp">2. 비아키스(공격력 : 500 / 방어력 : 300) => 클리어 보상 : 1500 골드</a><br>
</body>
</html>