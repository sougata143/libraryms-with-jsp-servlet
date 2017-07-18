<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="/css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="/css/style.css">        
<title>Add Book</title>


</head>
<body>

<h1 class="text-center jumbotron">Library Management System</h1>

<nav>
        <div class="container">
            <div class="nav navbar-nav">
                    <a href="librarian-success.jsp" class="navbar-brand">Home</a>
            </div>
        <ul class="nav navbar-nav navbar-right">
                	<li class="active"><p style="font-weight: bold; color:#fff;" class="navbar-text">
                                Hello, Librarian <%=session.getAttribute("name")%></p></li>
                	<li><a href="../logout.jsp">Logout</a></li>
                </ul>
        </div>
</nav>
               
        
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <h3 class="page-header text-center">Menu</h3>
                    <ul class="list-group">
                        <li class="list-group-item text-center"><a href="books-form.jsp">ADD NEW BOOK</a></li>
                        <li class="list-group-item text-center"><a href="view-books.jsp">VIEW ALL BOOKS</a></li>
                        <li class="list-group-item text-center"><a href="issue-books-form.jsp">ISSUE BOOK</a></li>
                        <li class="list-group-item text-center"><a href="view-issued-books.jsp">VIEW ISSUED BOOKS</a></li>
                        <li class="list-group-item text-center"><a href="return-book-form.jsp">RETURN BOOK</a></li>
                 	</ul>
                    
                    
                </div>
                <div class="col-sm-1"></div>
                <div class="col-lg-6">
                    <h1 class="page-header">Add Book</h1>
                    <form name="form" action="add-book.jsp" method="post" >
                    	<div class="form-group">
                            <label>Call No</label>
                            <input type="text" name="callno" class="form-control">
                        </div>
                    	<div class="form-group">
                            <label>Name</label>
                            <input type="text" name="name" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Author</label>
                            <input type="text" name="author" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Publisher</label>
                            <input type="text" name="publisher" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Quantity</label>
                            <input type="text" name="quantity" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Issued</label>
                            <input type="number" name="issued" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Issued Date</label>
                            <input type="text" name="addeddate" class="form-control">
                        </div>
                        <input type="submit" class="btn btn-primary" value="Submit">   
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