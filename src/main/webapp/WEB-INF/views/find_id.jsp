<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>ID</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

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
  <script src="https://kit.fontawesome.com/e48a00faf1.js" crossorigin="anonymous"></script>
 
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

      <a href="/member/home" class="logo d-flex align-items-center">
        <!-- Uncomment the line below if you also wish to use an image logo -->
        <!-- <images src="../resources/images/logo.png" alt=""> -->
        <h1>With Book<span>.</span></h1>
      </a>

      <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
      <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>
      <nav id="navbar" class="navbar">
        <ul>
          <li><a href="/member/home" class="active">Home</a></li>
          <li><a href="/book/likebook">찜한 책 </a></li>
          <li><a href="/book/recommendList">추천목록</a></li>
          <li class="dropdown"><a href="#"><span>내 정보 </span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
            <ul>
              <li><a href="/user/userMod?seq=<c:out value="${item.seq}"/>">기본정보</a></li>
              <li><a onclick="logout()">로그아웃</a></li>
            </ul>
          </li>
      </nav><!-- .navbar -->
    </div>
  </header><!-- End Header -->

  <main id="main">

    <div class="breadcrumbs d-flex align-items-center" style="background-image: url('../resources/images/library.jpg');">
      <div class="container position-relative d-flex flex-column align-items-center aos-init aos-animate" data-aos="fade">
        <h2>정보 찾기</h2>
        <ol>
          <li><a href="/member/home">Home</a></li>
          <li>아이디 찾기</li>
        </ol>
      </div>
    </div>

  <!-- ======= Hero Section ======= -->
   <section id="blog" class="blog">
		<div class="info d-flex align-items-center">
		   <div class="container">
		     <div class="row justify-content-center">
		     	<div class="col-lg-6 text-center">
					  <div class="mb-3 row">
					    <label for="Name" class="col-sm-2 col-form-label" style="float:left;">이름</label>
						    <div class="col-sm-4">
						      <input type="text" class="form-control" id="fine-id-name">
						    </div>
					  </div>
				  	  <div class="mb-3 row">
				    	<label for="inputPassword" class="col-sm-2 col-form-label">이메일</label>
					    <div class="col-sm-4">
					      <input type="text" class="form-control" id="inputEmail">
					    </div>
				        <div class="col-sm-1" style="font-size:20px;">@</div>
				        <div class="col-sm-5">
				        	<select class="form-control">
				        		<option>선택하세요.
				        		<option>naver.com
				        		<option>hanmail.net
				        		<option>gmail.com
				        	</select>
					   	 </div>
		 	 			</div>
 	 		       		<div class="text-center">
       						<button type="button" class="btn btn-outline-warning" style="float:right; width:100px;"><a href="/find_id">찾기</a></button>
       					</div>
      					
  					 	<div class="card" style="width:17rem; opacity:0.75; margin-top:100px; margin-left:220px;">
						  <div class="card-header">
						    아이디 찾기 결과
						  </div>
						  <div class="card-body">
						    <h5 class="card-title">yejin0113</h5><br>
						    <a href="/home/login" class="btn btn-outline-warning">로그인</a>
						    <a href="/find_pwd" class="btn btn-outline-warning">비밀번호 찾기</a>
						  </div>
						</div>
					</div>
				</div>
			</div>
	  </section>

  
 <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <div class="footer-legal text-center position-relative">
      <div class="container">
        <div class="copyright">
          © Copyright <strong><span>With Book</span></strong>. All Rights Reserved
        </div>
    </div>
  </footer>
  <!-- End Footer -->

  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

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