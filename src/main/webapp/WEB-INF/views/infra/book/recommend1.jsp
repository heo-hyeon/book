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

  <title>Recommend Book-datail</title>
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
        </ul>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs d-flex align-items-center" style="background-image: url('../resources/images/book.jpg');">
      <div class="container position-relative d-flex flex-column align-items-center aos-init aos-animate" data-aos="fade">
        <h2>Recommend Book </h2>
        <ol>
          <li><a href="/">Home</a></li>
          <li>Recommend Book Details</li>
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
                <img src="../resources/images/midnight.jpg" style="width:400px; height:500px;" class="images-fluid">
              </div>
              <h2 class="title" style="text-align:center;">미드나잇 라이브러리 </h2>
              <div class="meta-top">
                <ul class="d-flex justify-content-center">
                  <li><i class="bi bi-person"></i>매트 헤이그</li>
                  <li><i class="fa-regular fa-bookmark"></i><a href="">찜하기</a></li>
                  <li><i class="fa-solid fa-thumbs-up"></i><a href="">좋아요 </a></li>
             	  <li><i class="fa-solid fa-heart"></i><a href="">추천하기</a></li>
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
					 <button type="button" class="btn btn-outline-warning" style="float:right; margin-top:15px;"><a href="/recommendList">추천하기</a></button>  
	              </div>
           	 </div>

              <div class="content">
                <blockquote>
                  <p>
                  밤 12시, 죽기 바로 전에만 열리는 마법의 도서관에서 인생의 두 번째 기회를 드립니다.
                  </p>
                </blockquote>

                <p>
				어머니의 죽음, 파혼, 해고, 반려 고양이 볼츠의 죽음… 더 이상 삶을 견딜 수 없던 주인공 노라는 자살을 결심한다. 
				눈을 뜬 곳은 초록색 책들로 가득한 자정의 도서관. 
				친절하고 다정한 사서의 안내로 서가의 책이 모두 노라가 살았을지도 모르는 삶들을 담고 있음을 알게 되고 노라는 《후회의 책》을 펼쳐서, 가장 후회되는 순간 다른 선택을 했던 삶을 살아본다. 
				빙하학자, 뮤지션, 동네 펍 주인, 수영 선수가 되는 삶, 평범하지만 지루한 삶, 아이가 있는 삶 등등 가장 ‘완벽한 삶’을 찾을 때까지 수만 가지의 새로운 삶을 거친다. 
				그러나 노라는 자꾸만 ‘자정의 도서관’으로 돌아오게 되고, 무엇이 완벽한 삶인지 의문을 품는다.
				20대에 심한 우울증을 겪으며 정신적 붕괴를 경험했던 작가 매트 헤이그는 ‘살아야 할 이유’에 대해서 끊임없이 고민해왔고, 신작 장편소설 《미드나잇 라이브러리》에서 자신만의 해답을 구한다.
                </p>
              </div>

              <div class="meta-bottom">
     
                <i class="bi bi-tags"></i>
                <ul class="tags">
                  <li><a href="#">마법 </a></li>
                  <li><a href="#">인생 </a></li>
                  <li><a href="#">죽음 </a></li>
                  <li><a href="#">삶 </a></li>
                </ul>
              </div><!-- End meta bottom -->
            </article><!-- End blog post -->

            <div class="post-author d-flex align-items-center">
             <div class="float:right";>
              	<img src="../resources/images/haig.jpg">
             </div>
              <div>
                <h4>저자 '매트 헤이그 <Matt Haig>' </h4>
                <p>
                “강렬한 존재감과 위대한 재능을 가진 소설가”로 평가받는 영국의 소설가이자 동화작가. 
				기발한 상상력에 유머와 위트가 더해진 그의 작품은 독자들에게 큰 공감과 위로를 주며 많은 사랑을 받고 있다.
				2014년 《휴먼: 어느 외계인의 기록》으로 에드거상 최종 후보에 올랐고, 2015년 우울증을 극복한 과정을 담은 에세이 《살아야 할 이유》가 영국에서 베스트셀러가 되며, 
				“마음 건강에 대하여 우리 시대에 가장 영향력 있는 작가”로 자리매김했다. 
				그 외에도 20여 편 이상이 되는 그의 작품은 30여 개 이상의 언어로 번역 출판되었다.
                </p>
              </div>
            </div><!-- End post author -->

			<div class="post-author align-items-center">
           		<div class="comments">
              		<h4 class="comments-count">리뷰 </h4>
              		<div id="comment-1" class="comment">
	                  	<div>
	                    <h5>kksky</h5>
	                    <time datetime="2022-08-12">12 Aug,2022</time>
	                    <p>
	      				우리의 인생은 무한한 갈래로 나뉘어 갈 수 있다는 교훈을 준 책이다.
						현재 우리의 선택에 따라서 우린 팝스타가 될수도 있고 세계적 운동선수가 될수도 있다. 하지만 그 어떤것도 아닐수도 있다.
	                    </p>
	                  	</div>
               		 </div>
        		 </div>
        		 <div class="comments"></div>
             		 <div id="comment-2" class="comment">
		                  <div>
		                    <h5>junghi</h5>
		                    <time datetime="2022-07-20">20 Jul,2022</time>
		                    <p>
							시간여행을 소재로 한 소설은 언제나 흥미롭다. 
							특히 이 소설처럼 후회를 기반으로 다른 삶을 살아볼수 있다는 건 상상을 넘어 가슴 저릿한 희열을 느끼게 한다.
							</p>
		                  </div>
             		 </div><!-- End comment #2-->
				</div>
            
			 
			<div class="post-author align-items-center">
           		<div class="comments" >
	             	<h4 class="comments-count">문장수집 </h4>
	             	<div id="comment-1" class="comment">
	                  <div>
	                    <h5>hjmm </h5>
	                    <time datetime="2022-04-08">08 Apr,2022</time>
	                    <p>"마음속으로 생각할 때는 웃긴 말 같았는데 막상 입 밖에 내고 보니 별로였다."</p>
	                    
	                    <h5>hyojj </h5>
	                    <time datetime="2022-08-13">13 Aug,2022</time>
	                    <p>"또 다른 삶을 사는 우리가 지금의 나보다 더 나을지 나쁠지는 알 수 없다. 
	                    	우리가 살지 못한 삶들이 진행되고 있은 건 사실이지만, 
	                    	우리의 삶도 진행되고 있으며 우리는 거기에 초점을 맞춰야 한다."</p>
	                  </div>
               		</div>
             	</div>
            </div><br>
            <button type="button" class="btn btn-outline-warning" style="float:right;"><a href="recommendList">목록</a></button>
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