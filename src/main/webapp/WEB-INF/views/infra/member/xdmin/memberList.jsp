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
          <li><a href="CodeGroupList.html" class="active">코드그룹관리</a></li>
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

        <h2>Member List</h2>
        <ol>
          <li><a href="main.html">Home</a></li>
          <li>Member List</li>
        </ol>
      </div>
    </div><!-- End Breadcrumbs -->
    
    
      <section id="blog" class="blog">
    	<div class="post-item position-relative h-100">
    		<h2 style="margin-left:90px;">회원 리스트</h2>
			<div class="d-grid gap-2 justify-content-md-end" style="width:90%; margin:auto;  border:0.7px solid silver; padding:10px;">
				<div class="form form-inline">
					<select class="job-select" aria-label="Default select example" style="height:30px; width:180px; margin-right:7px;">
					  <option value="md">기획/MD
					  <option value="it">IT개발
					  <option value="strategy">기술/전략
					  <option value="marketing">마케팅/홍보
					  <option value="accounting">회계/총무
					  <option value="sales">영업/판매
					</select>
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
						<input type="search" id="name-search" placeholder="이름" style="height:30px; width:180px; margin-right:7px; margin-top:10px;">
						<input type="search" id="major-search" placeholder="전공" style="height:30px; width:180px; margin-right:7px;">
						<button class="btn btn-success" style="height:35px; width:40px;" type="button"><i class="fa-solid fa-magnifying-glass"></i></button>
						<button class="btn btn-warning" style="height:35px; width:40px;" type="button"><i class="fa-solid fa-arrow-rotate-right"></i></button>
					</div>
				</div>
			</div><br>
				<table class="table table-striped" style="width:90%; margin:auto;">
					<tr style="text-align:center; background-color:#D2D2FF">
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
					<tr style="text-align:center; background-color:#FFFAFA;">
						<td><input type="checkbox" name="1"></td>
						<td>1</td>
						<td>hhyeon</td>
						<td>1111</td>
 						<td>4</td>
						<td>7</td>
						<td>허현</td>
						<td>Heo Hyeon</td>
						<td>1994-11-07</td>
						<td>24</td>
						<td>010-1234-5678</td>
						<td>010-5496-2167</td>
						<td>gwg01051@naver.com</td>
						<td>19</td>
						<td>12</td>
						<td>13</td>
						<td>25</td>
					</tr>
					<tr style="text-align:center; background-color:#FFFAFA;">
						<td><input type="checkbox" name="2"></td>
						<td>2</td>
						<td>yeeh-jin</td>
						<td>2222</td>
						<td>1</td>
						<td>8</td>
						<td><a href="../member/mod.html">손예진</td>
						<td>Son Yejin</td>
						<td>1982-01-11</td>
						<td>24</td>
						<td>010-8944-2518</td>
						<td>010-8712-9371</td>
						<td>yejin123@gmail.com</td>
						<td>20</td>
						<td>10</td>
						<td>18</td>
						<td>26</td>
					</tr>		
					<tr style="text-align:center; background-color:#FFFAFA;">
						<td><input type="checkbox" name="1"></td>
						<td>3</td>
						<td>kksky</td>
						<td>3333</td>
 						<td>2</td>
						<td>7</td>
						<td>강하늘</td>
						<td>Kang Haneul</td>
						<td>1990-02-21</td>
						<td>24</td>
						<td>010-9135-5738</td>
						<td>010-1234-8792</td>
						<td>kksky@naver.com</td>
						<td>19</td>
						<td>12</td>
						<td>15</td>
						<td>25</td>
					</tr>
					<tr style="text-align:center; background-color:#FFFAFA;">
						<td><input type="checkbox" name="4"></td>
						<td>4</td>
						<td>haein</td>
						<td>4444</td>
						<td>3</td>
						<td>8</td>
						<td>정해인</td>
						<td>Jung Haein</td>
						<td>1988-04-01</td>
						<td>23</td>
						<td>010-1581-2161</td>
						<td>010-2161-1893</td>
						<td>hhin11@hanmail.net</td>
						<td>21</td>
						<td>12</td>
						<td>14</td>
						<td>25</td>	
					</tr>
					<tr style="text-align:center; background-color:#FFFAFA;">
						<td><input type="checkbox" name="4"></td>
						<td>5</td>
						<td>hjimin</td>
						<td>5555</td>
						<td>4</td>
						<td>8</td>
						<td>한지민</td>
						<td>Han Jimin</td>
						<td>1982-11-05</td>
						<td>24</td>
						<td>010-3856-1372</td>
						<td>010-8273-7252</td>
						<td>jimin21@naver.com</td>
						<td>19</td>
						<td>11</td>
						<td>13</td>
						<td>25</td>	
					</tr>
					<tr style="text-align:center; background-color:#FFFAFA;">
						<td><input type="checkbox" name="4"></td>
						<td>6</td>
						<td>bbogeom</td>
						<td>6666</td>
						<td>6</td>
						<td>7</td>
						<td>박보검</td>
						<td>Park Bogeom</td>
						<td>1993-06-16</td>
						<td>23</td>
						<td>010-4142-1238</td>
						<td>010-2579-9504</td>
						<td>bbogg@gmail.com</td>
						<td>20</td>
						<td>10</td>
						<td>17</td>
						<td>26</td>	
					</tr>
					<tr style="text-align:center; background-color:#FFFAFA;">
						<td><input type="checkbox" name="4"></td>
						<td>7</td>
						<td>taesun</td>
						<td>7777</td>
						<td>2</td>
						<td>7</td>
						<td>이태선</td>
						<td>Lee Taesun</td>
						<td>1993-07-16</td>
						<td>22</td>
						<td>010-3576-3578</td>
						<td>010-3466-7251</td>
						<td>taessun@hanmail.net</td>
						<td>21</td>
						<td>9</td>
						<td>15</td>
						<td>26</td>	
					</tr>
					<tr style="text-align:center; background-color:#FFFAFA;">
						<td><input type="checkbox" name="4"></td>
						<td>8</td>
						<td>hyojjoo</td>
						<td>8888</td>
						<td>5</td>
						<td>7</td>
						<td>한효주</td>
						<td>Han Hyojoo</td>
						<td>1987-04-04</td>
						<td>22</td>
						<td>010-4142-2710</td>
						<td>010-3548-5171</td>
						<td>jjo12@naver.com</td>
						<td>19</td>
						<td>10</td>
						<td>16</td>
						<td>25</td>	
					</tr>
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
		   	<button class="btn btn-success" style="float:right; margin-right:10px;"><i class="fa-solid fa-file-circle-plus"></i></button>
			<button class="btn btn-outline-warning" style="float:right; margin-right:10px;"><a href="./memberRegForm.html"<i class="fa-solid fa-user-plus"></i></a></button>
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