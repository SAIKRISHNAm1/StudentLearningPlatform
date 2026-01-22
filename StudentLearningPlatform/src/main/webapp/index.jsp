
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>LearningPortal</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

  <style>
    body {
      background-color: #f8f9fa;
    }
    .navbar-brand {
      font-weight: bold;
      font-size: 1.5rem;
    }
    .carousel-inner img {
      width: 100%;
      height: 100%;
      border-radius: 10px;
      cursor: pointer;
      object-fit: cover;
    }
    .course-section {
      margin-top: 50px;
    }
    .course-section h3 {
      text-align: center;
      font-weight: 600;
      margin-bottom: 20px;
    }
    .course-description {
      text-align: center;
      font-size: 18px;
      color: #343a40;
      max-width: 850px;
      margin: 0 auto;
      line-height: 1.6;
    }
 
  </style>
</head>

<body>

			

  <!-- 🟢 Navbar -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top ">
    <a class="navbar-brand" href="#">LearningPortal</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav mr-auto">
        <!-- Home -->
        <li class="nav-item active">
          <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
        </li>

        <!-- Description -->
        <li class="nav-item">
          <a class="nav-link" href="#course-section">Description</a>
        </li>

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
      <a href="register.jsp" class="btn btn-success my-2 my-sm-0">Register</a>
    </div>
  </nav>

  <!-- 🟣 Carousel Section -->
  <div class="container mt-4" style="padding-top: 70px;">
    <div class="row">
      <!-- Left space -->
      <div class="col-md-3"></div>

      <!-- Carousel in center -->
      <div class="col-md-6">
        <div id="courseCarousel" class="carousel slide" data-ride="carousel">

          <!-- Indicators -->
          <ul class="carousel-indicators">
            <li data-target="#courseCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#courseCarousel" data-slide-to="1"></li>
          </ul>

          <!-- Carousel items -->
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img src="https://techamdavad.com/web/image/product.product/57/image_1024/Fullstack%20Java%20Development?unique=4e106bd"
                   alt="Java Full Stack"  title="Java Full Stack"
                   onclick="window.location.href='register.jsp';">
              <div class="carousel-caption d-none d-md-block">
                <!-- <h5 class="bg-dark p-2 rounded">Java Full Stack Development</h5> -->
              </div>
            </div>

            <div class="carousel-item">
              <img src="https://asiantechnologyhub.com/wp-content/uploads/2024/12/python3.webp"
                   alt="Python Full Stack"  title="Python Full Stack"
                   onclick="window.location.href='register.jsp';">
              <div class="carousel-caption d-none d-md-block">
                <!-- <h5 class="bg-dark p-2 rounded">Python Full Stack Development</h5> -->
              </div>
            </div>
          </div>

          <!-- Controls -->
          <a class="carousel-control-prev" href="#courseCarousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#courseCarousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>

        </div>
      </div>

      <!-- Right space -->
      <div class="col-md-3"></div>
    </div>
  </div>

  <!-- 🟠 About Section -->
  <div class="course-section" id="course-section">
    <h3>About Our Courses</h3>
    <p class="course-description">
      Welcome to <strong>LearningPortal</strong> — your gateway to mastering modern technologies.
      <br><br>
      💻 <strong>Java Full Stack Development</strong> covers complete end-to-end skills including
      HTML, CSS, Bootstrap, Java, JDBC, Servlets, JSP, and Spring Boot.
      <br>
      🐍 <strong>Python Full Stack Development</strong> helps you build web apps using
      Django, Flask, REST APIs, and front-end tools.
      <br><br>
      Join today and start your journey towards becoming a professional full-stack developer.
      Click on any course above to get started!
    </p>
  </div>

</body>
</html>
