<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<%@ page session="true"%>
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
<link href="../resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="../resources/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="../resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet">
<link href="../resources/vendor/aos/aos.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- Validation  -->
<script type="text/javascript" src="/Validator.js"></script>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script type="text/javascript">
	$(document).ready(
			function() {
				$.datepicker.setDefaults($.datepicker.regional['ko']);
				$("#datepicker")
						.datepicker(
								{
									changeMonth : true,
									changeYear : true,
									nextText : '다음 달',
									prevText : '이전 달',
									dayNames : [ '일요일', '월요일', '화요일', '수요일',
											'목요일', '금요일', '토요일' ],
									dayNamesMin : [ '일', '월', '화', '수', '목',
											'금', '토' ],
									monthNamesShort : [ '1월', '2월', '3월', '4월',
											'5월', '6월', '7월', '8월', '9월',
											'10월', '11월', '12월' ],
									monthNames : [ '1월', '2월', '3월', '4월',
											'5월', '6월', '7월', '8월', '9월',
											'10월', '11월', '12월' ],
									dateFormat : "yy-mm-dd",
									maxDate : 0,
								// 선택할수있는 최소날짜, ( 0 : 오늘 이후 날짜 선택 불가)

								});
			});
</script>
<link href="../resources/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="../resources/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="../resources/css/main.css" rel="stylesheet">
<style>
.choice {
	padding: 20px;
	margin: 20px;
}
</style>

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
		<div
			class="container-fluid container-xl d-flex align-items-center justify-content-between">

			<a href="/" class="logo d-flex align-items-center"> <!-- Uncomment the line below if you also wish to use an image logo -->
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
	</header>
	<!-- End Header -->
	
  	<main id="main">
    	<div class="breadcrumbs d-flex align-items-center" style="background-image: url('../resources/images/book.jpg');">
	      <div class="container position-relative d-flex flex-column align-items-center aos-init aos-animate" data-aos="fade">
	
	        <h2>회원가입</h2>
	        <ol>
	          <li><a href="/member/home">Home</a></li>
	          <li>회원가입</li>
	        </ol>
	      </div>
	    </div><!-- End Breadcrumbs -->

	<!-- ======= Reg Section ======= -->
	<section id="blog" class="blog">
			<div class="info d-flex align-items-center">
				<div class="container" data-aos="fade">

		  <form action="/member/memberInst" method="post" enctype="multipart/form-data">
		  
					<div class="card"
						style="width: 19rem; float: left; margin-left: 30px; margin-top: 100px;">
						<img src="../resources/images/user.png" class="card-img-top">
						<div class="card-body">
							<div class="card-title"> 
							<input type="file" name="uploadedImage" required multiple />
							<button>업로드</button>
							</div>
						</div>
					</div>
			</form>
					<form class="row g-4" name="form" style="margin-top:70px;">
					<input type="hidden" name="seq" id="seq" value="<c:out value="${item.seq}"/>">
					<div class="col-md-5">
						<label class="name-label" for="memberName">이름 </label> 
						<input type="text" class="form-control" id="memberName" name="memberName" value="<c:out value="${item.memberName}"/>">
					</div>
					<div class="col-md-5">
						<label class="nameEn-label" for="memberName_en">영문이름 </label>
						<input type="text" class="form-control" id="memberName_en" name="memberName_en" value="<c:out value="${item.memberName_en}"/>">
					</div>
					<div class="col-md-5">
						<label class="region-label" for="region">지역</label> 
						<select class="form-control" name="region" id="region" value="<c:out value="${item.region}"/>">
							<option value=""
								<c:if test="${empty item.region}">selected</c:if>>지역</option>
							<option value="13"
								<c:if test="${item.region eq 1}">selected</c:if>>서울</option>
							<option value="14"
								<c:if test="${item.region eq 2}">selected</c:if>>경기</option>
							<option value="15"
								<c:if test="${item.region eq 3}">selected</c:if>>대전</option>
							<option value="16"
								<c:if test="${item.region eq 4}">selected</c:if>>대구</option>
							<option value="17"
								<c:if test="${item.region eq 5}">selected</c:if>>부산</option>
							<option value="18"
								<c:if test="${item.region eq 6}">selected</c:if>>광주</option>
						</select>
					</div>
					<div class="col-md-5">
						<label class="id-label" for="memberID">아이디 </label> <input
							type="hidden" id="formIdAllowedNY" name="formIdAllowedNY"
							value="0"> <input type="text" class="form-control"
							id="memberID" name="memberID"
							value="<c:out value="${item.memberID}"/>">
						<div class="invalid-feedback" id="ifIDFeedback"></div>
					</div>
					<div class="col-md-5">
						<label class="pwd-label" for="pwd">비밀번호 </label> <input
							type="password" class="form-control" id="pwd" name="pwd"
							value="<c:out value="${item.pwd}"/>"
							placeholder="영어,숫자,특수문자 포함 8자 이상 ">
					</div>
					<div class="row">
						<div class="col-md-5">
							<label class="pwd-check-label" for="pwdCheck">비밀번호 확인 </label> <input
								type="hidden" id="formPwdAllowedNY" name="formPwdAllowedNY"
								value="0"> <input type="password" class="form-control"
								id="pwdCheck" name="pwdCheck"
								value="<c:out value="${item.pwdCheck}"/>"
								placeholder="영어,숫자,특수문자 포함 8자 이상 ">
						</div>
						<div class="col-md-5">
							<span id="alert-success"
								style="display: none; text-align: left; font-size: 15px; font-weight: bold;"><i
								class="fa-solid fa-circle-info"></i>비밀번호가 일치합니다.</span> <span
								id="alert-danger"
								style="dispaly: none; text-align: left; font-size: 15px; font-weight: bold; color: #c53e3e"><i
								class="fa-solid fa-circle-info"></i>비밀번호가 일치하지 않습니다.</span>
						</div>
					</div>
					<%-- <div class="col-md-5">
						<label class="birth-label" for="dob">생년월일 </label> <input
							type="date" class="form-control" id="datepicker" name="dob"
							value="<c:out value="${item.dob}"/>">
					</div> --%>
					<div class="row">
						<label class="phone-label" for="phone">휴대전화 </label>
						<div class="col-1">
							<select class="form-control" name="telecom" id="telecom"
								value="<c:out value="${item.telecom}"/>">
								<option value="22"
									<c:if test="${item.telecom eq 7}">selected</c:if>>SKT</option>
								<option value="23"
									<c:if test="${item.telecom eq 8}">selected</c:if>>KT</option>
								<option value="24"
									<c:if test="${item.telecom eq 9}">selected</c:if>>LGT</option>
							</select>
						</div>
						<div class="col-4">
							<input type="text" class="form-control" id="phone" name="phone"
								value="<c:out value="${item.phone}"/>">
						</div>
					</div>
					<div class="row">
						<label class="email-label" for="email">이메일 </label>
						<div class="col-5">
							<input type="text" class="form-control" id="email" name="email"
								value="<c:out value="${item.email}"/>">
						</div>
						@
						<div class="col-5">
							<select class="form-control" id="email_code" name="email_code" value="<c:out value="${item.email_code}"/>">
								<option value="">도메인</option>
								<option value="19"
									<c:if test="${item.email_code eq 10}">selected</c:if>>naver.com</option>
								<option value="20"
									<c:if test="${item.email_code eq 11}">selected</c:if>>hanmail.net</option>
								<option value="21"
									<c:if test="${item.email_code eq 12}">selected</c:if>>gmail.com</option>
							</select>
						</div>
					</div>
					
					<!--주소 api -->
				    <div class="col-md-3">
					  	<label class="zipcode-label">우편번호</label>
					  	<input type="text" class="form-control" id="sample6_postcode" name="zipCodeArray" value="<c:out value="${item.zipCode}"/>">
				  	 </div>
				  	 <div style="margin-top:10px;">
					  	<button type="button" id="btnAddress"  onclick="sample6_execDaumPostcode()"  class="btn btn-outline-secondary"><i class="fas fa-search"></i></button>
					  	<button type="button" id="btnAddressClear" class="btn btn-outline-secondary"><i class="fa-solid fa-x"></i></button>
					  </div>
					  <div class="col-md-5">
					  	<label class="address-label">주소</label>
					  	<input type="text" class="form-control" id="sample6_address" name="sample6_address" value="<c:out value="${item.address1}"/>" >
					  </div>
					  <div class="col-md-5">
					  	<label class="address-label">상세주소</label>
					  		<input type="text" class="form-control" id="sample6_detailAddress" name="sample6_detailAddress" value="<c:out value="${item.address2}"/>" >
				  	  </div>
					  <div class="col-md-4">
					  	<label class="address-datail-label">참고항목</label>
					  		<input type="text" class="form-control"  id="sample6_extraAddress" name="sample6_extraAddress" value="<c:out value="${item.address3}"/>" >
					  </div>
					  <div class="col-md-3">
					  	<label class="address-datail-label">위도</label>
					  		<input type="text" class="form-control"  id="Lat" name="Lat" value="<c:out value="${item.Lat}"/>" >
					  </div>
					  <div class="col-md-3">
					  	<label class="address-datail-label">경도</label>
					  		<input type="text" class="form-control"  id="Lng" name="Lng" value="<c:out value="${item.Lng}"/>" >
					  </div> 
					  
					<%-- <div class="form-check form-check-inline">
						<label class="genre-label">관심 장르 </label> <br>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio"
								name="inlineRadioOptions" id="inlineRadio1" value="25"
								<c:if test="${item.genre eq 25}">selected</c:if>> <label
								class="form-check-label" for="inlineRadio1">소설</label>
							<!-- value="<c:out value="${item.genre}"/>"> -->
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio"
								name="inlineRadioOptions" id="inlineRadio2" value="26"
								<c:if test="${item.genre eq 26}">selected</c:if>> <label
								class="form-check-label" for="inlineRadio2">시/에세이</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio"
								name="inlineRadioOptions" id="inlineRadio3" value="27"
								<c:if test="${item.genre eq 27}">selected</c:if>> <label
								class="form-check-label" for="inlineRadio3">자기계발</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio"
								name="inlineRadioOptions" id="inlineRadio4" value="28"
								<c:if test="${item.genre eq 28}">selected</c:if>> <label
								class="form-check-label" for="inlineRadio4">인문</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio"
								name="inlineRadioOptions" id="inlineRadio5" value="29"
								<c:if test="${item.genre eq 29}">selected</c:if>> <label
								class="form-check-label" for="inlineRadio1">역사/문화</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio"
								name="inlineRadioOptions" id="inlineRadio6" value="30"
								<c:if test="${item.genre eq 30}">selected</c:if>> <label
								class="form-check-label" for="inlineRadio2">경제/경영</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio"
								name="inlineRadioOptions" id="inlineRadio7" value="31"
								<c:if test="${item.genre eq 31}">selected</c:if>> <label
								class="form-check-label" for="inlineRadio3">취미/여행</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio"
								name="inlineRadioOptions" id="inlineRadio8" value="32"
								<c:if test="${item.genre eq 32}">selected</c:if>> <label
								class="form-check-label" for="inlineRadio4">건강/스포츠</label>
						</div>
					</div> --%>

					<div style="width: 83%; margin: 20px 0 20px 0px;">
						<button class="btn btn-warning" type="button" id="btnList"
							style="float: left; color: white;">
							<i class="fa-solid fa-chart-bar"></i>
						</button>
						<button type="button" class="btn btn-danger"
							style="margin-left: 6px;" id="uelBtn" data-bs-toggle="modal"
							data-bs-target="#exampleModal2" style="color: white;">
							<i class="fa-solid fa-x"></i>
						</button>
						<button class="btn btn-success" type="button" id="btnSave"
							style="float: right;">
							<i class="fa-regular fa-bookmark"></i>
						</button>
						<button class="btn btn-danger" type="button"
							style="float: right; margin-right: 4px;" id="delBtn"
							data-bs-toggle="modal" data-bs-target="#exampleModal">
							<i class="fa-solid fa-trash-can-arrow-up"></i>
						</button>

					</div>
					
					</form>
				</div>
			</div>
<!-- 
			<div id="hero-carousel" class="carousel slide"
				data-bs-ride="carousel" data-bs-interval="5000">
				<div class="carousel-item"
					style="background-image: url(../resources/images/book.jpg)"></div>
				<div class="carousel-item"
					style="background-image: url(../resources/images/library.jpg)"></div>
				<div class="carousel-item"
					style="background-image: url(../resources/images/book2.jpg)"></div>
				<div class="carousel-item"
					style="background-image: url(../resources/images/book3.jpg)"></div>
				<div class="carousel-item active"
					style="background-image: url(../resources/images/book4.jpg)"></div>
				<div class="carousel-item"
					style="background-image: url(../resources/images/glasses.jpg)"></div>

				<a class="carousel-control-prev" href="#hero-carousel" role="button"
					data-bs-slide="prev"> <span
					class="carousel-control-prev-icon bi bi-chevron-left"
					aria-hidden="true"></span>
				</a> <a class="carousel-control-next" href="#hero-carousel"
					role="button" data-bs-slide="next"> <span
					class="carousel-control-next-icon bi bi-chevron-right"
					aria-hidden="true"></span>
				</a>
			</div> -->

			<div class="modal fade" id="exampleModal2" data-bs-keyboard="false"
				tabindex="-1" aria-labelledby="exampleModalLabel2"
				aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel2">
								<b>삭제</b>
							</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">사용 안 하시겠습니까?</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">취소</button>
							<button type="button" class="btn btn-dark" id="btnUelete">삭제
							</button>
						</div>
					</div>
				</div>
			</div>

			<!-- 휴지통 Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">

						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">
								<b>삭제</b>
							</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal"
								aria-label="Close"></button>
						</div>
						<div class="modal-body">정말로 삭제하시겠습니까?</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">취소</button>
							<button type="button" class="btn btn-dark" id="btnDelete">삭제
							</button>
						</div>
					</div>
				</div>
			</div>
	</section>
	</main>
	
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
	
	<!-- Vendor JS Files -->
	<script src="../resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="../resources/vendor/aos/aos.js"></script>
	<script src="../resources/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="../resources/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="../resources/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="../resources/vendor/purecounter/purecounter_vanilla.js"></script>
	<script src="../resources/vendor/php-email-form/validate.js"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<!-- Template Main JS File -->
	<script src="../resources/js/main.js"></script>

	<!-- kakao API -->
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=22387596e35f0559f6bc0a3c5bf81050&libraries=services"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

	
	 <script>
		function sample6_execDaumPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
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
							if (data.userSelectedType === 'R') {
								// 법정동명이 있을 경우 추가한다. (법정리는 제외)
								// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
								if (data.bname !== ''
										&& /[동|로|가]$/g.test(data.bname)) {
									extraAddr += data.bname;
								}
								// 건물명이 있고, 공동주택일 경우 추가한다.
								if (data.buildingName !== ''
										&& data.apartment === 'Y') {
									extraAddr += (extraAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
								if (extraAddr !== '') {
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
							document.getElementById("sample6_detailAddress")
									.focus();

							// 위도 경도
							//주소-좌표 변환 객체 생성
							var geocoder = new daum.maps.services.Geocoder();

							//주소로 좌표 검색
							geocoder.addressSearch(data.address, function(result, status) {
								//정상적으로 검색이 완료됐으면,	
								if (status == daum.maps.services.Status.OK) {
									console.log(result[0]);
									document
											.getElementById("Lat").value = result[0].y;
									document
											.getElementById("Lng").value = result[0].x;
									}
								})
							}
						}).open();
					}
	</script>
	
	<script type="text/javascript">
		$("#btnAddressClear").on("click", function() {
			$("#sample6_postcode").val(null);
			$("#sample6_address").val(null);
			$("#sample6_detailAddress").val(null);
			$("#sample6_extraAddress").val(null);
			$("#Lat").val(null);
			$("#Lng").val(null);
		});
	</script>
 
	<script>
		$("#memberID")
				.on(
						"focusout",
						function() {

							$
									.ajax({
										async : true,
										cache : false,
										type : "post"
										/* ,dataType:"json" */
										,
										url : "/member/checkId"
										/* ,data : $("#formLogin").serialize() */
										,
										data : {
											"memberID" : $("#memberID").val()
										},
										success : function(response) {
											if (response.rt == "success") {
												document
														.getElementById("memberID").classList
														.remove('is-invalid');
												document
														.getElementById("memberID").classList
														.add('is-valid');
												document
														.getElementById("ifIDFeedback").classList
														.remove('invalid-feedback');
												document
														.getElementById("ifIDFeedback").classList
														.add('valid-feedback');
												document
														.getElementById("ifIDFeedback").innerText = "사용 가능 합니다.";
												document
														.getElementById("formIdAllowedNY").value = 1;
											} else {
												document
														.getElementById("memberID").classList
														.add('is-invalid');
												document
														.getElementById("ifIDFeedback").classList
														.remove('valid-feedback');
												document
														.getElementById("ifIDFeedback").classList
														.add('invalid-feedback');
												document
														.getElementById("ifIDFeedback").innerText = "사용 불가능 합니다";
												document
														.getElementById("formIdAllowedNY").value = 0;
											}
										},

										error : function(jqXHR, textStatus,
												errorThrown) {
											alert("ajaxUpdate "
													+ jqXHR.textStatus + " : "
													+ jqXHR.errorThrown);
										}
									});
						});

		//비밀번호 일치 확인
		$("#pwdCheck").on("focusout", function() {
			var pwd1 = $("#pwd").val();
			var pwd2 = $("#pwdCheck").val();

			if (pwd1 != '' && pwd2 == '') {
				null;
			} else if (pwd1 != '' || pwd2 != '') {
				if (pwd1 == pwd2) {
					$("#alert-success").css('display', 'inline-block');
					$("#alert-danger").css('display', 'none');
					document.getElementById("formPwdAllowedNY").value = 1;
				} else {
					$("#alert-success").css('display', 'none');
					$("#alert-danger").css('display', 'inline-block');
					document.getElementById("formPwdAllowedNY").value = 0;
				}
			}
		});
	</script>

	<script type="text/javascript">
		var goUrlList = "/member/memberList"; /* #-> */
		var goUrlInst = "/member/memberInst"; /* #-> */
		var goUrlUpdt = "/member/memberUpdt"; /* #-> */
		var goUrlUele = "/member/memberUele"; /* #-> */
		var goUrlDele = "/member/memberDele"; /* #-> */

		var seq = $("input:hidden[name=seq]"); /* #-> */

		var form = $("form[name=form]");

		$("#btnSave").on("click", function() {

			if (seq.val() == "0" || seq.val() == "") {
				form.attr("action", goUrlInst).submit();
			} else {
				form.attr("action", goUrlUpdt).submit();
			}

			/* form.attr("action", goUrlInst).submit(); */
		});

		$("#btnList").on("click", function() {
			form.attr("action", goUrlList).submit();
		});
	</script>

	<script type="text/javascript">
		$("#btnUelete").on("click", function() {
			form.attr("action", goUrlUele).submit();
		});

		$("#btnDelete").on("click", function() {
			form.attr("action", goUrlDele).submit();
		});
	</script>
	
	<script type="text/javascript" src="../resources/js/Validator.js"></script>

</body>
</html>