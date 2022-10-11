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

  <title>수정 페이지</title>
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
  
  <style>
  	.choice {
  		padding:20px;
  		margin:20px;
  	}
  
  	
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
          <li><a href="/book/likebook">찜한 책 </a></li>
          <li><a href="/book/recommendList">추천목록</a></li>
          <li class="dropdown"><a href="#"><span>내 정보 </span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
            <ul>
              <li><a href="/user/userMod?seq=<c:out value="${item.seq}"/>">기본정보</a></li>
              <li><a href="/user/mypage">상세정보</a></li>
              <li><a onclick="logout()">로그아웃</a></li>
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
	   
		<form class="row g-4" name="form" style="margin-left:30px; margin-top:50px; color:white;">
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
					<option value="" <c:if test="${empty item.region}">selected</c:if>>지역</option>
					<option value="13" <c:if test="${item.region eq 13}">selected</c:if>>서울</option>
					<option value="14" <c:if test="${item.region eq 14}">selected</c:if>>경기</option>
					<option value="15" <c:if test="${item.region eq 15}">selected</c:if>>대전</option>
					<option value="16" <c:if test="${item.region eq 16}">selected</c:if>>대구</option>
					<option value="17" <c:if test="${item.region eq 17}">selected</c:if>>부산</option>
					<option value="18" <c:if test="${item.region eq 18}">selected</c:if>>광주</option>
				</select>
			</div>
			<div class="col-md-5">
				<label class="id-label" for="memberID">아이디 </label>
				<input type="hidden" id="formIdAllowedNY" name="formIdAllowedNY" value="0">
				<input type="text" class="form-control" id="memberID" name="memberID" value="<c:out value="${item.memberID}"/>">
				<div class="invalid-feedback" id="ifIDFeedback"></div>
			</div>
			<div class="col-md-5">
				<label class="pwd-label" for="pwd">비밀번호 </label>
				<input type="hidden" id="formPwdAllowedNY" name="formPwdAllowedNY" value="0">
				<input type="password" class="form-control" id="pwd" name="pwd" value="<c:out value="${item.pwd}"/>" placeholder="영어,숫자,특수문자 포함 8자 이상 ">
			</div>
			<div class="row">
				<div class="col-md-5">
		   			<label class="pwd-check-label" for="pwdCheck">비밀번호 확인 </label>
		   			<input type="hidden" id="formPwdAllowedNY" name="formPwdAllowedNY" value="0">
		   			<input type="password" class="form-control" id="pwdCheck" name="pwdCheck" value="<c:out value="${item.pwdCheck}"/>" placeholder="영어,숫자,특수문자 포함 8자 이상 ">
	 			</div> 
	 			<div class="col-md-5">
		 			<span id="alert-success" style="display: none; text-align: left; font-size:15px; font-weight:bold;"><i class="fa-solid fa-circle-info"></i>비밀번호가 일치합니다.</span>
		 			<span id="alert-danger" style="dispaly: none; text-align: left; font-size:15px; font-weight:bold; color:#c53e3e"><i class="fa-solid fa-circle-info"></i>비밀번호가 일치하지 않습니다.</span>
	 			</div>
	 		</div>
			<div class="col-md-5">
				<label class="birth-label" for="dob">생년월일 </label>
				<input type="date" class="form-control" id="dob" name="dob" value="<c:out value="${item.dob}"/>">
			</div>
			<div class="col-md-5">
				<label class="hobby-label" for="hobby">취미</label>
				<select class="form-control" name="hobby" id="hobby" value="<c:out value="${item.hobby}"/>">
					<option value="" <c:if test="${empty item.hobby}">selected</c:if>>취미</option>
					<option value="9" <c:if test="${item.hobby eq 9}">selected</c:if>>낚시</option>
					<option value="10" <c:if test="${item.hobby eq 10}">selected</c:if>>독서</option>
					<option value="11" <c:if test="${item.hobby eq 11}">selected</c:if>>노래</option>
					<option value="12" <c:if test="${item.hobby eq 12}">selected</c:if>>운동</option>
				</select>
			</div>
			<div class="row">
				<label class="phone-label" for="phone">휴대전화 </label>
				<div class="col-1">
					<select class="form-control" name="telecom" id="telecom" value="<c:out value="${item.telecom}"/>">
						<option value="22" <c:if test="${item.telecom eq 22}">selected</c:if>>SKT</option>
						<option value="23" <c:if test="${item.telecom eq 23}">selected</c:if>>KT</option>
						<option value="24" <c:if test="${item.telecom eq 24}">selected</c:if>>LGT</option>
					</select>
				</div>
				<div class="col-4">
					<input type="text" class="form-control" id="phone" name="phone" value="<c:out value="${item.phone}"/>">
				</div>
			</div>
			<div class="row">
				<label class="email-label" for="email">이메일 </label>
				<div class="col-5">
					<input type="text" class="form-control" id="email" name="email" value="<c:out value="${item.email}"/>">
				</div>
				@
				<div class="col-5">
					<select class="form-control" id="email_code" name="email_code" value="<c:out value="${item.email_code}"/>">
						<option value="">도메인</option>
						<option value="19" <c:if test="${item.email_code eq 19}">selected</c:if>>naver.com</option>                                                                             .email_code eq 19}">selected</c:if>>naver.com</option>
						<option value="20" <c:if test="${item.email_code eq 20}">selected</c:if>>hanmail.net</option>
						<option value="21" <c:if test="${item.email_code eq 21}">selected</c:if>>gmail.com</option>
					</select>
				</div>
			</div>
			<div class="col-md-5">
				<label class="certification-label" for="certifiNY">자격증</label>
				<select class="form-control" name="certifiNY" id="certifiNY">
					<option value="1" <c:if test="${item.certifiNY eq 1}">selected</c:if>>유</option>
					<option value="0" <c:if test="${item.certifiNY eq 0}">selected</c:if>>무</option>
				</select>
			</div>
			<div class="form-check form-check-inline">
				<label class="genre-label">관심 장르 </label>
				<br>                                 
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="25" <c:if test="${item.genre eq 25}">selected</c:if>>
					<label class="form-check-label" for="inlineRadio1">소설</label> 
					<!-- value="<c:out value="${item.genre}"/>"> -->
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="26" <c:if test="${item.genre eq 26}">selected</c:if>>
					<label class="form-check-label" for="inlineRadio2">시/에세이</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="27" <c:if test="${item.genre eq 27}">selected</c:if>>
					<label class="form-check-label" for="inlineRadio3">자기계발</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio4" value="28" <c:if test="${item.genre eq 28}">selected</c:if>>
					<label class="form-check-label" for="inlineRadio4">인문</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio5" value="29" <c:if test="${item.genre eq 29}">selected</c:if>>
					<label class="form-check-label" for="inlineRadio1">역사/문화</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio6" value="30" <c:if test="${item.genre eq 30}">selected</c:if>>
					<label class="form-check-label" for="inlineRadio2">경제/경영</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio7" value="31" <c:if test="${item.genre eq 31}">selected</c:if>>
					<label class="form-check-label" for="inlineRadio3">취미/여행</label>
				</div>
				<div class="form-check form-check-inline">
					<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio8" value="32" <c:if test="${item.genre eq 32}">selected</c:if>>
					<label class="form-check-label" for="inlineRadio4">건강/스포츠</label>
				</div>
			</div>	
			
	
			<div style="width: 83%; margin: 20px 0 20px 0px;">
				<button class="btn btn-warning" type="button" id="btnList" style="float: left; color: white;">
					<i class="fa-solid fa-chart-bar"></i></a>
				</button>
				<button type="button" class="btn btn-danger" style="margin-left: 6px;" id="uelBtn" data-bs-toggle="modal" data-bs-target="#exampleModal2" style="color: white;">
					<i class="fa-solid fa-x"></i> 
				</button>
				<button class="btn btn-success" type="button" id="btnSave" style="float:right;">
					<i class="fa-regular fa-bookmark"></i>
				</button>
				<button class="btn btn-danger" type="button" style="float:right; margin-right: 4px;" id="delBtn" data-bs-toggle="modal" data-bs-target="#exampleModal">
					<i class="fa-solid fa-trash-can-arrow-up"></i>
				</button>
			</div>
			
<!-- 		  	<div class="d-grid garp-2 col-4 mx-auto">
		  		<br><button type="button" id="btnSave" class="btn btn-outline-warning ma-auto">수정하기</button>
			</div> -->
		
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
    
		<div class="modal fade" id="exampleModal2" data-bs-keyboard="false" tabindex="-1" aria-labelledby="exampleModalLabel2" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		         <h5 class="modal-title" id="exampleModalLabel2"><b>삭제</b></h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        사용 안 하시겠습니까?
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
		        <button type="button" class="btn btn-dark" id="btnUelete">삭제 </button>
		      </div>
		    </div>
		  </div>
		</div>
			
	    <!-- 휴지통 Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		    
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel"><b>삭제</b></h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        정말로 삭제하시겠습니까?
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
		        <button type="button" class="btn btn-dark" id="btnDelete">삭제 </button>
		      </div>
		    </div>
		  </div>
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
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	
  <!-- Template Main JS File -->
  <script src="../resources/js/main.js"></script>
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  
  <script>
		$("#memberID").on("focusout", function() {
				
			$.ajax({
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
						document.getElementById("memberID").classList.remove('is-invalid');
						document.getElementById("memberID").classList.add('is-valid');
						document.getElementById("ifIDFeedback").classList.remove('invalid-feedback');
						document.getElementById("ifIDFeedback").classList.add('valid-feedback');
						document.getElementById("ifIDFeedback").innerText = "사용 가능 합니다.";
						document.getElementById("formIdAllowedNY").value = 1;
					} else {
						document.getElementById("memberID").classList.add('is-invalid');
						document.getElementById("ifIDFeedback").classList.remove('valid-feedback');
						document.getElementById("ifIDFeedback").classList.add('invalid-feedback');
						document.getElementById("ifIDFeedback").innerText = "사용 불가능 합니다";
						document.getElementById("formIdAllowedNY").value = 0;
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
		$("#pwdCheck").on("focusout", function () {
			var pwd1 = $("#pwd").val();
			var pwd2 = $("#pwdCheck").val();
	
			
			if (pwd1 != '' && pwd2 == '') {
				null;
			} else if (pwd1 != '' || pwd2 != '') {
				if (pwd1 == pwd2) {
					$("#alert-success").css('display','inline-block');
					$("#alert-danger").css('display','none');
					document.getElementById("formPwdAllowedNY").value = 1;
				} else {
					$("#alert-success").css('display','none');
					$("#alert-danger").css('display','inline-block');
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

		var form = $("form[name=form]");
		
		$("#btnSave").on("click", function() {
			form.attr("action", goUrlUpdt).submit();
		});
		
		$("#btnList").on("click", function(){
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