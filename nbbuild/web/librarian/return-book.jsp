<%@page import="com.library.dao.DB"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.library.bean.IssueBook"%>
<%@ page language="java" import="com.library.dao.IssueBookDao" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="com.library.bean.Book" %>
<%
String callno = request.getParameter("callno");
String studentid = request.getParameter("studentid");

String sql = "delete from issuebooks where studentid=?";
IssueBook b = new IssueBook();

    Connection con = DB.getConnection();

PreparedStatement pst = con.prepareStatement(sql);
pst.setString(1, studentid);
int i = pst.executeUpdate();
System.out.print(i);
response.sendRedirect("view-issued-books.jsp");
%>