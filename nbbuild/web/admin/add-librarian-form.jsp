<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="../css/style.css">        
<title>Add Librarian</title>

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
                <div class="col-lg-3">
                    <h3 class="page-header text-center">Menu</h3>
                    <ul class="list-group">
                        <li class="list-group-item text-center"><a href="add-librarian.jsp">ADD NEW LIBRARIAN</a></li>
                        <li class="list-group-item text-center"><a href="view-librarian.jsp">VIEW ALL LIBRARIAN</a></li>
                        
                 	</ul>
                    
                </div>
                <div class="col-sm-1"></div>
                <div class="col-lg-6">
                    <h1 class="page-header">Add Librarian</h1>
                    <form name="form" action="add-librarian.jsp" method="post" >
                    	<div class="form-group">
                            <label>Name</label>
                            <input type="text" name="name" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" name="password" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Email</label>
                            <input type="email" name="email" id="email" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Address</label>
                            <input type="text" name="address" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Select City</label>
                            <select name="city" class="form-control">
                               <option value="">--select city--</option>
                               <option value="kolkata">KOLKATA</option>
                               <option value="delhi">DELHI</option>
                               <option value="mumbai">MUMBAI</option>
                               <option value="chennai">CHENNAI</option>
                               <option value="port blair">PORT BLAIR</option>
                               </select>
                        </div>
                        <div class="form-group">
                            <label>Contact No.</label>
                            <input type="number" name="contact" class="form-control">
                        </div>
                        
                        <input type="submit" class="btn btn-primary" value="Submit" >   
                        <input type="reset" class="btn btn-warning" value="reset">
            
                    </form>
                </div>                
            </div>
        </div>
        <div style="height: 50px;"></div>
        <div class="text-center footer" style="">
            &copy;  2016 Sougata Roy
        </div>


</body>
</html>