<html>
<%@ page contentType="text/html;charset=utf-8" import="java.sql.*" %>
<%
       String user    = (String)session.getAttribute("user");
       String cid    = (String)session.getAttribute("cid");
       String title     = request.getParameter("title");
       String content     = request.getParameter("content");
       String source     = request.getParameter("source");

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
       
       PreparedStatement ps = connection.prepareStatement("update currentcontent set title=?,content=?,source=?  where id=?");
       ps.setString(1,title);
       ps.setString(2,content);
       ps.setString(3,source);
       ps.setString(4,cid);
       try{
           ps.executeUpdate();
       }catch(Exception e){
           out.println(e.getMessage() );
       }
       ps.close(); connection.close();
 response.sendRedirect("caForumManagement.jsp");
%>

</html>
