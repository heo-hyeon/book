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

  <title>LOGIN</title>

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
          <li><a href="/member/home" class="active">Home</a></li>
          <li><a href="/book/likebook">찜한 책 </a></li>
          <li><a href="/book/recommendList">추천목록</a></li>
          <li class="dropdown"><a href="#"><span>내 정보 </span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
            <ul>
              <li><a href="/member/memberMod">기본정보</a></li>
              <li><a href="/member/mypage">상세정보</a></li>
              <li><a href="/login">로그아웃 </a></li>
              <li><a href="#">기타 </a></li>
            </ul>
          </li>
        </ul>
      </nav><!-- .navbar -->
    </div>
  </header><!-- End Header -->

   <!-- ======= Hero Section ======= -->
	<section id="hero" class="hero">
		<div class="info d-flex align-items-center">
		   <div class="container">
		     <div class="row justify-content-center">
		      <div class="col-lg-6 text-center">
		<h1 style="color:white;">WITH BOOK</h1>
		<p style="font-style: oblique; font-size:17px;">독서는 완성된 사람을 만든다. '프란시스 베이컨'</p>
		<input type="text" class="id" name="memberID" id="memberID" style="border:solid silver 0.5px; border-radius:3px;" sessSeq: <c:out value="${sessSeq }"/><br>
		<br><input type="password" name="pwd" id="pwd" style="border:solid silver 0.5px; border-radius:3px; margin-top:10px;">
		<br><button class="btn btn-secondary" type="button" id="btnLogin" name="btnLogin" style="width:80px; height:35px; margin:20px;">login</button>
		<div class="find" style="margin-left:20px;">
							<a href="/find_id">아이디 찾기</a>|
							<a href="/find_pwd">비밀번호 찾기</a>|
							<a href="/member/memberForm">회원가입</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</select> 
	
    <div id="hero-carousel" class="carousel slide" data-bs-ride="carousel" data-bs-interval="5000">

      <div class="carousel-item" style="background-image: url(../resources/images/book.jpg)"></div>
      <div class="carousel-item" style="background-image: url(../resources/images/library.jpg)"></div>
      <div class="carousel-item active" style="background-image: url(../resources/images/book2.jpg)"></div>
      <div class="carousel-item" style="background-image: url(../resources/images/book3.jpg)"></div>
      <div class="carousel-item" style="background-image: url(../resources/images/book4.jpg)"></div>
      <div class="carousel-item" style="background-image: url(../resources/images/glasses.jpg)"></div>

      <a class="carousel-control-prev" href="#hero-carousel" role="button" data-bs-slide="prev">
        <span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
      </a>

      <a class="carousel-control-next" href="#hero-carousel" role="button" data-bs-slide="next">
        <span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
      </a>

    </div>

  </section><!-- End Hero Section -->
  
   <!-- Vendor JS Files -->
  <script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="../resources/vendor/aos/aos.js"></script>
  <script src="../resources/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="../resources/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="../resources/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="../resources/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="../resources/vendor/php-email-form/validate.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script> 
  
  <!-- Template Main JS File -->
  <script src="../resources/js/main.js"></script>
<!--  	<script>
	function openZipSearch() {
	    new daum.Postcode({
	          oncomplete: function(data) {
	              $('[name=zip]').val(data.zonecode); // 우편번호 (5자리)
	              $('[name=addr1]').val(data.address);
	              $('[name=addr2]').val(data.buildingName);
	          }
	    }).open();
	} 
	</script>
  -->
  
<script type="text/javascript">
		
		$("#btnLogin").on("click", function(){
			
			$.ajax({
				async: true
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/member/loginProc"
				/* ,data : $("#formLogin").serialize() */
				,data : { "memberID" : $("#memberID").val(), "pwd" : $("#pwd").val()}
				,success: (res) => {
					alert(res.rt)
					if(res.rt == "success") {
						location.href = "/member/home"
					} else {
						alert("회원없음");
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
		});
</script>

</body>
</html>