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
		out.print("카드를 잘 뽑아서 극딜!!!");
		out.print("<br>");
		out.print("레이드 클리어!!!");
		out.print("<br>");
		out.print("보유골드 : 3000 골드");
		out.print("<br>");
		out.print("컨텐츠를 선택하세요");
		out.print("<br>");
		%>
		<br>
		<a href = "Game02-2-2-end.jsp">1. 무기 강화를 한다 => 클리어 보상 : 무기가 19강에서 20강이 승급</a><br>
		<a href = "Game02-2-2.jsp">2. 방어구 강화를 한다 => 클리어 보상 : 방어구가 19강에서 20강으로 승급</a><br>
</body>
</html>