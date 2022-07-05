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
		out.print("리퍼를 선택하셨습니다."); // 웹브라우저 화면에 출력
		out.print("<br>");
		out.print("레이드 보스 몹을 선택하세요");
		out.print("<br>");
		%>
		<a href = "Game02-1-1.jsp">1. 발탄(공격력 : 100 / 방어력 : 100) => 클리어 보상 : 1000 골드</a><br>
		<a href = "Game02-1-end.jsp">2. 쿠크세이튼(공격력 : 200 / 방어력 : 50) => 클리어 보상 : 2500 골드</a><br>
</body>
</html>