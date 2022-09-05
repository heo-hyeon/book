<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Code Group List</title>
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

      <a href="main.html" class="logo d-flex align-items-center">
        <!-- Uncomment the line below if you also wish to use an image logo -->
        <!-- <img src="../resources/img/logo.png" alt=""> -->
        <h1>With Book<span>.</span></h1>
      </a>

      <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
      <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>
      <nav id="navbar" class="navbar">
        <ul>
          <li><a href="main.html" class="active">코드그룹관리</a></li>
          <li><a href="CodeManagement.html">코드관리</a></li>
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

  <main id="main">
    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs d-flex align-items-center" style="background-image: url('../resources/img/book.jpg');">
      <div class="container position-relative d-flex flex-column align-items-center aos-init aos-animate" data-aos="fade">

        <h2>Code Group</h2>
        <ol>
          <li><a href="main.html">Home</a></li>
          <li>Code Group Management</li>
        </ol>
      </div>
    </div><!-- End Breadcrumbs -->
    
   
     <section id="blog" class="blog">
     <form method="post" action="/codeGroup/codeGroupList">
    	<div class="post-item position-relative h-100">
    		<h2 style="margin-left:90px;">코드 관리</h2>
			<div class="d-grid gap-2 justify-content-md-end" style="width:90%; margin:auto;  border:0.7px solid silver; padding:10px;">
				<div class="form form-inline">
					<select class="del-select" aria-label="Default select example" style="height:30px; width:180px; margin-right:7px;">
					  <option value="">삭제여부
					  <option value="delY">YES
					  <option value="delN">NO
					</select>		
<%-- 			 		 <select class="job-select" aria-label="Default select example" style="height:30px; width:180px; margin-right:7px;">
					  <option value="md"<c:if test="${empty vo.shname}">selected</select>c:if>>기획/MD<option>
					  <option value="it"<c:if test="${vo.shname eq 1}">selected</select>c:if>>IT개발<option>
					  <option value="strategy"<c:if test="${vo.shname eq 1}">selected</select>c:if>>기술/전략<option>
					  <option value="marketing"<c:if test="${vo.shname eq 1}">selected</select>c:if>>마케팅/홍보<option>
					  <option value="accounting"<c:if test="${vo.shname eq 1}">selected</select>c:if>>회계/총무<option>
					  <option value="sales"<c:if test="${vo.shname eq 1}">selected</select>c:if>>영업/판매<option>
					</select> --%>
					<select class="career-select" aria-label="Default select example" style="height:30px; width:180px; margin-right:7px;">
					  <option value="junior">신입
					  <option value="senior">경력
					</select>
					<select class="certification-select" aria-label="Default select example" style="height:30px; width:180px; margin-right:7px;">
						<option selected>자격증 유무	 
						<option value="yes-cer">유
						<option value="no-cer">무
					</select>	 
					<div class="form form-inline">
					<input type="search" id="shname" placeholder="이름" name="shname" style="height:30px; width:180px; margin-right:7px; margin-top:10px;" value="<c:out value="${vo.shname}"/>">
					<input type="search" placeholder="전공" style="height:30px; width:180px; margin-right:7px; margin-top:10px;" value="<c:out value="${vo.shname}"/>">
					<button class="btn btn-success" style="height:35px; width:40px;" type="submit" ><i class="fa-solid fa-magnifying-glass"></i></button>
					<button class="btn btn-warning" style="height:35px; width:40px;" type="submit" ><i class="fa-solid fa-arrow-rotate-right"></i></button>
					</div>
				</div>
			</div>
			</form>
				<div><br>
					<p style="margin-left:100px;">total : 40
					<select style="width:80px; height:30px; float:right; margin-right:100px;">
						<option>1
						<option>2
						<option>3
					</select>
				</div>
			<br><br>
				<table class="table table-striped" style="width:90%; margin:auto;">
					<tr style="text-align:center; background-color:#D2D2FF">
						<th width="70px;"><input type="checkbox"></th>
						<th width="70px">#</th>
						<th width="100px">코드그룹 코드</th>
						<th width="150px">코드그룹 이름(한글)</th>
						<th width="150px">코드그룹 이름(영문)</th>
						<th width="70px">코드갯수</th>
						<th width="100px">등록일</th>
						<th width="100px">수정일</th>
						<th width="100px">사용</th>
						<th width="100px">삭제</th>
					</tr>
					
					<c:choose>
				<c:when test="${fn:length(list) eq 0}">
					<tr>
						<td class="text-center" colspan="13">There is no data!</td>
					</tr>
				</c:when>
				<c:otherwise>
				 
				   
					<c:forEach items="${list}" var="list" varStatus="status">
					<c:out value="${list.seq}"/> / <c:out value="${list.name }"/>
				    <tr>
				      <th scope="row"><input class="form-check-input" type="checkbox"></th>
				      <td><c:out value="${list.seq }"/></td>
				      <td><c:out value="${list.seq }"/></td>
				      <td><c:out value="${list.name }"/></td>
				      <td><c:out value="${list.name_en}"/></td>
				      <td><c:out value="${list.code_count }"/></td>
				      <td><c:out value="${list.reg_date }"/></td>
				      <td><c:out value="${list.mod_date }"/></td>
				      <td><c:out value="${list.useNY }"/></td>
				      <td><c:out value="${list.delNY }"/></td>
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
			        </div><!-- End blog pagination -->  
					</div>		
				</div>
			</div>
		</div>
		<div style="width:90%; margin:auto;">
			<button class="btn btn-warning" style="float:left; color:white;"><i class="fa-solid fa-square-check"></i></button>
			<button type="button" class="btn btn-danger"data-bs-toggle="modal" data-bs-target="#exampleModal" style="margin-left:10px;"><i class="fa-solid fa-trash-can-arrow-up"></i> </button>
			<button class="btn btn-outline-warning" style="float:right; margin-right:7px;"><a href="./memberRegForm.html"<i class="fa-solid fa-user-plus"></i></a></button>
			<button class="btn btn-success" style="float:right; margin-right:7px;"><i class="fa-solid fa-file-circle-plus"></i></button>
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
    </section><!-- End Blog Section -->
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

</body>
</html>