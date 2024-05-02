<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
</head>
<body>
 <%  
 String user=(String)session.getAttribute("user");
 String sql = null;
 Statement stt = null;
 ResultSet rst = null;

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

 stt=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
 sql="select * from answer where user = \'" +user+ "\' ";
 rst = stt.executeQuery(sql);
 rst.last();
 int nRowCountT=rst.getRow();
 if (nRowCountT>0){
 session.setAttribute("QUERYT",rst);
 session.setAttribute("ROWCOUNTT",Integer.toString(nRowCountT));
 response.sendRedirect("TestManagement.jsp");
 }else
 response.sendRedirect("nonTestManagement.jsp");
 %>
</body>
</html>