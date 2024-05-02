<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
</head>
<body>
 <%  
 String user=(String)session.getAttribute("user");
 String Answer = request.getParameter("answer");
 session.setAttribute("Answer", Answer);
 response.sendRedirect("Qotest.jsp");
 %>
</body>
</html>