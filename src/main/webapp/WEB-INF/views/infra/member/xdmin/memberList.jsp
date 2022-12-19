<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<%@ page session="true"%>
<jsp:useBean id="CodeServiceImpl" class="nov.infra.modules.code.CodeServiceImpl" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Member List</title>
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
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
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

			<a href="/" class="logo d-flex align-items-center"> <!-- Uncomment the line below if you also wish to use an image logo --> <!-- <img src="../resources/img/logo.png" alt=""> -->
				<h1>
					With Book<span>.</span>
				</h1>
			</a> <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i> <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>
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
		<!-- ======= Breadcrumbs ======= -->
		<div class="breadcrumbs d-flex align-items-center" style="background-image: url('../resources/images/book.jpg');">
			<div class="container position-relative d-flex flex-column align-items-center aos-init aos-animate" data-aos="fade">

				<h2>Member List</h2>
				<ol>
					<li><a href="/member/home">Home</a></li>
					<li>Member List</li>
				</ol>
			</div>
		</div>
		<!-- End Breadcrumbs -->


		<section id="blog" class="blog">
			<form method="get" action="/member/memberList" name="formList">
			<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage }" default="1"/>">
			<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow }"/>">
				<div class="post-item position-relative h-100">
					<h2 style="margin-left: 90px;">회원 리스트</h2>
					<div class="d-grid gap-2 justify-content-md-end" style="width: 90%; margin: auto; border: 0.7px solid silver; padding: 10px;">
						<div class="form form-inline">
							<select class="search-select" id="shOption" name="shOption" style="height: 30px; width: 180px; margin-right: 7px;">
								<option value="">검색구분</option>
								<option value="1">코드</option>
								<option value="2">회원 이름</option>
								<option value="3">회원 아이디</option>
							</select>
								<input type="text" id="shValue" name="shValue" placeholder="이름" style="height: 30px; width: 180px; margin-right: 7px; margin-top: 10px;" value="<c:out value="${vo.shValue}"/>">
								<br>
							<select class="use-select" id="shuseNY" name="shuseNY" aria-label="Default select example" style="height: 30px; width: 180px; margin-right: 7px;">
								<option value=""  <c:if test="${empty vo.shuseNY eq null}">selected</c:if>>사용여부</option>
								<option value="1" <c:if test="${vo.shuseNY eq 1}">selected</c:if>>YES</option>
								<option value="0" <c:if test="${vo.shuseNY eq 0}">selected</c:if>>NO</option>
							</select> 
							<select class="del-select" id="shdelNY" name="shdelNY" aria-label="Default select example" style="height: 30px; width: 180px; margin-right: 7px;">
								<option value=""  <c:if test="${empty vo.shdelNY eq null}">selected</c:if>>삭제여부</option>
								<option value="1" <c:if test="${vo.shdelNY eq 1}">selected</c:if>>YES</option>
								<option value="0" <c:if test="${vo.shdelNY eq 0}">selected</c:if>>NO</option>
							</select>
								<button class="btn btn-success" style="height: 35px; width: 40px;" id="btnSearch">
									<i class="fa-solid fa-magnifying-glass"></i>
								</button>
								<button type="button" class="btn btn-warning" style="height: 35px; width: 40px;" id="btnReset" name="">
									<i class="fa-solid fa-rotate-left"></i>
								</button>
						</div>
					</div>
					<br>
					<table class="table table-striped" style="width: 90%; margin: auto;">
						<tr style="text-align: center; background-color: #D2D2FF">
							<th>선택</th>
							<th>번호</th>
							<th>아이디</th>
							<th>이름</th>
							<th>영문 이름</th>
							<th>생년월일</th>
							<th>통신사</th>
							<th width=120px;>핸드폰 번호</th>
							<th width=180px;>이메일</th>
							<th>지역</th>
							<th>사용여부</th>
							<th>삭제여부</th>
						</tr>
						<link href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet" />
						<c:set var="listCodeTelecom" value="${CodeServiceImpl.selectListCachedCode('6')}" />
						<c:set var="listCodeCareer" value="${CodeServiceImpl.selectListCachedCode('2')}" />
						<c:set var="listCodeJob" value="${CodeServiceImpl.selectListCachedCode('1')}" />
						<c:set var="listCodeEmailCode" value="${CodeServiceImpl.selectListCachedCode('5')}" />
						<c:set var="listCodeHobby" value="${CodeServiceImpl.selectListCachedCode('3')}" />
						<c:set var="listCodeRegion" value="${CodeServiceImpl.selectListCachedCode('4')}" />
						<c:set var="listCodeCertifiNY" value="${CodeServiceImpl.selectListCachedCode('7')}" />
						<c:choose>
							<c:when test="${fn:length(list) eq 0}">
								<tr>
									<td class="text-center" colspan="14">There is no data!</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach items="${list}" var="list" varStatus="status">
									<tr>
										<th scope="row"><input class="form-check-input" type="checkbox"></th>
										<td>
											<c:out value="${list.seq }" />
										</td>
										<td>
											<c:out value="${list.memberID }" />
										</td>
										<td>
											<a href="/member/memberMod?seq=<c:out value="${list.seq }"/>"><c:out value="${list.memberName}" /></a>
											<%-- <c:out value="${list.memberName }" /> --%>
										</td>
										<td>
											<c:out value="${list.memberName_en}" />
										</td>
										<td>
											<c:out value="${list.dob}" />
										</td>
										<td>
											<c:forEach items="${listCodeTelecom}" var="listTelecom" varStatus="statusTelecom">
												<c:if test="${list.telecom eq listTelecom.seq}">
													<c:out value="${listTelecom.codename_ko }" />
												</c:if>
											</c:forEach>
										</td>
										<td>
											<c:out value="${list.phone}" />
										</td>
										<td>
											<c:out value="${list.email}" />
										</td>
										<td>
											<c:forEach items="${listCodeRegion}" var="listRegion" varStatus="statusRegion">
												<c:if test="${list.region eq listRegion.seq}">
													<c:out value="${listRegion.codename_ko }" />
												</c:if>
											</c:forEach>
										</td>
										<td>
											<c:choose>
												<c:when test="${list.useNY eq 1}">Y</c:when>
												<c:otherwise>N</c:otherwise>
											</c:choose>
										</td>
										<td>
											<c:choose>
												<c:when test="${list.delNY eq 0}">N</c:when>
												<c:otherwise>Y</c:otherwise>
											</c:choose>
										</td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</table>
					<!-- pagination s -->
					<%@include file="../../../common/xdmin/includeV1/pagination.jsp"%>
					<!-- pagination e -->
				</div>
				</div>
				<div style="width: 90%; margin: auto;">
					<button type="button" class="btn btn-outline-warning" style="float: right; margin-right: 10px;">
						<a href="/member/memberForm"><i class="fa-solid fa-user-plus"></i></a>
					</button>
				</div>
			</form>
		</section>
		<!-- End Blog Section -->
	</main>
	<!-- End #main -->

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

	<!-- Template Main JS File -->
	<script src="../resources/js/main.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script> 
	
	<script type="text/javascript">
		var goUrlList = "/member/memberList";
		var goUrlInst = "/member/memberInst";
		var goUrlUpdt = "/member/memberUpdt";
		var goUrlUele = "/member/memberUele";
		var goUrlDele = "/member/memberDele";
		var goUrlForm = "/member/memberMod";
		
		var form = $("form[name=formList]");

		$("#btnSearch").on("click", function() {
			if (validationList() == false)
				return false;
			form.attr("action", goUrlList).submit();
		});

		$("#btnReset").on("click", function() {
			$(location).attr("href", goUrlList);
		});
		
		$("#btndelModal").on("click", function() {
			form.attr("action", goUrlDele).submit();
		});
		
		$("btnForm").on("click", function() {
			goForm(seq.val());
		});
		
		goList = function(thisPage) {
			$("input:hidden[name=thisPage]").val(thisPage);
			form.attr("action", goUrlList).submit();
		}
	
		goForm = function(thisPage) {
			$("input:hidden[name=thisPage]").val(thisPage);
			form.attr("action", goUrlForm).submit();
		}
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