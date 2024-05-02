<!DOCTYPE html><html>
   <head><title>登入驗證</title><meth charset="utf-8"/></head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.*,java.text.*,java.io.*,java.sql.*"%>
<%@ page import="java.util.Date"%>
  <body>
     <%
Date date=new Date();
SimpleDateFormat sdf=new SimpleDateFormat("yyyy年MM月dd日H點mm分");
String time = sdf.format(date);
           String Answer = (String)session.getAttribute("Answer");
           String user = (String)session.getAttribute("user");
           String pwd = (String)session.getAttribute("pwd");


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
                 String sql="insert into answer (Answer,user,pwd,time)  values (?,?,?,?)";
                 PreparedStatement pst2  = connection.prepareStatement( sql );
                 pst2.setString(1,Answer);
                 pst2.setString(2,user);
                 pst2.setString(3,pwd);
                 pst2.setString(4,time);
                 pst2.executeUpdate();
           pst2.close(); connection.close();
           response.sendRedirect("QQtest.jsp");
%>