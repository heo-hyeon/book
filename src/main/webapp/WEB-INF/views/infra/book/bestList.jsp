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
  <link rel="preconnect" href="https://fonts.gstatic.com">
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

        <h2>Best Seller </h2>
        <ol>
          <li><a href="/member/home">Home</a></li>
          <li>Best Seller Details</li>
        </ol>

      </div>
    </div><!-- End Breadcrumbs -->

    <!-- ======= Blog Details Section ======= -->
    
     <section id="blog" class="blog">
      <div class="container aos-init aos-animate" data-aos="fade-up" data-aos-delay="100">
        <div class="row g-5">
          <div class="col-lg-8" style="margin:auto; text-align:center;">
            <article class="blog-details">
              <div class="post-img" style="text-align:center; margin-top:3px;">
                <img src="../resources/img/best1.jpeg" style="width:400px; height:500px;" class="img-fluid">
              </div>
              <h2 class="title" style="text-align:center;">역행자 </h2>
              <div class="meta-top">
                <ul class="d-flex justify-content-center">
                  <li><i class="bi bi-person"></i>자청</li>
                  <li><i class="bi bi-pen"></i>웅진지식하우스</li>
                </ul>
              </div><!-- End meta top -->
              
              <div class="content">
                <blockquote>
                  <p>
                    오타쿠 흙수저에서 월 1억 자동 수익을 실현한 무자본 연쇄창업마, 라이프해커 자청의 인생 역주행 공식 대공개!
                  </p>
                </blockquote>

                <p>
                 대부분의 사람들은 유전자와 본성의 명령을 그대로 따르기 때문에 평범함을 벗어날 수 없다. 하지만 정작 자신은 이를 모른 채 '나는 달라' 하는 자의식에 사로잡혀서 무한 합리화에 빠져 살아간다. 
                 스스로가 얼마나 많은 정신적, 심리적 오류를 저지르는지 알지 못한 채 매일 똑같은 쳇바퀴를 돌 뿐이다. 
                 왜 우리는 진짜 자유를 얻지 못하는가? 왜 늘 돈 이야기를 하면서도 평생 돈에 허덕이는가?
                </p>
              </div>

              <div class="meta-bottom">
                <i class="bi bi-tags"></i>
                <ul class="tags">
                  <li><a href="#">자수성가 </a></li>
                  <li><a href="#">라이프해커 </a></li>
                </ul>
              </div><!-- End meta bottom -->
            </article><!-- End blog post -->

            <div class="post-author d-flex align-items-center">
              <img src="../resources/img/blog/blog-author.jpg" class="rounded-circle flex-shrink-0" alt="">
              <div>
                <h4>저자 '자청' </h4>
                <p>
                ‘무자본 창업가’로 유명해진 저자는 2019년, 20편의 영상으로 10만 구독자를 넘어서며 화제를 모은 후 미련 없이 유튜브 〈라이프해커 자청〉을 그만뒀다. 
                이후 본업인 온라인 마케팅 비즈니스를 비롯해 다방면으로 사업을 확장했다. 
                대표적으로 ‘이상한마케팅’, ‘프드프’, ‘아트라상’, ‘큐어릴’부터 지분 투자로 참여한 ‘라이프해킹스쿨’, ‘유튜디오’, 오프라인 사업으로 ‘욕망의북카페’, ‘인피니’ 등이 있다. 
                이미 30대 초반 무렵에 어떤 일을 하지 않아도 월 1억씩 버는 자동 수익을 완성했으며, 소유한 자산으로 매년 20퍼센트 이상의 투자 수익률을 올리며 경제적 자유를 실현했다.
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
	          <button type="button" class="btn btn-outline-warning" style="float:right;"><a href="/member/home">돌아가기</a></button>
    
   <!-- <section id="blog" class="blog">
      <form method="post" name="form">
      <input type="hidden" name="bookSeq" id="bookSeq" value="<c:out value="${item.seq}"/>"/>
	    <div class="container aos-init aos-animate" data-aos="fade-up" data-aos-delay="100">
        <div class="row g-5">
          <div class="col-lg-8" style="margin:auto; text-align:center;">
            <article class="blog-details">
            
              <div class="post-images" style="text-align:center; margin-top:3px;">
                <img src="<c:out value="${item.path}"/><c:out value="${item.uuidName}"/>" style="width:400px; height:500px;" class="images-fluid">
              </div>
              
              <h2 class="title" style="text-align:center;"><c:out value="${item.name}"/> </h2>
              <div class="meta-top">
                <ul class="d-flex justify-content-center">
                  <li><i class="bi bi-person"></i><c:out value="${item.writerName}"/></li>
                  <li><i class="bi bi-pen"></i><c:out value="${item.publisher}"/></li>
                </ul>
              </div>

              <div class="content">
                <blockquote>
                  <p>
                 	 <c:out value="${item.title}"/>
                  </p>
                </blockquote>

                <p>
               		<c:out value="${item.explanation}" />
                </p>
              </div>

	              <div class="meta-bottom">
	                <i class="bi bi-tags"></i>
		                <ul class="tags">
			              <c:forEach items="${list}" var="list" varStatus="status">
		                  <li><c:out value="${list.keyword }"/></li>
				          </c:forEach>
		                </ul>
	              </div>
            </article>

            <div class="post-author d-flex align-items-center">
              <div class="float:right">
              	<img src="../resources/images/ja.jpg">
              </div>
	              <div>
	                <h4>저자 '<c:out value="${item.writerName}"/>' </h4>
	                <p>
	                	<c:out value="${item.writerExp}" />
	                </p>
	              </div>
            </div>

			<div class="post-author align-items-center">
            	<div class="comments">
              		<h4 class="comments-count">리뷰 </h4>
             		
	             		<div id="comment-1" class="comment">
             			  <ol>
             			  <c:forEach items="${list1}" var="list1" varStatus="status">
			                 	<li><c:out value="${list1.reviewContents}"/></li>
            			  </c:forEach>
					      </ol>
		             	 </div><br>
             	 </div>
              </div><!-- End comment #2-->
              
	    <%--  <form name="formVo" id="formVo" method="post">
				<input type="hidden" name="seq" value="<c:out value="${vo.seq}"/>"/>
			  </form> --%>
          </div>
         </div>
        </div>
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

    <script src="../resources/js/main.js"></script>
  
  	<script>
		var form = $("form[name=form]");
		
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
						location.href = "/"
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