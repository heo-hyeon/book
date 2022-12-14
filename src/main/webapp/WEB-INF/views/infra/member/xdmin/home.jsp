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

  <title>Home</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&amp;family=Roboto:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&amp;family=Work+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&amp;display=swap" rel="stylesheet">

  <link href="../resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../resources/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="../resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="../resources/vendor/aos/aos.css" rel="stylesheet">
  <link href="../resources/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="../resources/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="../resources/css/main.css" rel="stylesheet">
  
  <style type="text/css">
  	div{
  		/* border: orange 1px solid; */
  	}
  </style>
</head>


<body data-aos-easing="slide" data-aos-duration="800" data-aos-delay="0">

  <header id="header" class="header d-flex align-items-center">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">

      <a href="/" class="logo d-flex align-items-center">
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
  </header>

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="hero">

    <div class="info d-flex align-items-center">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-6 text-center">
            <h2 data-aos="fade-down" class="aos-init aos-animate">Welcome <span>WITH BOOK</span></h2>
             <c:if test="${empty sessSeq }">
             <p data-aos="fade-up" class="aos-init aos-animate">베스트셀러를 바로 확인해보세요!</p>
             <button class="btn btn-outline-warning" type="button" style="width:100px; height:35px; margin:20px; color:white;"><a href="/member/login">로그인</a></button>
           	 </c:if>
           	 <c:if test="${not empty sessSeq}">
	          	<p data-aos="fade-up" class="aos-init aos-animate"><c:out value="${sessName }"/>님! <br>취향과 맞는 책을 추천받아보세요!</p>
	            <button class="btn btn-outline-warning" type="button" id="btnLogout" name="btnLogout" style="width:100px; height:35px; margin:20px; color:white;">로그아웃</button>
          	 </c:if>
          </div>
        </div>
      </div>
    </div>

    <div id="hero-carousel" class="carousel slide" data-bs-ride="carousel" data-bs-interval="5000">

      <div class="carousel-item" style="background-image: url(../resources/images/book.jpg)"></div>
      <div class="carousel-item" style="background-image: url(../resources/images/library.jpg)"></div>
      <div class="carousel-item" style="background-image: url(../resources/images/book2.jpg)"></div>
      <div class="carousel-item" style="background-image: url(../resources/images/book3.jpg)"></div>
      <div class="carousel-item" style="background-image: url(../resources/images/book4.jpg)"></div>
      <div class="carousel-item active" style="background-image: url(../resources/images/glasses.jpg)"></div>

      <a class="carousel-control-prev" href="#hero-carousel" role="button" data-bs-slide="prev">
        <span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
      </a>

      <a class="carousel-control-next" href="#hero-carousel" role="button" data-bs-slide="next">
        <span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
      </a>
    </div>

  </section>
  
   <section id="constructions" class="constructions">
      <div class="container aos-init" data-aos="fade-up">

        <div class="section-header">
          <h2>Best seller</h2>
          <p>이번달 베스트셀러를 만나보세요.</p>
        </div>

        <div class="row gy-4">

          <div class="col-lg-6 aos-init" data-aos="fade-up" data-aos-delay="100">
            <div class="card-item">
              <div class="row">
                <div class="col-xl-5">
                  <div class="card-bg" style="background-image: url(../resources/images/retrogression.jpg); width:230px; height:100px;"></div>
                </div>
                <div class="col-xl-7 d-flex align-items-center">
                  <div class="card-body">
                    <h3 class="card-title"><a href="/book/bestList">역행자</a></h3>
                    <h6 style="color:silver">자청</h6>
                    <p style="color:red;">성공/처세</p>
                    <p>"출판 즉시 베스트셀러 종합1위"</p>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-6 aos-init" data-aos="fade-up" data-aos-delay="200">
            <div class="card-item">
              <div class="row">
                <div class="col-xl-5">
                  <div class="card-bg" style="background-image: url(../resources/images/convenience.jpg); width:210px; height:90px;"></div>
                </div>
                <div class="col-xl-7 d-flex align-items-center">
                  <div class="card-body">
                    <h3 class="card-title"><a href="/book/bestList1">불편한 편의점</a></h3>
                    <h6 style="color:silver">김호연</h6>
                    <p style="color:red;">한국소설</p>
                    <p>"2022년 가장 사랑받는 소설"
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-6 aos-init" data-aos="fade-up" data-aos-delay="300">
            <div class="card-item">
              <div class="row">
                <div class="col-xl-5">
                  <div class="card-bg" style="background-image: url(../resources/images/225.jpg); width:230px; height:100px;"></div>
                </div>
                <div class="col-xl-7 d-flex align-items-center">
                  <div class="card-body">
                    <h3 class="card-title"><a href="/book/bestList2">작별인사</a></h3>
                    <h6 style="color:silver;">김영하</h6>
                    <p style="color:red;">한국소설</p>
                    <p>"3년만에 돌아온 김영하의 신작"</p>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-6 aos-init" data-aos="fade-up" data-aos-delay="400">
            <div class="card-item">
              <div class="row">
                <div class="col-xl-5">
                  <div class="card-bg" style="background-image: url(../resources/images/last.jpg); width:210px; height:90px;"></div>
                </div>
                <div class="col-xl-7 d-flex align-items-center">
                  <div class="card-body">
                    <h3 class="card-title"><a href="/book/bestList3">세상의 마지막 기차역</a></h3>
                    <h6 style="color:silver;">무라케 다케시</h6>
                    <p style="color:red;">일본소설</p>
                    <p>"일본 SNS 화제의 책"</p>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End BestSeller Section -->
  
  <script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="../resources/vendor/aos/aos.js"></script>
  <script src="../resources/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="../resources/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="../resources/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="../resources/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="../resources/vendor/php-email-form/validate.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script> 
	
	<script>
	goBook = function(homeSeq) {
		
		var form = $("#mainForm");
		
		var seq = $("#homeSeq");
		
		seq.val(homeSeq);		
		
		form.attr("action","/book/bestList").submit();
	}; 
	
	$("#btnLogout").on("click", function(){
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
		});
	
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

  <script src="../resources/js/main.js"></script>
  <script src="../resources/js/Validator.js"></script>
</body>
</html>