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

<title>Index</title>
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

<body>

<div class="container-fluid bg-light">
	<div class="row mb-5">
		<div class="col text-center my-3" style="height: 80px;">
			<c:if test="${not empty sessSeq}">
				<span style="float: right;">
					<span class="fw-bold"><c:out value="${sessName}"/></span>님 <button id="btnLogout" name="btnLogout" class="btn btn-sm btn-outline-warning">로그아웃</button>
				</span>
			</c:if>
			<h1 class="fw-bold" style="clear: both;">Index</h1>
			<h6 class="fw-bold">코드관리 / 메인페이지</h6>
		</div>
	</div>
	 
	 <!-- 매니저 페이지 -->
	 <div class="row">
            <div class="col-lg-6 mb-4 mb-lg-0 aos-init aos-animate" data-aos="fade-up">
                <article class="card card-hover text-center hover-shadow-lg overflow-hidden border-0 rounded-3">
                    <div class="overflow-hidden position-relative">

                        <!--Article image-->
                        <img src="../resources/images/memberlist.png" alt="" class="img-fluid" style="height:600px;">
						 
                        <!--Article image divider-->
                        <svg class="position-absolute start-0 bottom-0 mb-n1 text-white" preserveAspectRatio="none" width="100%" height="48" viewBox="0 0 1460 120" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M122 22.8261L0 0V120H1460V0L1338 22.8261C1217 44.1304 973 88.2609 730 88.2609C487 88.2609 243 44.1304 122 22.8261Z" fill="currentColor"></path>
                        </svg>
                    </div>
                    <!--Content-body-->
                    <div class="card-body pb-5 position-relative">
                        <h3 class="py-3 mb-0 fw-bold">코드 관리</h3>
                        <p class="mb-0 text-truncate px-lg-4">
                            코드 리스트,코드 등록, 코드 수정 및 삭제 등
                        </p>
                    </div>
                    <!--Article link-->
                    <a href="/codeGroup/codeGroupList" class="stretched-link"></a>
                </article>
            </div>
            
            <!-- 회원 페이지 -->
            <div class="col-lg-6 mb-4 mb-lg-0 aos-init aos-animate" data-aos="fade-up">
                <article class="card card-hover text-center hover-shadow-lg overflow-hidden border-0 rounded-3">
                    <div class="overflow-hidden position-relative">

                        <!--Article image-->
                        <img src="../resources/images/booklist.png" alt="" class="img-fluid" style="height:600px;">

                        <!--Article image divider-->
                        <svg class="position-absolute start-0 bottom-0 mb-n1 text-white" preserveAspectRatio="none" width="100%" height="48" viewBox="0 0 1460 120" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M122 22.8261L0 0V120H1460V0L1338 22.8261C1217 44.1304 973 88.2609 730 88.2609C487 88.2609 243 44.1304 122 22.8261Z" fill="currentColor"></path>
                        </svg>
                    </div>
                    <!--Article text-->
                    <div class="card-body pb-5 position-relative">
                        <h3 class="py-3 mb-0 fw-bold">메인 페이지</h3>
                        <p class="mb-0 text-truncate px-lg-4">
                            베스트셀러, 책 상세
                        </p>
                    </div>

                    <!--Article link-->
                    <a href="/member/home" class="stretched-link"></a>
                </article>
            </div>
        </div>
</div>
</body>
	<script>
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
						location.href = "/login"
					} else {
						// by pass
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
		});
	</script>