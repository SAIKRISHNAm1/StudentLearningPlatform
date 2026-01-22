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
            <a class="dropdown-item" href="jfs.jsp">Java Full Stack</a>
            <a class="dropdown-item" href="pfs.jsp">Python Full Stack</a>
          </div>
        </li>
      </ul>

      <!-- Register Button -->
      <a href="update.jsp" class="btn btn-success my-2 my-sm-0">UPDATE</a>
    </div>
  </nav>
  
  <div class="container-fluid" style="padding-top: 70px;" >
<%= session.getAttribute("username") %> Welcome to USER PORTAL!!
  				
  			
			<div class="row">
			<div class="col-md-3">
			</div>
			<div class="col-md-6">
			    <div class="row">
				<div class="col-md-6 ">
					<div class="card">
						<div class="card-header">
							JAVA FULL STACK
					    </div>
						<div class="card-body">
							<img src="https://t4.ftcdn.net/jpg/02/92/83/57/360_F_292835773_oImixQGFKLpOPnjfsbesHyqdjOk5hsxL.jpg" 
							alt="NATURE"  width=100% height=100% 
							onclick="window.location.href='jfs.jsp';">
					    </div>
						<div class="card-footer">
							Master front-end, back-end, and database development using Java, Spring Boot, and MySQL.
					    </div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="card">
						<div class="card-header">
							PYTHON FULL STACK
					    </div>
						<div class="card-body">
							<img src="https://www.ncodetechnologies.com/blog/wp-content/uploads/2020/06/Pythonlogo.jpg" alt="NATURE"  width=100% height=100% onclick="window.location.href='pfs.jsp';">
					    </div>
						<div class="card-footer">
							Build powerful web applications using Python, Django, REST APIs, and modern JavaScript frameworks.
					    </div>
					</div>
				</div>
				</div>
				</div>
				</div>
			</div>
		
		
	</body>
</html>