<!DOCTYPE html><html>
   <head><title>登入驗證</title><meth charset="utf-8"/></head>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
  <body>
     <%
String user=(String)session.getAttribute("user");
String password=(String)session.getAttribute("password");
       response.sendRedirect("ForumSetKey.jsp");
%>