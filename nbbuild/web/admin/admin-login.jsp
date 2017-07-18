<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*, com.library.dao.DB" %>
<%

Connection con = null;
PreparedStatement pst = null;
ResultSet rs = null;


String sql = "SELECT * FROM admin WHERE email=? AND password=?";

String email = request.getParameter("email");
String password = request.getParameter("password");

int flag= 0;

con = DB.getConnection();

pst = con.prepareStatement(sql);
pst.setString(1, email);
pst.setString(2, password);

rs = pst.executeQuery();

while(rs.next()) {
	flag++;
}
System.out.println(flag);
if(flag > 0) {
	rs.beforeFirst();
	rs.next();
        
        session.setAttribute("id", rs.getString("id"));
	session.setAttribute("name", rs.getString("name"));
        session.setAttribute("email", rs.getString("email"));
	session.setAttribute("password", rs.getString("password"));
	
	response.sendRedirect("admin-success.jsp");
}


%>