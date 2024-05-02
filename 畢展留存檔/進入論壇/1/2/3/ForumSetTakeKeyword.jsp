<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
</head>
<body>
 <%
try{
 String sKwd=request.getParameter("keyword");
 String sql = null;
 Connection con = null;
 Statement st = null;
 ResultSet rs = null;

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

    Statement st2=conn.createStatement();
    String strQuery2 = "SELECT COUNT(title like \'%海龜%\' or null),COUNT(title like \'%塑膠%\' or null) ,COUNT(title like \'%海洋%\' or null) ,COUNT(title like \'%環保%\' or null) ,COUNT(title like \'%綠蠵龜%\' or null) ,COUNT(title like \'%減塑%\' or null) ,COUNT(title like \'%赤蠵龜%\' or null) FROM currentcontent";
    ResultSet rs2 = st2.executeQuery(strQuery2);
if(rs2.next()){
 session.setAttribute("QUERYS2",rs2);
}

 st=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
 sql="select * from currentcontent where title like \'%" +sKwd+ "%\'";
 rs = st.executeQuery(sql);
 rs.last();
 int nRowCount=rs.getRow();
 if (nRowCount>0){
 session.setAttribute("QUERY",rs);
 session.setAttribute("ROWCOUNT",Integer.toString(nRowCount));
 session.setAttribute("KEYWORD",sKwd);
 response.sendRedirect("ForumSetView.jsp");
 }else
 response.sendRedirect("ForumSetKeywordNone.jsp");
}catch(Exception e){
            response.sendRedirect("ForumSet.jsp");
       }
 %>
</body>
</html>