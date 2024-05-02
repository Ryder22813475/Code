<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
</head>
<body>
 <%  
 String user=(String)session.getAttribute("user");
 String sql = null;
 Statement stb = null;
 ResultSet rsb = null;

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

 stb=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
 sql="select * from currentcontent where user = \'" +user+ "\' ";
 rsb = stb.executeQuery(sql);
 rsb.last();
 int nRowCountB=rsb.getRow();
 if (nRowCountB>0){
 session.setAttribute("QUERYB",rsb);
 session.setAttribute("ROWCOUNTB",Integer.toString(nRowCountB));
 response.sendRedirect("ForumManagement.jsp");
 }else
 response.sendRedirect("nonForumManagement.jsp");
 %>
</body>
</html>