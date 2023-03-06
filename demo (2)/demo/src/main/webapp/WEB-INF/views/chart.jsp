<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <title>Last Carnival</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="FrontEnd/assets/css/fontawesome.css">
    <link rel="stylesheet" href="FrontEnd/assets/css/templatemo-cyborg-gaming.css">
    <link rel="stylesheet" href="FrontEnd/assets/css/owl.css">
    <link rel="stylesheet" href="FrontEnd/assets/css/animate.css">
    <link rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>

  </head>
  <style>
    img {
    border: 1px solid #ddd;
    border-radius: 4px;
    padding: 5px;
    width: 150px;
    }
  </style>
    
  
  <body>
     <!-- ***** Preloader Start ***** -->
  <div id="js-preloader" class="js-preloader">
    <div class="preloader-inner">
      <span class="dot"></span>
      <div class="dots">
        <span></span>
        <span></span>
        <span></span>
      </div>
    </div>
  </div>
  <!-- ***** Preloader End ***** -->

  <!-- ***** Header Area Start ***** -->
  <header class="header-area header-sticky">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="main-nav">
                    <!-- ***** Logo Start ***** -->
                    <a href="index.html" class="logo">
                        <img src="assets/images/logo7.png" alt="">
                    </a>
                    <!-- ***** Logo End ***** -->
                    <!-- ***** Search End ***** -->
                    <div class="search-input">
                      <form id="search" action="#">
                        <input type="text" placeholder="Type Something" id='searchText' name="searchKeyword" onkeypress="handle" />
                        <i class="fa fa-search"></i>
                      </form>
                    </div>
                    <!-- ***** Search End ***** -->
                    <!-- ***** Menu Start ***** -->
                    <ul class="nav">
                        <li><a href="index.html" class="active">Home</a></li>
                        <li><a href="browse.html">Browse</a></li>
                        <li><a href="details.html">Details</a></li>
                        <li><a href="streams.html">Streams</a></li>
                        <li><a href="profile.html">Profile <img src="assets/images/profile-header.jpg" alt=""></a></li>
                    </ul>   
                    <a class='menu-trigger'>
                        <span>Menu</span>
                    </a>
                    <!-- ***** Menu End ***** -->
                </nav>
            </div>
        </div>
    </div>
  </header>
  <!-- ***** Header Area End ***** -->

  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="page-content">

          <!-- ***** Banner Start ***** -->
          <div class="main-banner">
            <div class="row">
              <div class="col-lg-7">
                <div class="header-text">
                  <h6>Welcome To Last Carnival</h6>
                  <h4><em>Browse</em> Our Popular Music Here</h4>
                  <div class="main-button">
                    <a href="browse.html">Browse Now</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- ***** Banner End ***** -->

    <h1>차트</h1>
    <table border=1>
      <tr>
        <th>순위</th>
        <th>제목</th>
        <th>가수</th>
        <th>이미지</th>
      </tr>
      <c:forEach var="track" items="${trackList}" varStatus="status">
        <tr>
          <td>${status.count}</td>
          <td>${track.name}</td>
          <td>${track.artist}</td>
          <td id="size"><div>
            <a href="${pageContext.request.contextPath}/${track.id}">
                <img src="${pageContext.request.contextPath}/${track.id}" alt="${track.name}">
            </a>
        </div></td>
        </tr>
      </c:forEach>
    </table>
    <a href="/home">홈페이지 이동</a>

    <!-- Scripts -->
    <!-- Bootstrap core JavaScript -->
    <script src="Frontend/vendor/jquery/jquery.min.js"></script>
    <script src="Frontend/vendor/bootstrap/js/bootstrap.min.js"></script>

    <script src="Frontend/assets/js/isotope.min.js"></script>
    <script src="Frontend/assets/js/owl-carousel.js"></script>
    <script src="Frontend/assets/js/tabs.js"></script>
    <script src="Frontend/assets/js/popup.js"></script>
    <script src="Frontend/assets/js/custom.js"></script>
  </body>
</html>