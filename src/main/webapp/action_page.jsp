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
	Search.jsp에서 전달된 데이터를 여기에서 출력 되게 해보자<br>
	<%
		// 여기는 자바 소스가 들어가는 위치
		String search = request.getParameter("search");
		out.print(search); // 웹브라우저 화면에 출력
		
		final String driver = "org.mariadb.jdbc.Driver";
        final String DB_IP = "localhost";
        final String DB_PORT = "3307";
        final String DB_NAME = "mydb";
        final String DB_USER = "root";
        final String DB_PASS = "1234";
        final String DB_URL = "jdbc:mariadb://" + DB_IP + ":" + DB_PORT + "/" + DB_NAME;


        Connection conn = null;
        PreparedStatement pstmt = null;
        String sql = "INSERT INTO `tb_search` (`search`) VALUES (?)";

        try
        {
            Class.forName(driver);
            conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASS);
            if (conn != null)
            {
                System.out.println("DB 접속 성공");
                pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, search);

                int result = pstmt.executeUpdate();

                if(result == 1)
                {
                    System.out.println("데이터 삽입 성공!");

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

