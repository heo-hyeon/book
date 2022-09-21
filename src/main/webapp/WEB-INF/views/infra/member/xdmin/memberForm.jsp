<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<%@ page session="false"%>
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

      <a href="main.html" class="logo d-flex align-items-center">
        <!-- Uncomment the line below if you also wish to use an image logo -->
        <!-- <images src="../resources/images/logo.png" alt=""> -->
        <h1>With Book<span>.</span></h1>
      </a>

      <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
      <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>
      <nav id="navbar" class="navbar">
	     <ul>
          <li><a href="main.html" class="active">Home</a></li>
          <li><a href="likebook.html">찜한 책 </a></li>
          <li><a href="recommendList.html">추천목록 </a></li>
          <li class="dropdown"><a href="#"><span>내 정보 </span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
            <ul>
              <li><a href="mod.html">기본정보</a></li>
              <li><a href="mypage.html">상세정보</a></li>
              <li><a href="login.html">로그아웃 </a></li>
              <li><a href="#">기타 </a></li>
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
			  <img src="../resources/images/user.png" class="card-img-top">
			  <div class="card-body">
			    <class="card-title"><input type="file">
			  </div>
			</div>
			
			<form class="row g-4" style="margin-left:30px; margin-top:50px; color:white;">
			  <div class="col-md-5">
			 	 <label class="job-label">지원분야 </label>
				  <select class="form-control">
				  	<option value="md">기획/MD</option>
				  	<option value="it">IT개발</option>
				  	<option value="technology">기술/전략</option>
				  	<option value="marketing">마케팅/홍보</option>
				  	<option value="accounting">회계/총무</option>
				  	<option value="sales">영업/판매</option>
				  </select>
			  </div>
			  <div class="col-md-5">
			  	<label class="career-label">경력사항</label>
			  	  <select class="form-control">
			  	  	<option value="junior">신입</option>
			  	  	<option value="senior">경력</option>
			  	  </select>
			  </div>
			  <div class="col-md-5">
			    <label class="name-label">이름 </label>
			    <input type="text" class="form-control">
			  </div>
			  <div class="col-md-5">
			    <label class="nameEn-label">영문이름 </label>
			    <input type="text" class="form-control">
			  </div>
			  <div class="col-md-5">
			    <label class="region-label">지역</label>
			    <input type="text" class="form-control">
			  </div>
			  <div class="col-md-5">
			    <label class="id-label">아이디 </label>
			    <input type="password" class="form-control">
			  </div>
			  <div class="col-md-5">
			    <label class="pwd-label">비밀번호 </label>
			    <input type="text" class="form-control" placeholder="영어,숫자,특수문자 포함 8자 이상 ">
			  </div>
			  <div class="col-md-5">
			    <label class="pwd-check-label">비밀번호 확인 </label>
			    <input type="text" class="form-control" placeholder="영어,숫자,특수문자 포함 8자 이상 ">
			  </div>
			   <div class="col-md-5">
			    <label class="birth-label">생년월일 </label>
			    <input type="date" class="form-control">
			  </div>
		      <div class="col-md-5">
			    <label class="hobby-label">취미</label>
			    <input type="text" class="form-control">
			  </div>
			  <div class="row">
			    <label class="phone-label">휴대전화 </label>
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
			    <label class="phone-label">비상연락망 </label>
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
			    <label class="email-label">이메일 </label>
			     <input type="text" class="form-control">
			  </div>	
			  <div class="col-md-5">
			  	<label class="certification-label">자격증</label>
			  	  <select class="form-control">
			  	  	<option value="Ycerti">유</option>
			  	  	<option value="Ncerti">무</option>
			  	  </select>
			  </div>
			<%--   <div class="col-md-3">
			  	<label class="zipcode-label">우편번호</label>
			  	<input type="text" class="form-control" id="sample6_postcode" name="zipCodeArray" value="<c:out value="${item.zipCode}"/>" >
		  	 </div>
		  	 <div style="margin-top:20px;">
			  	<button type="button" id="btnAddress"  onclick="sample6_execDaumPostcode()"  class="btn btn-outline-secondary"><i class="fas fa-search"></i></button>
			  	<button type="button" id="btnAddressClear" class="btn btn-outline-secondary"><i class="fa-solid fa-x"></i></button>
			  </div>
			  <div class="col-md-7">
			  	<label class="address-label">주소</label>
			  	<input type="text" class="form-control" id="sample6_address" name="sample6_address" value="<c:out value="${item.Address1}"/>" >
			  </div>
			  <div class="col-md-5">
			  	<label class="address-label">상세주소</label>
			  		<input type="text" class="form-control" id="sample6_detailAddress" name="sample6_detailAddress" value="<c:out value="${item.Address1}"/>" >
			  </div>
			<div class="col-md-4">
			  	<label class="address-datail-label">참고항목</label>
			  		<input type="text" class="form-control"  id="sample6_extraAddress" name="sample6_extraAddress" value="<c:out value="${item.Address2}"/>" >
			  </div> --%>
			  <div class="form-check form-check-inline">
				<label class="genre-label">관심 장르 </label><br>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
					  <label class="form-check-label" for="inlineRadio1">소설</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2">
					  <label class="form-check-label" for="inlineRadio2">시/에세이</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3">
					  <label class="form-check-label" for="inlineRadio3">자기계발</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio4">
					  <label class="form-check-label" for="inlineRadio4">인문</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio5">
					  <label class="form-check-label" for="inlineRadio1">역사/문화</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio6">
					  <label class="form-check-label" for="inlineRadio2">경제/경영</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio7">
					  <label class="form-check-label" for="inlineRadio3">취미/여행</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio8">
					  <label class="form-check-label" for="inlineRadio4">건강/스포츠</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio9">
					  <label class="form-check-label" for="inlineRadio4">정치/사회</label>
					</div>
				</div>
			  	<div class="d-grid garp-2 col-4 mx-auto">
			  		<br><a href="/"><button type="button" class="btn btn-outline-warning ma-auto">가입하기</a>
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


   <!-- Vendor JS Files -->
  <script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="../resources/vendor/aos/aos.js"></script>
  <script src="../resources/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="../resources/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="../resources/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="../resources/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="../resources/vendor/php-email-form/validate.js"></script>
  
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <!-- Template Main JS File -->
 
  <script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
<script type="text/javascript">
 		$("#btnAddressClear").on("click",function() {
 		$("#sample6_postcode").val(null);
 		$("#sample6_address").val(null);
 		$("#sample6_detailAddress").val(null);
 		$("#sample6_extraAddress").val(null);
 	});
</script>
</body>
</html>