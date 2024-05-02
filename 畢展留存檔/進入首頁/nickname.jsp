<%
 String user= request.getParameter("user");
 session.setAttribute("user", user);
 response.sendRedirect("home.jsp");
%>