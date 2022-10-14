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

  <title>Best Seller-datails</title>
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
          <li><a href="/book/recommendlist">추천목록</a></li>
          <li class="dropdown"><a href="#"><span>내 정보 </span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
            <ul>
              <li><a href="/user/userMod?seq=<c:out value="${item.seq}"/>">기본정보</a></li>
              <li><a onclick="logout()">로그아웃</a></li>
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

        <h2>Best Seller </h2>
        <ol>
          <li><a href="/">Home</a></li>
          <li>Best Seller Details</li>
        </ol>

      </div>
    </div><!-- End Breadcrumbs -->

    <!-- ======= Blog Details Section ======= -->
    <section id="blog" class="blog">
      <form method="post" name="form">
      <input type="hidden" name="seq" id="seq" value="<c:out value="${item.seq}"/>"/>
	    <div class="container aos-init aos-animate" data-aos="fade-up" data-aos-delay="100">
        <div class="row g-5">
          <div class="col-lg-8" style="margin:auto; text-align:center;">
            <article class="blog-details">
              <div class="post-images" style="text-align:center; margin-top:3px;">
                <img src="../resources/images/retrogression.jpg" style="width:400px; height:500px;" class="images-fluid">
              </div>
              <h2 class="title" style="text-align:center;"><c:out value="${item.name}"/> </h2>
              <div class="meta-top">
                <ul class="d-flex justify-content-center">
                  <li><i class="bi bi-person"></i><c:out value="${item.writer_name}"/></li>
                  <li><i class="bi bi-pen"></i><c:out value="${item.publisher}"/></li>
                  <li><i class="bi bi-heart"></i><a href="blog-details.html">찜하기</a></li>
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
					 <button type="button" class="btn btn-outline-warning" style="float:right; margin-top:15px;"><a href="/">추천하기</a></button>  
	              </div>
           	  </div>

              <div class="content">
                <blockquote>
                  <p>
                  	<c:out value="${item.title}" />
                  </p>
                </blockquote>

                <p>
               		<c:out value="${item.sub_title}" />
                </p>
              </div>

              <div class="meta-bottom">
                <i class="bi bi-tags"></i>
	                <ul class="tags">
	                  <li><c:out value="${list[0].keyword }"/></li>
	                  <li><c:out value="${list[1].keyword }"/></li>
	                </ul>
              </div><!-- End meta bottom -->
            </article><!-- End blog post -->

            <div class="post-author d-flex align-items-center">
              <div class="float:right";>
              	<img src="../resources/images/ja.jpg">
              </div>
	              <div>
	                <h4>저자 '<c:out value="${item.writer_name}"/>' </h4>
	                <p>
	                	<c:out value="${item.writer_exp}" />
	                </p>
	              </div>
            </div><!-- End post author -->

			<div class="post-author align-items-center">
            	<div class="comments">
              		<h4 class="comments-count">리뷰 </h4>
             		<div id="comment-1" class="comment">
	                  <div>
	                    <h5>DA88_9RYu </h5>
	                    <time datetime="2022-06-29">29 Jun,2022</time>
	                    <p>
	                    그래서 무언가가 되고 싶으면, 나 스스로를 믿기보다 환경설정을 더 중요시했다. 
	                    내 머리를 믿기보다는 인간의 심리와 본성을 이해하는 것에 투자했다.
	                    </p>
	                  </div>
                	</div>
             	 </div><!-- End comment #1 -->
             	 <div id="comment-2" class="comment">
                  	<div>
	                    <h5>galeuice</h5>
	                    <time datetime="2022-05-12">12 May,2022</time>
	                    <p>
						남들보다 아주 조금이라도 의사 결정력이 높으면
						인생에서 내려야 할 수백 번의 의사결정에서 좋은 선택을 할 확률이 높아진다...
						단 5퍼센트만이라도 남들보다 좋은 결정을 할 수만 있다면 그 인생은 성공으로 향할 수밖에 없다.
	                    </p>
                  </div>
                </div>
              </div><!-- End comment #2-->

				<div class="post-author align-items-center">
	           	 <div class="comments">
		              <h4 class="comments-count">문장수집 </h4>
		             <div id="comment-1" class="comment">
		                <div style="margin:auto; text-align:center;">
		                  <div>
		                    <h5>happy_yeon </h5>
		                    <time datetime="2022-03-08">08 Mar,2022</time>
		                    <p>"당신이 생각하는 한계, 그것 별것 아닙니다."</p>

		                    <h5>haeeei </h5>
		                    <time datetime="2022-08-13">13 Aug,2022</time>
		                    <p>"신이 망가뜨리고 싶은 인간이 있으면, 신은 먼저 그가 잘 될 인간이라고 추켜세운다."</p>

	    					<h5>jjimin12 </h5>
		                    <time datetime="2022-06-23">23 JUL,2022</time>
		                    <p>"두뇌가 한번 최적화를 끝내면, 평생 자연스럽게 지능이 발달한다."</p>
		                  </div>
		                </div>
	           		</div><!-- End blog comments -->
	         	 </div>
	          </div>
         	 <button type="button" class="btn btn-outline-warning" style="float:right; margin-top:10px;"><a href="/member/home">돌아가기</a></button>
          </div>
	    <%--  <form name="formVo" id="formVo" method="post">
				<input type="hidden" name="seq" value="<c:out value="${vo.seq}"/>"/>
			  </form> --%>
          </form>
     </section>
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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script> 

  <!-- Template Main JS File -->
  <script src="../resources/js/main.js"></script

	<script>
	 var form = $("form[name=form]");
	 var formVo = $("formVo[name=formVo]");
	</script>
  
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
						location.href = "/login"
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