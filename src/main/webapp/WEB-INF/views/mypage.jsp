<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>
<!doctype html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>User Details</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="../resources/images/favicon.png" rel="icon">
  <link href="../resources/images/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="">
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&amp;family=Roboto:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&amp;family=Work+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&amp;display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="../resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../resources/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="../resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="../resources/vendor/aos/aos.css" rel="stylesheet">
  <link href="../resources/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="../resources/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="../resources/css/main.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: UpConstruction - v1.1.0
  * Template URL: https://bootstrapmade.com/upconstruction-bootstrap-construction-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<body data-aos-easing="slide" data-aos-duration="800" data-aos-delay="0">

  <!-- ======= Header ======= -->
  <header id="header" class="header d-flex align-items-center">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">
      <a href="/" class="logo d-flex align-items-center">
        <!-- Uncomment the line below if you also wish to use an image logo -->
        <!-- <images src="../resources/images/logo.png" alt=""> -->
        <h1>With Book<span>.</span></h1>
      </a>

      <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
      <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>
          <nav id="navbar" class="navbar">
       <ul>
          <li><a href="/" class="active">Home</a></li>
          <li><a href="/likebook">찜한 책 </a></li>
          <li><a href="/recommendList">추천목록</a></li>
          <li class="dropdown"><a href="#"><span>내 정보 </span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
            <ul>
              <li><a href="/mod">기본정보</a></li>
              <li><a href="/mypage">상세정보</a></li>
              <li><a href="/login">로그아웃 </a></li>
              <li><a href="#">기타 </a></li>
            </ul>
          </li>
        </ul>
      </nav><!-- .navbar -->
    </div>
  </header><!-- End Header -->

  <main id="main">
    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs d-flex align-items-center" style="background-image: url('../resources/images/book.jpg');">
      <div class="container position-relative d-flex flex-column align-items-center aos-init aos-animate" data-aos="fade">
        <h2>개인정보</h2>
        <ol>
          <li><a href="/">Home</a></li>
          <li>Datails</li>
        </ol>
      </div>
    </div><!-- End Breadcrumbs -->

    <!-- ======= Service Details Section ======= -->
    <section id="service-details" class="service-details">
	    <div class="card" style="width: 20rem; height: 19rem; float:left; margin-left:550px; margin-top:100px;">
		  <img src="../resources/images/son.jpg" class="card-images-top" style="height:20rem;">
		</div>
		<form class="row g-5" style="margin-left:30px; margin-top:50px;">
   		   <div class="container aos-init aos-animate" data-aos="fade-up" data-aos-delay="100" style="margin-top:70px;">
       		 <div class="row gy-4">
         		 <div class="col-lg-4">
         		   <div class="services-list">
		              <a href="/mod" class="active">관심장르는 '소설' , '인문' 입니다.</a>
		              <a href="#">관심 키워드는 'SF' , '감동' 입니다.</a>
		              <a href="/likebook">좋아요 누른책은 '6'권 입니다.</a>
		              <a href="/recommendList">추천하신 책은 총 '6'권 입니다.</a>
		            </div>
          			<p>*항목을 누르면 상세페이지가 나옵니다.</p>
	         	 </div>
			 </div>
			</div>
    </section><!-- End Service Details Section -->
  </main><!-- End #main -->

  <!-- Vendor JS Files -->
  <script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="../resources/vendor/aos/aos.js"></script>
  <script src="../resources/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="../resources/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="../resources/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="../resources/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="../resources/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="../resources/js/main.js"></script>
</body>
</html>