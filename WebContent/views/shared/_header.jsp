<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<link rel="stylesheet" href="content/css/bootstrap.min.css">
	<link rel="stylesheet" href="content/css/style.css" >
	<!--FONT-AWESOME CSS-->
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
	<script src="content/js/jquery.min.js"></script>
	<script src="content/js/bootstrap.min.js"></script>
	
	
	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top">
	    <div class="container">
	        <!-- Nav -->
	        <div class="navbar-header">
	            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#menu">
	                <span class="sr-only">Toggle navigation</span>
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span>
	            </button>
	            <a class="navbar-brand" href="Home">DPA Web Application</a>
	        </div>
	        <!-- Nav collapse -->
	        <div class="collapse navbar-collapse" id="menu">
	           <ul class="nav navbar-nav">
					<li class="active"><a href="#">Link</a></li>
					<li><a href="#">Link</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Link<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">Link</a></li>
							<li class="divider"></li>
							<li><a href="#">Link</a></li>
						</ul>
					</li>
					<li><a href="Contact">Contact</a></li>
					<li><a href="About">About us</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right" style="margin-right:10px">
					<%if(session.getAttribute("username") != null){%>
	                	<li><b style="color: red">Hello <%=session.getAttribute("username") %></b>
						<img class="img-circle"
							 src="https://freeiconshop.com/files/edd/person-flat.png"
							 style="height: 50px; width: 50px; padding: 5px;">
						</li>
						<li class="dropdown"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"><b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="#">Trang ca nhan</a></li>
								<li><a href="#">Link</a></li>
								<li class="divider"></li>
								<li><a href="LogoutServlet">Logout</a></li>
								
							</ul>
						</li>
	            	<%} else {%>
	            		<button class="btn btn-danger navbar-btn">Register</button>
	                	<a href="ShowLoginServlet" class="btn btn-info navbar-btn>Login">Login</a>
	            	<%} %>
				</ul>
	 
	        </div>
	        <!-- /.navbar-collapse -->
	    </div>
	    <!-- /.container -->
	</nav>
<!-- /Navigation -->
</head>


