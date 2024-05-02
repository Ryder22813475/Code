<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.sql.*" %>
<html>
<%
session.invalidate(); 
response.sendRedirect("AssertionData.jsp");
%>	
</html>