<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <% 
if(session.getAttribute("id") == "" || session.getAttribute("id") == null) {
	session.setAttribute("flash_msg", "Please Signin to view content!");
	response.sendRedirect("index.jsp");
} 
%>
<%@page import="java.sql.*" %>
<%

Connection con = null;
PreparedStatement pst = null;
ResultSet rs = null;

String url = "jdbc:mysql://localhost:3306/library";
String sql = "SELECT * FROM librarian";

int flag= 0;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection(url, "hbstudent", "hbstudent");

pst = con.prepareStatement(sql);
rs = pst.executeQuery();

%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Management System</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="../css/style.css">		
        <script>
		var request=new XMLHttpRequest();
            function confirm_delete() {
                return confirm("Are you sure want to delete?");
            }
            
            
        </script>
</head>
<body>
<h1 class="text-center jumbotron">Library Management System</h1>

<nav>
        
        <div class="container">
            <div class="nav navbar-nav">
                    <a href="admin-success.jsp" class="navbar-brand">Home</a>
            </div>
        <ul class="nav navbar-nav navbar-right">
                	<li class="active"><p style="font-weight: bold; color:#fff;" class="navbar-text">
                                Hello, Admin <%=session.getAttribute("name")%></p></li>
                	<li><a href="../logout.jsp">Logout</a></li>
                </ul>
        </div>
        
        </nav>
               
        
        <div class="container">
            <div class="row">
                <div class="col-lg-2">
                    <h3 class="page-header text-center">Menu</h3>
                    <ul class="list-group">
                        <li class="list-group-item text-center"><a href="add-librarian-form.jsp">ADD NEW LIBRARIAN</a></li>
                        <li class="list-group-item text-center"><a href="view-librarian.jsp">VIEW ALL LIBRARIAN</a></li>
                        
                 	</ul>
                    
                </div>
                <div class="col-lg-1"></div>
                <div class="col-lg-9">
                    <h1 class="page-header">Librarians</h1>
                    <table class="table table-hover table-bordered">
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Password</th>
                            <th>Email</th>
                            <th>Address</th>
                            <th>City</th>
                            <th>Contact</th>
                            <th>Action</th>
                        </tr>
                        <% while(rs.next()) { %>
                        <tr>
                            <td><%=rs.getString("id") %></td>
                            <td><%=rs.getString("name") %></td>
                            <td><%=rs.getString("password") %></td>
                            <td><%=rs.getString("email") %></td>
                            <td><%=rs.getString("address") %></td>
                            <td><%=rs.getString("city") %></td>
                            <td><%=rs.getString("contact") %></td>
                            <td>
                            	<a class="btn btn-success btn-sm" href="update-librarian-form.jsp?id=<%=rs.getInt("id")%>">Update</a>
                                <a class="btn btn-warning btn-sm" onclick="return confirm_delete()" href="delete-librarian.jsp?id=<%=rs.getInt("id")%>">delete</a>
                           	</td>
                        </tr>
                        <% } %>
                    </table>
                </div>
			</div>
            
            
        </div>
        
        
        <div style="height: 30px;"></div>
        <div class="text-center footer" style="">
            &copy;  2016 Sougata Roy
        </div>
</body>
</html>