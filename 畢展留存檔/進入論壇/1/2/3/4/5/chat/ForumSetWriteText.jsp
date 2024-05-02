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
            String title = request.getParameter("title");
            String content = request.getParameter("content");
            String source = request.getParameter("source");
            String theme = request.getParameter("theme");
            
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

             String sql="insert into currentcontent (title,content,source,user,theme,time)  values (?,?,?,?,?,?)";
             PreparedStatement pst  = con.prepareStatement( sql );
             pst.setString(1,title);
             pst.setString(2,content);
             pst.setString(3,source);
             pst.setString(4,user);
             pst.setString(5,theme);
             pst.setString(6,time);
       try{
           pst.executeUpdate();
       }catch(Exception e){
           out.println(e);
       }
       pst.close();
       response.sendRedirect("ForumSet.jsp");
%>