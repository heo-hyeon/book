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

  <title>Favorite Book-datail</title>
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
          <li><a href="likebook">찜한 책 </a></li>
          <li><a href="recommendList">추천목록</a></li>
          <li class="dropdown"><a href="#"><span>내 정보 </span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
            <ul>
              <li><a href="/user/mod">기본정보</a></li>
              <li><a href="/user/mypage">상세정보</a></li>
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
        <h2>Favorite Book </h2>
        <ol>
          <li><a href="/">Home</a></li>
          <li>Favorite Book Details</li>
        </ol>
      </div>
    </div><!-- End Breadcrumbs -->
    
    <!-- ======= Blog Details Section ======= -->
    <section id="blog" class="blog">
      <div class="container aos-init aos-animate" data-aos="fade-up" data-aos-delay="100">
        <div class="row g-5">
          <div class="col-lg-8" style="margin:auto; text-align:center;">
            <article class="blog-details">
              <div class="post-images" style="text-align:center; margin-top:3px;">
                <img src="../resources/images/pachinko.jpg" class="images-fluid" style="width:400px; height:500px;">
              </div>
              <h2 class="title" style="text-align:center;">파친코 </h2>
              <div class="meta-top">
             	 <ul class="d-flex justify-content-center">
                  <li><i class="bi bi-person"></i>이민진</li>
                  <li><i class="fa-regular fa-bookmark"></i><a href="blog-details.html">찜하기</a></li>
                  <li><i class="fa-solid fa-thumbs-up"></i><a href="blog-details.html">좋아요 </a></li>
             	  <li><i class="fa-solid fa-heart"></i><a href="blog-details.html">추천하기</a></li>
                </ul>
              </div><!-- End meta top -->

       		<div class="post-author d-flex align-items-center">
	              <div class="align-items-center" style="margin:auto;">
						<div class="row gy-4">
							<div class="col-lg-7 form-group">
							<textarea class="form-control" placeholder="책에 대한 리뷰를 남겨주세요." style="width:500px; margin-bottom:10px;"></textarea>
							</div>
						</div>
						<div class="col-lg-7 form-group">
							<textarea class="form-control" placeholder="인상깊었던 구절(문장수집)을 남겨주세요." style="width:500px; margin-bottom:10px;"></textarea>
						</div>
						<div class="col-lg-7 form-group">
							<textarea  class="form-control" placeholder="책과 어울리는 해시태그를 자유롭게 남겨주세요." style="width:500px;"></textarea>
						</div> 
					 <button type="button" class="btn btn-outline-warning" style="float:right; margin-top:15px;"><a href="/likebook">추천하기</a></button>  
	              </div>
           	 </div>
            
              <div class="content">
                <blockquote>
                  <p>
                  전 세계인의 마음을 뒤흔든 우리의 이야기
                  <br>문화와 세대를 가로지르는 새로운 고전의 탄생!
                  </p>
                </blockquote>

                <p>
                《파친코》는 ‘집’에 대한 이야기’인 동시에, 평범한 사람들의 이야기이다. 
                역사의 거대한 파도에 휩쓸리면서도 굴하지 않고 꿋꿋하게 삶을 헤쳐나가는 이민자 가족의 연대기를 담고 있다.
                고향을 떠나 타국에 뿌리내리고 편견과 차별 속에서 영원한 이방인으로 살아야 하는 이민자의 삶을 작가는 특유의 통찰력과 공감 어린 시선으로 탐구해간다. 
                나아가 역사의 비극을 가장 평범한 사람들이 어떻게 겪고 견뎌내는지를 담담한 목소리로 풀어내면서 “한 가족의 이야기가 어떻게 모두의 이야기가 될 수 있는지” 보여준다.
                가족, 사랑, 상실, 돈과 같은 인생의 모든 문제를 다루면서 동시대를 살아가는 독자에게 가장 시의적절한 질문을 던지는 작품, 《파친코》는 세대와 문화를 뛰어넘는 이야기의 힘을 증명하며 하나의 아이콘으로 떠올랐다. 
                </p>
              </div>

              <div class="meta-bottom">
     
                <i class="bi bi-tags"></i>
                <ul class="tags">
                  <li><a href="#">재일동포 </a></li>
                  <li><a href="#">가족 </a></li>
                </ul>
              </div><!-- End meta bottom -->
            </article><!-- End blog post -->

            <div class="post-author d-flex align-items-center">
             <div class="float:right";>
              	<img src="../resources/images/leeminjin.jpg">
             </div>
              <div>
                <h4>저자 '이민진' </h4> <br>
                <p>
                2004년 단편소설 〈행복의 축Axis of Happiness〉, 〈조국Motherland〉 등을 발표해 작가의 입지를 굳히기 시작했다.
                2008년 첫 장편소설 《백만장자를 위한 공짜 음식Free Food for Millionaires》을 발표, 한국을 비롯하여 11개국에 번역 출판되었으며 전미 편집자들이 뽑은 올해의 책, 미국 픽션 부문 ‘비치상’, 신인작가를 위한 ‘내러티브상’ 등을 수상했다.
                </p>
              </div>
            </div><!-- End post author -->

			<div class="post-author align-items-center">
				<div class="comments">
					<h4 class="comments-count">리뷰 </h4>
					<div id="comment-1" class="comment">
						<div>
						<h5>yejin</h5>
						<time datetime="2022-03-30">30 Mar,2022</time>
						<p>
						재밌다고 표현하기에는 내용이 좀 무겁긴 한데. 
						끝까지 지루한 부분 없이 잘 읽었어요.
						처음에 두꺼워서 언제 읽나 했는데 잘 읽히는 책이고. 여운이 많이 남네요.
						막상 끝내니 아쉬울정도에요. 추천!!
						</p>
						</div>
					</div>
				</div><!-- End comment #1 -->
				<div class="comments">
					<div id="comment-2" class="comment">
						<div>
						<h5>bbkk</h5>
						<time datetime="2022-05-07">07 May,2022</time>
						<p>
						삶의 다양한 요소들이 놀랍도록 잘 녹여져 있는 책이라는 생각이 들었어요.
						읽으면서 눈물도 많이 흘리고 공감도 많이 하고 또 도발적인 내용들에 놀라기도 하면서 정말 재밌게 읽었습니다.
						</p>
						</div>
					</div><!-- End comment #2-->
				</div>
			</div><!-- End post comments -->
			
			<div class="post-author align-items-center">
				<div class="comments">
						<h4 class="comments-count">문장수집 </h4>
						<div id="comment-1" class="comment">
	 	                  <div>
		                    <h5>taelee </h5>
		                    <time datetime="2022-03-08">08 Mar,2022</time>
		                    <p>"역사는 우리를 실망시켰지만, 중요하지 않다."</p>
		                    
		                    <h5>minA </h5>
		                    <time datetime="2022-08-13">13 Aug,2022</time>
		                    <p>"아무도 깨끗하지 않다. 산다는 것은 당신을 더럽힌다."</p>
	
	    					<h5>hhyeony </h5>
		                    <time datetime="2022-06-23">23 JUL,2022</time>
		                    <p>"여러분의 인간성을 인정하기를 거부하는 사람들 앞에서 매일 사는 것은 큰 용기를 필요로 합니다."</p>
		                  </div>   
             		  	</div>
           			</div>
               </div><br>
               <button type="button" class="btn btn-outline-warning" style="float:right;"><a href="likebook">목록</a></button>
	  </main><!-- End #main -->

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