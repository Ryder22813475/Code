<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
<%
 try{
 String sql = null;
 Statement stmt = null;
 ResultSet rs = null;
		String driverName = "com.mysql.jdbc.Driver";
		//資料庫使用者名稱 
		String userName = "hiturtle_shuics_";
		//密碼 
		String userPasswd = "HeFJYDAj4kDPMrMN";
		//資料庫名 
		String dbName = "hiturtle_shuics_";
		//聯結字串 
		String url = "jdbc:mysql://localhost:3306/" + dbName + "?user="
				+ userName + "&password=" + userPasswd;
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		Connection con = DriverManager.getConnection(url);
	stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	sql = "SELECT * FROM test_create";
	rs = stmt.executeQuery(sql);
	rs.last();
	int nRowCount = rs.getRow();  //查詢結果數量
	if(nRowCount > 0){   
		session.setAttribute("QUERY", rs);
		session.setAttribute("ROWCOUNT", Integer.toString(nRowCount));
		response.sendRedirect("Qtest.jsp");
	}else{
		out.print("查詢 :沒有符合的資料");
	}
      }catch(Exception e){ 
		response.sendRedirect("frontpage.jsp");
	}
%>
</body>
</html>