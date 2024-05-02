<!DOCTYPE html><html>
   <head><title>登入驗證</title><meth charset="utf-8"/></head>
   <%@ page contentType="text/html;charset=utf-8" import="java.sql.*" %>
  <body>
     <%
            String user=request.getParameter("user");
            String pwd=request.getParameter("pwd");


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

            PreparedStatement ps = connection.prepareStatement("select * from member where user=?");
            ps.setString(1,user);
            ResultSet rs = ps.executeQuery();

            if (rs.next()){
                String realPwd = rs.getString("pwd");
            if (realPwd.equals(pwd)){
                String name  =rs.getString("name");
                session.setAttribute("name",name);
                session.setAttribute("user",user);
                session.setAttribute("pwd",pwd);
                response.sendRedirect("home.jsp");
            }
            else{
            response.sendRedirect("loging.html");
            rs.close(); rs.close(); connection.close();
            }
            }
            else{
            response.sendRedirect("loging.html");
            }

%>
</html>