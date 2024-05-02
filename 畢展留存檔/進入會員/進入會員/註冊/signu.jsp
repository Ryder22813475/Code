<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
<%--<%@ taglib uri="/struts-tags" prefix="s"%>--%>
<%      
          request.setCharacterEncoding("utf-8");
          String user=request.getParameter("user");
          String pwd=request.getParameter("pwd");
          String name=request.getParameter("name");
          String email=request.getParameter("email");
          String country=request.getParameter("country");
          String address=request.getParameter("address");
          String phone=request.getParameter("phone");
          String ask=request.getParameter("ask");

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

         PreparedStatement pst = connection.prepareStatement("select * from member where user=?");
         pst.setString(1,user);
         ResultSet rs = pst.executeQuery();
         if ( rs.next())
               out.println("帳號已經存在");
         else{
             String sql="insert into member (user,pwd,name,email,country,address,phone,ask)  values (?,?,?,?,?,?,?,?)";
             PreparedStatement pst2  = connection.prepareStatement( sql );
             pst2.setString(1,user);
             pst2.setString(2,pwd);
             pst2.setString(3,name);
             pst2.setString(4,email);
             pst2.setString(5,country);
             pst2.setString(6,address);
             pst2.setString(7,phone);
             pst2.setString(8,ask);
             pst2.executeUpdate();
    rs.close(); pst.close(); connection.close();
    session.setAttribute("user",user);
    session.setAttribute("pwd",pwd);
    response.sendRedirect("home.jsp");
}
%>