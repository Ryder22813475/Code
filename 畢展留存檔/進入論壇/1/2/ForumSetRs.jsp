<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Query:將搜尋的結果分成好幾頁顯示</title>
</head>
<body>
<%
String user=(String)session.getAttribute("user");
ResultSet rs2 = null;
rs2=(ResultSet)session.getAttribute("QUERYS2");
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
	sql = "SELECT * FROM currentcontent";
	rs = stmt.executeQuery(sql);
	rs.last();
	int nRowCount = rs.getRow();  //查詢結果數量
	if(nRowCount > 0){    //儲存於session，在導向queryBrief.jsp
		session.setAttribute("QUERY", rs);
		session.setAttribute("ROWCOUNT", Integer.toString(nRowCount));
		response.sendRedirect("ForumSetView.jsp");
	}else{
		out.print("查詢 :沒有符合的資料");
	}
%>
</body>
</html>