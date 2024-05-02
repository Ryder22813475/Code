<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/earlyaccess/cwtexyen.css">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.1.10/vue.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
.form{
height:80%;
top:10%;
width:60%;
left:20%;
}
#title{
height:50%
}
#content{
height:75%
}
#source{
height:50%
}
@media screen and  (max-width: 768px){ 
.form{
height:60%;
top:20%;
width:80%;
left:10%;
}
}
</style>
</head>
<body style="height:99vh;min-height:800px;width:100%;position:absolute">
   <%
try{
   String user = (String)session.getAttribute("USER");
   String tid = request.getParameter("tid");
   session.setAttribute("tid",tid);

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

   PreparedStatement ps = connection.prepareStatement("select * from chat where tid=?");
   ps.setString(1,tid);
   ResultSet rs = ps.executeQuery();
     if (rs.next()){
        String cid = rs.getString("cid");
        PreparedStatement pst = connection.prepareStatement("select * from currentcontent where id=?");
        pst.setString(1,cid);
        ResultSet rst = pst.executeQuery();
            if (rst.next()){
                %>
   <form action="ChatManagementSave.jsp" method="get">
<div class="form" style="position:absolute;background-color:#A6D9EA;font-size:1.5rem">
    <div  style="position:relative;width:60%;height:5%;margin-left:20%;margin-top:5%" >
    編號
    <%=rst.getString("id")%></div>
    <br/>
    <div  style="position:relative;width:60%;height:20%;margin:0% 20%" >
    標題<br/>
    <h1 style="font-size:1rem"><%=rst.getString("title")%></h1></div>
    <div  style="position:relative;width:60%;height:20%;margin:2.5% 20%" >
    內文<br/>
    <h1 style="font-size:1rem"><%=rst.getString("content")%></h1></div>
    <div  style="position:relative;width:60%;height:20%;margin:2.5% 20%" >
    留言內容<br/><textarea id="chat" style="font-size:1rem;position:absolute;width:100%;" type="text" name="chat"  type="text" name="source"><%=rs.getString("chat")%></textarea></div>
    <input id="submit" style="position:absolute;width:20%;height:10%;right:20%;bottom:5%;left:25%" type="submit" value="存檔"/>
    </form>
    <button style="position:absolute;width:20%;height:10%;bottom:5%;right:25%" onclick="location.href='ChatManagementEdit.jsp'">取消修改</button>
</div>
<%
               }else{
            rst.close(); pst.close(); 
            rs.close(); ps.close(); connection.close();
                 }}}
                catch(Exception e){
                   response.sendRedirect("loging.html");
                       }
%>


</body>
</html>

