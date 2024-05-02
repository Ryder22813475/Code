<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
</head>
<body>
 <%  
 String user=(String)session.getAttribute("user");
 String sql = null;
 Statement std = null;
 ResultSet rsd = null;

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
 Connection conn = DriverManager.getConnection(url);

 std=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
 sql="select * from chat where user = \'" +user+ "\' ";
 rsd = std.executeQuery(sql);
 rsd.last();
 int nRowCountD=rsd.getRow();
 if (nRowCountD>0){
 session.setAttribute("QUERYD",rsd);
 session.setAttribute("ROWCOUNTD",Integer.toString(nRowCountD));
 response.sendRedirect("ChatManagement.jsp");
 }else
 response.sendRedirect("nonChatManagement.jsp");
 %>
</body>
</html>