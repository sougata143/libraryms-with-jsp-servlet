<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="../css/style.css">
<title>Insert title here</title>
<script>
            function authenticate() {

                var email = document.getElementById("email").value;
                var password = document.getElementById("password").value;
                
                function validate(){
                	 
                    var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

                    if (reg.test(email.value) == false) 
                    {
                        alert('Invalid Email Address');
                        return false;
                    }
                    if(password.length<6){
                    	alert('Password Should Be Greater Than 6 Characters');
                    	return false;
                    }

                }             
                
                
            }    
        </script>


</head>
<body>

<h1 class="text-center jumbotron">Library Management System</h1>
               
   		<div class="container">
   		<% if(session.getAttribute("flash_msg") != "" && session.getAttribute("flash_msg") != null) { %>
   			<div class="alert alert-warning text-center">Alert! <%=session.getAttribute("flash_msg")%></div>
  		<% session.removeAttribute("flash_msg"); } %>
   		</div>
        <div class="container" style="width:350px;">
            <h3 class="page-header">Librarian Signin</h3>
            <form action="librarian-login.jsp" method="post">
                <div class="form-group">
                    <label>Enter Email</label>
                    <input type="text" id="email" name="email" class="form-control">
                </div>
                <div class="form-group">
                    <label>Enter Password</label>
                    <input type="password" id="password" name="password" class="form-control">
                </div>
                <input type="submit" value="Login" onclick="return authenticate()" class="btn btn-primary">
                
            </form>
        </div>
        
        
        <div style="height: 30px;"></div>
        <div class="text-center footer" style="">
            &copy;  2016 Sougata Roy
        </div>
    

</body>
</html>