<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<%@ page session="false"%>
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
					<li><a href="CodeGroupList.html" class="active">코드그룹관리</a></li>
					<li><a href="CodeManagement.html">코드관리</a></li>
					<li class="dropdown"><a href="#"><span>내 정보 </span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
						<ul>
							<li><a href="mod.html">기본정보</a></li>
							<li><a href="mypage.html">상세정보</a></li>
							<li><a href="login.html">로그아웃 </a></li>
							<li><a href="#">기타 </a></li>
						</ul></li>
				</ul>
			</nav>
			<!-- .navbar -->
		</div>
	</header>
	<!-- End Header -->

	<main id="main">
		<!-- ======= Breadcrumbs ======= -->
		<div class="breadcrumbs d-flex align-items-center" style="background-image: url('../resources/images/book.jpg');">
			<div class="container position-relative d-flex flex-column align-items-center aos-init aos-animate" data-aos="fade">

				<h2>Member List</h2>
				<ol>
					<li><a href="/">Home</a></li>
					<li>Member List</li>
				</ol>
			</div>
		</div>
		<!-- End Breadcrumbs -->


		<section id="blog" class="blog">
			<form method="post" action="/member/memberList">
				<div class="post-item position-relative h-100">
					<h2 style="margin-left: 90px;">회원 리스트</h2>
					<div class="d-grid gap-2 justify-content-md-end" style="width: 90%; margin: auto; border: 0.7px solid silver; padding: 10px;">
						<div class="form form-inline">
							<select class="job-select" id="shjob" name="shjob" aria-label="Default select example" style="height: 30px; width: 180px; margin-right: 7px;">
								<option value="">지원분야								
								<option value="md">기획/MD
								<option value="it">IT개발
								<option value="strategy">기술/전략
								<option value="marketing">마케팅/홍보
								<option value="accounting">회계/총무
								<option value="sales">영업/판매
							</select> <select class="career-select" id="shcareer" name="shcareer" aria-label="Default select example" style="height: 30px; width: 180px; margin-right: 7px;">
								<option value="">경력사항
								<option value="1">경력
								<option value="0">신입
							</select> <select class="certification-select" id="shcertifiNY" name="shcertifiNY" aria-label="Default select example" style="height: 30px; width: 180px; margin-right: 7px;">
								<option value="">자격증 유무
								<option value="1">유
								<option value="0">무
							</select>
							<div class="form form-inline">
								<input type="text" id="shValue" name="shValue" placeholder="이름" style="height: 30px; width: 180px; margin-right: 7px; margin-top: 10px;" value="<c:out value="${vo.shValue}"/>">
								<button class="btn btn-success" style="height: 35px; width: 40px;" id="btnSearch">
									<i class="fa-solid fa-magnifying-glass"></i>
								</button>
								<button type="button" class="btn btn-warning" style="height: 35px; width: 40px;" id="btnReset" name="">
									<i class="fa-solid fa-rotate-left"></i>
								</button>
							</div>
						</div>
					</div>
					<br>
					<table class="table table-striped" style="width: 90%; margin: auto;">
						<tr style="text-align: center; background-color: #D2D2FF">
							<th>선택</th>
							<th>번호</th>
							<th>아이디</th>
							<th>패스워드</th>
							<th>지원분야</th>
							<th>경력사항</th>
							<th>이름</th>
							<th>영문 이름</th>
							<th>생년월일</th>
							<th>통신사</th>
							<th width=120px;>핸드폰 번호</th>
							<th width=120px;>비상연락망</th>
							<th width=180px;>이메일</th>
							<th>이메일 코드</th>
							<th>취미</th>
							<th>지역</th>
							<th>자격증 유무</th>
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
									<td class="text-center" colspan="17">There is no data!</td>
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
											<c:out value="${list.pwd }" />
										</td>
										<td>
											<c:forEach items="${listCodeJob}" var="listJob" varStatus="statusJob">
												<c:if test="${list.job eq listJob.seq}">
													<c:out value="${listJob.codename_ko }" />
												</c:if>
											</c:forEach>
										</td>	
										<td>
											<c:forEach items="${listCodeCareer}" var="listCareer" varStatus="statusCareer">
												<c:if test="${list.career eq listCareer.seq}">
													<c:out value="${listCareer.codename_ko }" />
												</c:if>
											</c:forEach>
										</td>	
										</td>           
										<td>
											<a href="/code/codeView?name=<c:out value="${list.memberName }"/>"><c:out value="${list.memberName}" /></a>
											<%-- <c:out value="${list.memberName }" /> --%>
										</td>
										<td>
											<c:out value="${list.memberName_en}" />
										</td>
										<td>
											<fmt:formatDate value="${list.dob }" pattern="yyyy-MM-dd HH:mm:ss" />
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
											<c:out value="${list.phone_emer}" />
										</td>
										<td>
											<c:out value="${list.email}" />
										</td>
										<td>
											<c:forEach items="${listCodeEmailCode}" var="listEmailCode" varStatus="statusEmailCode">

												<c:if test="${list.email_code eq listEmailCode.seq}">
													<c:out value="${listEmailCode.codename_ko }" />
												</c:if>
											</c:forEach>
										</td>
										<td>
											<c:forEach items="${listCodeHobby}" var="listHobby" varStatus="statusHobby">

												<c:if test="${list.hobby eq listHobby.seq}">
													<c:out value="${listHobby.codename_ko }" />
												</c:if>
											</c:forEach>
										</td>
										<td>
											<c:forEach items="${listCodeRegion}" var="listRegion" varStatus="statusRegion">
												<c:if test="${list.region eq listRegion.seq}">
													<c:out value="${listRegion.codename_ko }" />
												</c:if>
											</c:forEach>
										</td>
										<td>
											<c:forEach items="${listCodeCertifiNY }" var="listCertifiNY" varStatus="statusCertifiNY">
												<c:if test="${list.certifiNY eq listCertifiNY.seq}">
													<c:out value="${listCertifiNY.codename_ko }" />
												</c:if>
											</c:forEach>
										</td>
										<%-- <option value="1" <c:if test="${item.useNY eq 1 }"> selected</c:if>>Y</option>
					  <option value="0" <c:if test="${item.useNY eq 0 }"> selected</c:if>>N</option>
				   	  </td> --%>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</table>
					<div class="blog-pagination">
						<ul class="justify-content-center">
							<li><a href="#">1</a></li>
							<li class="active"><a href="#">2</a></li>
							<li><a href="#">3</a></li>
						</ul>
					</div>
					<!-- End blog pagination -->
				</div>
				</div>
				</div>
				</div>
				<div style="width: 90%; margin: auto;">
					<button class="btn btn-warning" style="float: left; color: white;">
						<i class="fa-solid fa-square-check"></i>
					</button>
					<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal" style="margin-left: 10px;">
						<i class="fa-solid fa-trash-can-arrow-up"></i>
					</button>
					<button class="btn btn-outline-warning" style="float: right; margin-right: 10px;">
						<a href="/member/memberView" <i class="fa-solid fa-user-plus"></i></a>
					</button>
				</div>
				<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">삭제</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							</div>
							<div class="modal-body">정말 삭제하시겠습니까?</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-danger">삭제</button>
								<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
							</div>
						</div>
					</div>
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

	<script type="text/javascript">
		var goUrlList = "/member/memberList";
		var goUrlInst = "/member/memberInst";
		var goUrlUpdt = "/member/memberUpdt";
		var goUrlUele = "/member/memberUele";
		var goUrlDele = "/member/memberDele";

		$("#btnSearch").on("click", function() {
			if (validationList() == false)
				return false;
			form.attr("action", goUrlList).submit();
		});

		$("#btnReset").on("click", function() {
			$(location).attr("href", goUrlList);
		});
	</script>
</body>
</html>