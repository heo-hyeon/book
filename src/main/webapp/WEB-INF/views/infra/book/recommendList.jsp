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

  <title>Recommend Book List</title>
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
	          <c:if test="${not empty sessSeq}">
         	  <li class="dropdown"><a href="#"><span>내 정보 </span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
          		  <ul>
              		<li><a href="/user/userMod?seq=<c:out value="${item.seq}"/>">기본정보</a></li>
              		<li><a onclick="logout()">로그아웃</a></li>
              	  </ul>
          	 </li>
          	 </c:if> 
            </ul>
      </nav>
    </div>
  </header><!-- End Header -->

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs d-flex align-items-center" style="background-image: url('../resources/images/book.jpg');">
      <div class="container position-relative d-flex flex-column align-items-center aos-init aos-animate" data-aos="fade">

        <h2>Recommend Book</h2>
        <ol>
          <li><a href="/member/home">Home</a></li>
          <li>Recommend Book List</li>
        </ol>
      </div>
    </div><!-- End Breadcrumbs -->

    <!-- ======= Blog Section ======= -->
    <section id="blog" class="blog">
      <div class="container aos-init aos-animate" data-aos="fade-up" data-aos-delay="100">
        <div class="row gy-4 posts-list">
          <div class="col-xl-4 col-md-6">
            <div class="post-item position-relative h-100">
              <div class="post-images position-relative overflow-hidden">
                <img src="../resources/images/midnight.jpg" style="width:350px; height:500px;">
                   <span class="post-date">평점 4</span>
              </div>
              <div class="post-content d-flex flex-column">
                <h3 class="post-title">미드나잇 라이브러리</h3>
                <div class="meta d-flex align-items-center">
                  <div class="d-flex align-items-center">
                    <i class="bi bi-person"></i> <span class="ps-2">매트 헤이그</span>
                  </div>
                  <span class="px-3 text-black-50">/</span>
                  <div class="d-flex align-items-center">
                    <i class="bi bi-folder2"></i> <span class="ps-2">인플루엔셜</span>
                  </div>
                </div>
             	<div class="meta-bottom" style="list-style:none; display:inline; padding-top:10px; font-size:14px; color:#6c757d;">
                <i class="bi bi-tags"></i>
                  마법, 인생, 죽음, 삶
              </div><!-- End meta bottom -->
                <br><a href="/recommend1" class="readmore stretched-link"><span>Read More</span><i class="bi bi-arrow-right"></i></a>
              </div>
            </div>
          </div><!-- End post list item -->

          <div class="col-xl-4 col-md-6">
            <div class="post-item position-relative h-100">
              <div class="post-images position-relative overflow-hidden">
                <img src="../resources/images/sf.jpg" style="width:350px; height:500px;">
                <span class="post-date">평점 4.7</span>
              </div>
              <div class="post-content d-flex flex-column">
                <h3 class="post-title">지구 끝의 온실</h3>
                <div class="meta d-flex align-items-center">
                  <div class="d-flex align-items-center">
                    <i class="bi bi-person"></i> <span class="ps-2">김초엽</span>
                  </div>
                  <span class="px-3 text-black-50">/</span>
                  <div class="d-flex align-items-center">
                    <i class="bi bi-folder2"></i> <span class="ps-2">자이언트북스</span>
                  </div>
                </div>
                <div class="meta-bottom" style="list-style:none; display:inline; padding-top:10px; font-size:14px; color:#6c757d;">
                <i class="bi bi-tags"></i>
                 식물, 생명력, 탐구심
              </div><!-- End meta bottom -->
                <br><a href="/recommend1" class="readmore stretched-link"><span>Read More</span><i class="bi bi-arrow-right"></i></a>
              </div>
            </div>
          </div><!-- End post list item -->
          
          <div class="col-xl-4 col-md-6">
            <div class="post-item position-relative h-100">
              <div class="post-images position-relative overflow-hidden">
                <img src="../resources/images/store.jpg" style="width:350px; height:500px;">
                <span class="post-date">평점 4.7</span>
              </div>
              <div class="post-content d-flex flex-column">
                <h3 class="post-title">어서오세요, 휴남동 서점입니다</h3>
                <div class="meta d-flex align-items-center">
                  <div class="d-flex align-items-center">
                    <i class="bi bi-person"></i> <span class="ps-2">황보름</span>
                  </div>
                  <span class="px-3 text-black-50">/</span>
                  <div class="d-flex align-items-center">
                    <i class="bi bi-folder2"></i> <span class="ps-2">클라이하우스</span>
                  </div>
                </div>
                <div class="meta-bottom" style="list-style:none; display:inline; padding-top:10px; font-size:14px; color:#6c757d;">
                <i class="bi bi-tags"></i>
                  우정, 감동, 서점
              </div><!-- End meta bottom -->
                <br><a href="/recommend1" class="readmore stretched-link"><span>Read More</span><i class="bi bi-arrow-right"></i></a>
              </div>
            </div>
          </div><!-- End post list item -->

          <div class="col-xl-4 col-md-6">
            <div class="post-item position-relative h-100">
              <div class="post-images position-relative overflow-hidden">
                <img src="../resources/images/light.jpg" style="width:350px; height:500px;">
                <span class="post-date">평점 4.4</span>
              </div>
              <div class="post-content d-flex flex-column">
                <h3 class="post-title">우리가 빛의 속도로 갈 수 없다면</h3>
                <div class="meta d-flex align-items-center">
                  <div class="d-flex align-items-center">
                    <i class="bi bi-person"></i> <span class="ps-2">김초엽</span>
                  </div>
                  <span class="px-3 text-black-50">/</span>
                  <div class="d-flex align-items-center">
                    <i class="bi bi-folder2"></i> <span class="ps-2">허블</span>
                  </div>
                </div>
                <div class="meta-bottom" style="list-style:none; display:inline; padding-top:10px; font-size:14px; color:#6c757d;">
                <i class="bi bi-tags"></i>
                  우주, SF소설
              </div><!-- End meta bottom -->
                <br><a href="/recommend1" class="readmore stretched-link"><span>Read More</span><i class="bi bi-arrow-right"></i></a>
              </div>
            </div>
          </div><!-- End post list item -->

          <div class="col-xl-4 col-md-6">
            <div class="post-item position-relative h-100">
              <div class="post-images position-relative overflow-hidden">
                <img src="../resources/images/lawer.jpg" style="width:350px; height:500px;">
                <span class="post-date">평점 4.7</span>
              </div>
              <div class="post-content d-flex flex-column">
                <h3 class="post-title">계속 가보겠습니다</h3>
                <div class="meta d-flex align-items-center">
                  <div class="d-flex align-items-center">
                    <i class="bi bi-person"></i> <span class="ps-2">임은정</span>
                  </div>
                  <span class="px-3 text-black-50">/</span>
                  <div class="d-flex align-items-center">
                    <i class="bi bi-folder2"></i> <span class="ps-2">메디치미디어</span>
                  </div>
                </div>
                <div class="meta-bottom" style="list-style:none; display:inline; padding-top:10px; font-size:14px; color:#6c757d;">
                <i class="bi bi-tags"></i>
                 각오, 용기, 조직
              </div><!-- End meta bottom -->
                <br><a href="/recommend1" class="readmore stretched-link"><span>Read More</span><i class="bi bi-arrow-right"></i></a>
              </div>
            </div>
          </div><!-- End post list item -->
          
          <div class="col-xl-4 col-md-6">
            <div class="post-item position-relative h-100">
              <div class="post-images position-relative overflow-hidden">
                <img src="../resources/images/well.jpg" style="width:350px; height:500px;">
                <span class="post-date">평점 4.5</span>
              </div>
              <div class="post-content d-flex flex-column">
                <h3 class="post-title">당신은 결국 무엇이든 해내는 사람</h3>
                <div class="meta d-flex align-items-center">
                  <div class="d-flex align-items-center">
                    <i class="bi bi-person"></i> <span class="ps-2">김상현</span>
                  </div>
                  <span class="px-3 text-black-50">/</span>
                  <div class="d-flex align-items-center">
                    <i class="bi bi-folder2"></i> <span class="ps-2">필름</span>
                  </div>
                </div>
                <div class="meta-bottom" style="list-style:none; display:inline; padding-top:10px; font-size:14px; color:#6c757d;">
                <i class="bi bi-tags"></i>
                  위로, 불안, 행복
              </div><!-- End meta bottom -->
                <br><a href="/recommend1" class="readmore stretched-link"><span>Read More</span><i class="bi bi-arrow-right"></i></a>
              </div>
            </div>
          </div><!-- End post list item -->
 
        <div class="blog-pagination">
          <ul class="justify-content-center">
            <li><a href="#">1</a></li>
            <li class="active"><a href="#">2</a></li>
            <li><a href="#">3</a></li>
          </ul>
        </div><!-- End blog pagination -->
        <div class="text-center">
      		<button type="button" class="btn btn-outline-warning" style="float:right;"><a href="/recommend1">책 추가</a></button>
       	</div>
        </div>
      </div>
    </section><!-- End Blog Section -->
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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script> 
  <script>
		function logout(){
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				,url: "/member/logoutProc"
				,data: {}
				,success: function(response) {
					if(response.rt == "success") {
						alert(response.rt);
						location.href = "/member/login"
					} else {
						// by pass
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
		}
	</script>
</body>
</html>