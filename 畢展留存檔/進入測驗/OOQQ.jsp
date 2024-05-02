<htmL>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
    <%--<%@ taglib uri="/struts-tags" prefix="s"%>--%>
    <%
    try{
    String Q0 = request.getParameter("Q0");
    String Q1 = request.getParameter("Q1");
    String Q2 = request.getParameter("Q2");
    String Q3 = request.getParameter("Q3");
    String Q4 = request.getParameter("Q4");
    String Q5 = request.getParameter("Q5");
    String Q6 = request.getParameter("Q6");
    String Q7 = request.getParameter("Q7");
    session.setAttribute("Q0", Q0);
    session.setAttribute("Q1", Q1);
    session.setAttribute("Q2", Q2);
    session.setAttribute("Q3", Q3);
    session.setAttribute("Q4", Q4);
    session.setAttribute("Q5", Q5);
    session.setAttribute("Q6", Q6);
    session.setAttribute("Q7", Q7);
    session.removeAttribute("Answer");
    response.sendRedirect("QQtest.jsp");
	}catch(Exception e){ 
		response.sendRedirect("Go.jsp");
	}
    %>
</htmL>