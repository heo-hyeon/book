<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="true" %>
<!doctype html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>SignUp</title>
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
  
  <script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous">
  </script>
  
  <style>
  	.choice {
  		padding:20px;
  		margin:20px;}
  </style>

  <!-- =======================================================
  * Template Name: UpConstruction - v1.1.0
  * Template URL: https://bootstrapmade.com/upconstruction-bootstrap-construction-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<body>

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
          <li><a href="/book/likebook">?????? ??? </a></li>
          <li><a href="/book/recommendList">????????????</a></li>
          <li class="dropdown"><a href="#"><span>??? ?????? </span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
            <ul>
              <li><a href="/user/userMod?seq=<c:out value="${item.seq}"/>">????????????</a></li>
              <li><a href="/user/mypage">????????????</a></li>
              <li><a href="/login">???????????? </a></li>
            </ul>
          </li>
        </ul>
      </nav><!-- .navbar -->


    </div>
  </header><!-- End Header -->

  <!-- ======= Reg Section ======= -->
<section id="hero" class="hero">
	<div class="info d-flex align-items-center">
	   <div class="container">
	   
	   	   <div class="card" style="width: 19rem; float:left; margin-left:30px; margin-top:100px;">
			  <img src="../resources/images/user.png" class="card-images-top">
			  <div class="card-body">
			    <class="card-title"><input type="file">
			  </div>
			</div>
			
			<form method="post" action="join.jsp" class="row g-4" style="margin-left:30px; margin-top:50px; color:white;">
			  <div class="col-md-5">
			 	 <label class="job-label">???????????? </label>
				  <select class="form-control">
				  	<option value="md">??????/MD</option>
				  	<option value="it">IT??????</option>
				  	<option value="technology">??????/??????</option>
				  	<option value="marketing">?????????/??????</option>
				  	<option value="accounting">??????/??????</option>
				  	<option value="sales">??????/??????</option>
				  </select>
			  </div>
			  <div class="col-md-5">
			  	<label class="career-label">????????????</label>
			  	  <select class="form-control">
			  	  	<option value="junior">??????</option>
			  	  	<option value="senior">??????</option>
			  	  </select>
			  </div>
			  <div class="col-md-5">
			    <label class="name-label">?????? </label>
			    <input type="text" class="form-control">
			  </div>
			  <div class="col-md-5">
			    <label class="nameEn-label">???????????? </label>
			    <input type="text" class="form-control">
			  </div>
			 <div class="col-md-5">
			    <label class="region-label">??????</label>
			    <input type="text" class="form-control">
			  </div>
			  <div class="col-md-5">
			    <label class="id-label">????????? </label>
			    <input type="password" class="form-control">
			  </div>
			  <div class="col-md-5">
			    <label class="pwd-label">???????????? </label>
			    <input type="text" class="form-control" placeholder="??????,??????,???????????? ?????? 8??? ?????? ">
			  </div>
			  <div class="col-md-5">
			    <label class="pwd-check-label">???????????? ?????? </label>
			    <input type="text" class="form-control" placeholder="??????,??????,???????????? ?????? 8??? ?????? ">
			  </div>
			   <div class="col-md-5">
			    <label class="birth-label">???????????? </label>
			    <input type="date" class="form-control">
			  </div>
		      <div class="col-md-5">
			    <label class="hobby-label">??????</label>
			    <input type="text" class="form-control">
			  </div>
			  <div class="row">
			    <label class="phone-label">???????????? </label>
			    <div class="col-1">
			    	<select class="form-control">
			    		<option>skt</option>
			    		<option>kt</option>
			    		<option>lgt</option>
			    	</select>
			    </div>
			     <div class="col-4">	
			   		<input type="text" class="form-control">
			 	</div>
		 	  </div>
			  <div class="row inline">
			    <label class="phone-label">??????????????? </label>
			    <div class="col-1">
			    	<select class="form-control">
			    		<option>skt</option>
			    		<option>kt</option>
			    		<option>lgt</option>
			    	</select>
			    </div>
			     <div class="col-4">	
			   		<input type="text" class="form-control">
			 	</div>
		 	  </div>
			  <div class="col-md-5">
			    <label class="email-label">????????? </label>
			     <input type="text" class="form-control">
			  </div>	
			  <div class="col-md-5">
			  	<label class="certification-label">?????????</label>
			  	  <select class="form-control">
			  	  	<option value="Ycerti">???</option>
			  	  	<option value="Ncerti">???</option>
			  	  </select>
			  </div>
			  <div class="form-check form-check-inline">
				<label class="genre-label">?????? ?????? </label><br>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
					  <label class="form-check-label" for="inlineRadio1">??????</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2">
					  <label class="form-check-label" for="inlineRadio2">???/?????????</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3">
					  <label class="form-check-label" for="inlineRadio3">????????????</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio4">
					  <label class="form-check-label" for="inlineRadio4">??????</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio5">
					  <label class="form-check-label" for="inlineRadio1">??????/??????</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio6">
					  <label class="form-check-label" for="inlineRadio2">??????/??????</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio7">
					  <label class="form-check-label" for="inlineRadio3">??????/??????</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio8">
					  <label class="form-check-label" for="inlineRadio4">??????/?????????</label>
					</div>
				</div>
			  	<div class="d-grid garp-2 col-4 mx-auto">
			  		<br><a href="/login"><button type="button" class="btn btn-outline-warning ma-auto">????????????</a>
				</div>
			</form>
		</div>
	</div> 
	
    <div id="hero-carousel" class="carousel slide" data-bs-ride="carousel" data-bs-interval="5000">

      <div class="carousel-item" style="background-image: url(../resources/images/book.jpg)"></div>
      <div class="carousel-item" style="background-image: url(../resources/images/library.jpg)"></div>
      <div class="carousel-item" style="background-image: url(../resources/images/book2.jpg)"></div>
      <div class="carousel-item" style="background-image: url(../resources/images/book3.jpg)"></div>
      <div class="carousel-item active" style="background-image: url(../resources/images/book4.jpg)"></div>
      <div class="carousel-item" style="background-image: url(../resources/images/glasses.jpg)"></div>
      

      <a class="carousel-control-prev" href="#hero-carousel" role="button" data-bs-slide="prev">
        <span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
      </a>

      <a class="carousel-control-next" href="#hero-carousel" role="button" data-bs-slide="next">
        <span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
      </a>
    </div>
</section>
</select>

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