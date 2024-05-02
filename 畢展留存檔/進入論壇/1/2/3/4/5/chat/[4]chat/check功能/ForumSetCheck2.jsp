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
 String userName = "hiturtle_shuics_";
 String userPasswd = "HeFJYDAj4kDPMrMN";
 String dbName = "hiturtle_shuics_";
 String url = "jdbc:mysql://localhost:3306/" + dbName + "?user="
         + userName + "&password=" + userPasswd;
 Class.forName("com.mysql.jdbc.Driver").newInstance();

 Connection conn = DriverManager.getConnection(url);
 PreparedStatement ps = conn.prepareStatement("select * from userchat where user=? and id=?");
         ps.setString(1,user);
         ps.setString(2,id);
         ResultSet rs = ps.executeQuery();
         if ( rs.next())
               out.println("錯誤");
else{
 String sql="insert into userchat (user,checkSave,id) values (?,?,?)";
 PreparedStatement ps2  = conn.prepareStatement( sql );
       ps2.setString(1,user);
       ps2.setBoolean(2,saves);
       ps2.setString(3,id);
       try{
           ps2.executeUpdate();
       }catch(Exception e){
           out.println(e.getMessage() );
       }
       ps.close(); conn.close();rs.close();ps2.close();
}
}
 response.sendRedirect("ForumSetChatView.jsp");
%>
<body>

</body>

</html>