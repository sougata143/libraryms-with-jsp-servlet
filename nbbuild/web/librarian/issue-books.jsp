<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" import="com.library.dao.IssueBookDao" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="com.library.bean.IssueBook, com.library.dao.DB" %>
<%
    String callno = request.getParameter("callno");
    String studentid = request.getParameter("studentid");
    String studentname = request.getParameter("studentname");
    String studentcontact = request.getParameter("studentcontact");
    String issuedate = request.getParameter("issuedate");
    
    String sql = "insert into issuebooks(bookcallno,studentid,studentname,studentcontact,issueddate) values(?,?,?,?,?)";
    
    IssueBook b = new IssueBook();
    
    Connection con = DB.getConnection();

PreparedStatement pst = con.prepareStatement(sql);
pst.setString(1, callno);
pst.setString(2, studentid);
pst.setString(3, studentname);
pst.setString(4, studentcontact);
pst.setString(5, issuedate);

int i = 0;
i = pst.executeUpdate();

if(i>0)
    response.sendRedirect("view-issued-books.jsp");
else
    response.sendRedirect("librarin-success.jsp");

%>