<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	DB에 저장된 검색 데이터를 여기에서 출력 되게 해보자<br>
	<%
		// 여기는 자바 소스가 들어가는 위치
		// 여기서 데이터베이스를 연결해서 데이터를 꺼내서 출력하면 될 것
		final String driver = "org.mariadb.jdbc.Driver";
        final String DB_IP = "localhost";
        final String DB_PORT = "3307";
        final String DB_NAME = "mydb";
        final String DB_USER = "root";
        final String DB_PASS = "1234";
        final String DB_URL = "jdbc:mariadb://" + DB_IP + ":" + DB_PORT + "/" + DB_NAME;


        Connection conn = null; // 디비 연결
        PreparedStatement pstmt = null; // 쿼리 생성
        ResultSet rs = null; // select하고 나서 나오는 결과값
        String sql = "SELECT * FROM tb_search";

        try
        {
            Class.forName(driver); // 마리아 디비 JDBC 라이브러리
            conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);
            if (conn != null)
            {
                System.out.println("DB 접속 성공");
                pstmt = conn.prepareStatement(sql);
                rs = pstmt.executeQuery();

                while (rs.next())
                {
                    String search = rs.getString("search");
                    String createAt = rs.getString("create_at");
                    out.println(search + "<br>");
                    out.println(createAt + "<br>");
                    System.out.println(search);
                    System.out.println(createAt);
                }
            }

        }
        catch (ClassNotFoundException e)
        {
            System.out.println("드라이버 로드 실패");
            e.printStackTrace();
        }
        catch (Exception e)
        {
            System.out.println("데이터 삽입 실패");
            e.printStackTrace();
        }
        finally
        {
            try
            {
                if (pstmt != null && !pstmt.isClosed())
                {
                    pstmt.close();
                }
            }
            catch (Exception e2)
            {
                e2.printStackTrace();
            }
        }
	%>
	
	
</body>
</html>

