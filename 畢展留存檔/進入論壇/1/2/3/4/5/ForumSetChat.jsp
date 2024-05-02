<html>
<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*"%>
</head>
<body>
<% 
String user=(String)session.getAttribute("user");
String id = request.getParameter("id");
session.setAttribute("id",id);

 String sql = null;
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

    Statement st3=conn.createStatement();
    String strQuery3 = "SELECT * FROM currentcontent where id = \'" +id+ "\' ";
    ResultSet rs3 = st3.executeQuery(strQuery3);
if(rs3.next()){
 session.setAttribute("QUERY3",rs3);
}
    response.sendRedirect("ForumSetChatRs.jsp");
%>
</form>
</html>