<%@ page language="java" import="com.library.dao.LibrarianDao" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="l" class="com.library.bean.Librarian"></jsp:useBean>
<jsp:setProperty property="*" name="l"/>
<%
int i = LibrarianDao.save(l);

if(i>0)
	response.sendRedirect("view-librarian.jsp");
else
	response.sendRedirect("admin-success.jsp");
%>