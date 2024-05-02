<!DOCTYPE html><html>
   <head><title>登入驗證</title><meth charset="utf-8"/></head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
  <body>
     <%
            String chat = request.getParameter("chat");
            String id=(String)session.getAttribute("id");
            String user=(String)session.getAttribute("user");
            if(user == null || "".equals(user)){
            user="小布";
            }

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

             String sql="insert into chat (chat,user,cid)  values (?,?,?)";
             PreparedStatement pst  = con.prepareStatement( sql );
             pst.setString(1,chat);
             pst.setString(2,user);
             pst.setString(3,id);
       try{
           pst.executeUpdate();
       }catch(Exception e){
           out.println(e);
       }
       pst.close();
       response.sendRedirect("ForumSetReload.jsp");
%>
