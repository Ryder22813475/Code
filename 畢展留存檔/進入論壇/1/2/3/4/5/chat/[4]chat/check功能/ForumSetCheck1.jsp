<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
</head>
<%

     String pwd = null;
     String user = null;
     String id = null;
     user=(String)session.getAttribute("user");
     pwd=(String)session.getAttribute("pwd");
     id=(String)session.getAttribute("id");

Boolean save = Boolean.valueOf(request.getParameter("save"));
boolean saves = save.booleanValue();

if(pwd==null){
		response.sendRedirect("loging.html");
}
else{
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

       PreparedStatement ps = conn.prepareStatement("update userchat set checkSave=? where user=? and id=?");
       ps.setBoolean(1,saves);
       ps.setString(2,user);
       ps.setString(3,id);
       try{
           ps.executeUpdate();
       }catch(Exception e){
           out.println(e.getMessage() );
       }
       ps.close(); conn.close();
 response.sendRedirect("ForumSetChatView.jsp");
}
%>
<body>

</body>

</html>