<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 
if(session.getAttribute("id") == "" || session.getAttribute("id") == null) {
	session.setAttribute("flash_msg", "Please Signin to view content!");
	response.sendRedirect("index.jsp");
} 
%>
<!DOCTYPE html>
<html>
    <head>
        <title>All Librarians</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="../css/style.css">
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
                <h2 class="page-header text-center">Dashboard</h2>
                <div class="col-lg-4"></div>
                <div class="col-lg-4">
                    
                    <ul class="list-group">
                        <li class="list-group-item text-center"><a href="add-librarian-form.jsp">ADD NEW LIBRARIAN</a></li>
                        <li class="list-group-item text-center"><a href="view-librarian.jsp">VIEW ALL LIBRARIAN</a></li>
                        
                 	</ul>
                    
                    
                    
                </div>                
                <div class="col-lg-4"></div>                
            </div>
        </div>
        
        
        <div style="height: 30px;"></div>
        <div class="text-center footer" style="">
            &copy;  2016 Sougata Roy
        </div>
    </body>
</html>
