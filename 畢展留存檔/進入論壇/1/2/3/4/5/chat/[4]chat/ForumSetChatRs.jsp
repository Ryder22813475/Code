<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
</head>
<body>
 <%
 String id = (String)session.getAttribute("id");  
 String user=(String)session.getAttribute("user");
 String sql = null;
 Statement st4 = null;
 ResultSet rs4 = null;

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

 st4=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
 sql="select * from chat where cid = \'" +id+ "\' ";
 rs4 = st4.executeQuery(sql);
 rs4.last();
 int nRowCount4=rs4.getRow();
 if (nRowCount4>0){
 session.setAttribute("QUERY4",rs4);
 session.setAttribute("ROWCOUNT4",Integer.toString(nRowCount4));
 session.setAttribute("ID",id);
 response.sendRedirect("ForumSetChatView.jsp");
 }else
 response.sendRedirect("ForumSetChatNone.jsp");
 %>
</body>
</html>