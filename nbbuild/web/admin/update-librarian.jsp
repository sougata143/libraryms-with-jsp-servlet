<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %>
<%@page import="com.library.bean.Librarian, com.library.dao.LibrarianDao, com.library.dao.DB" %>
<%

Connection con = null;
PreparedStatement pst = null;
ResultSet rs = null;

//String url = "jdbc:mysql://localhost:3306/library";
String sql = "update librarian set name=?,password=?,email=?,address=?,city=?,contact=? where id=?";
String id = request.getParameter("id");
String name = request.getParameter("name");
String password = request.getParameter("password");
String email = request.getParameter("email");
String address = request.getParameter("address");
String city = request.getParameter("city");
String contact = request.getParameter("contact");

//Class.forName("com.mysql.jdbc.Driver");
//con = DriverManager.getConnection(url, "hbstudent", "hbstudent");
con = DB.getConnection();

pst = con.prepareStatement(sql);
pst.setString(1, name);
pst.setString(2, password);
pst.setString(3, email);
pst.setString(4, address);
pst.setString(5, city);
pst.setString(6, contact);
pst.setString(7, id);

pst.executeUpdate();

response.sendRedirect("view-librarian.jsp");

%>