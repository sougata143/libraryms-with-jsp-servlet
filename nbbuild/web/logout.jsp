<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%

session.removeAttribute("id");
session.removeAttribute("name");
session.removeAttribute("password");
session.removeAttribute("email");

response.sendRedirect("index.jsp");

%>