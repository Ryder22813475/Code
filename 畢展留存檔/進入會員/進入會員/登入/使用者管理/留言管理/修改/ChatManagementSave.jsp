<html>
<%@ page contentType="text/html;charset=utf-8" import="java.sql.*" %>
<%
       String user    = (String)session.getAttribute("user");
       String tid    = (String)session.getAttribute("tid");
       String chat     = request.getParameter("chat");
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
		Connection connection = DriverManager.getConnection(url);
       
       PreparedStatement ps = connection.prepareStatement("update chat set chat=? where tid=?");
       ps.setString(1,chat);
       ps.setString(2,tid);
       try{
           ps.executeUpdate();
       }catch(Exception e){
           out.println(e.getMessage() );
       }
       ps.close(); connection.close();
       response.sendRedirect("caChatManagement.jsp");
%>
</html>

