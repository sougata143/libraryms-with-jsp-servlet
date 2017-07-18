<%@ page language="java" import="com.library.dao.BookDao" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="b" class="com.library.bean.Book"></jsp:useBean>
<jsp:setProperty property="*" name="b"/>
<%
int i = BookDao.save(b);
if(i>0)
	response.sendRedirect("view-books.jsp");
else
	response.sendRedirect("librarian-success.jsp");
%>