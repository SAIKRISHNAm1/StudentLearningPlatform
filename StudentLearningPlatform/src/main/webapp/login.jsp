<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  		<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
  		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
		<style>
		.navbar-brand {
    	  font-weight: bold;
      	  font-size: 1.5rem;
   		 }
   		 
    </style>
	</head>
	<body>
	
	  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top ">
    <a class="navbar-brand" href="#">LearningPortal</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav mr-auto">
        <!-- Home -->
        <li class="nav-item active">
          <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
        </li>

        <!-- Description 
        <li class="nav-item">
          <a class="nav-link" href="#">Description</a>
        </li> -->

        <!-- Tutorials Dropdown -->
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="tutorialsDropdown" role="button" data-toggle="dropdown">
            Tutorials
          </a>
          <div class="dropdown-menu">
            <a class="dropdown-item" href="register.jsp">Java Full Stack</a>
            <a class="dropdown-item" href="register.jsp">Python Full Stack</a>
          </div>
        </li>
      </ul>

      <!-- Register Button -->
      <a href="login.jsp" class="btn btn-success my-2 my-sm-0">LOGIN</a>
    </div>
  </nav>
		<div class="container-fluid" style="padding-top: 70px;">
			<div class="row">
				<div class="col-md-3">
				</div>
				<div class="col-md-6">
					<form name="registration" method="post" action="LoginController" class="form-group">
						<div class="row">
							<div class="col-md-12">
							<h1>Welcome to Login Page!!</h1>
							<h2>LOGIN TO EXPLORE</h2>
							</div>
						</div>
						
						<div class="row">
							<div class="col-md-12">
								<input type="text" name="username" id="username" placeholder="Enter Username" class="form-control">
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<input type="password" name="password" id="password" placeholder="Enter Password" class="form-control" >
							</div>
						</div>

						
						<div class="row">
								<div class="col-md-6">
									<button type="reset" class="btn btn-success">CLEAR </button>
								</div>
								<div class="col-md-6">
									<button type="submit" class="btn btn-success"> LOGIN </button>
								</div>
						</div>
						
					</form>
				</div>
				<div class="col-md-3">
				</div>
			</div>
		</div>
	
	</body>
</html>