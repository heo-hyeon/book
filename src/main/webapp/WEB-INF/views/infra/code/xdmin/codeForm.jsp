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

  <title>Code Management</title>
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
        <!-- <images src="../resources/images/logo.png" alt=""> -->
        <h1>With Book<span>.</span></h1>
      </a>

      <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
      <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>
      <nav id="navbar" class="navbar">
        <ul>
          <li><a href="/member/home" class="active">Home</a></li>
          <li><a href="/book/likebook">?????? ??? </a></li>
          <li><a href="/book/recommendList">????????????</a></li>
          <li class="dropdown"><a href="#"><span>??? ?????? </span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
            <ul>
              <li><a href="/user/userMod?seq=<c:out value="${item.seq}"/>">????????????</a></li>
              <li><a onclick="logout()">????????????</a></li>
            </ul>
          </li>
        </ul>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <main id="main">
    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs d-flex align-items-center" style="background-image: url('../resources/images/book.jpg');">
      <div class="container position-relative d-flex flex-column align-items-center aos-init aos-animate" data-aos="fade">

        <h2>Code</h2>
        <ol>
          <li><a href="main.html">Home</a></li>
          <li>Code Management</li>
        </ol>
      </div>
    </div><!-- End Breadcrumbs -->
    
    <h2 style="margin:20px 0 20px 50px;">?????? ??????</h2>
    <form name="form" id="form" method="post" CLASS="row g-2" style="margin-left: 30px; width: 90%;">
	<!-- *Vo.jsp s -->
	<%@include file="codeVo.jsp"%>	
	<!-- *Vo.jsp e -->
	  <div class="col-md-5">
	  	<label class="useNY-label" for="seq">???????????? ??????</label>
	  	<input type="text" name="seq" id="seq" value="<c:out value="${item.seq}"/>"class="form-control" placeholder="??????(????????????),??????">
	   </div>
	  <div class="col-md-5">
	  	<label class="code-label"> ???????????? ?????? (??????)</label>
	  	<input type="text" name="name" id="name" value="<c:out value="${item.name}"/>" class="form-control" placeholder="??????,??????">
	  </div>
 	  <div class="col-md-5">
	  	<label class="code-label">???????????? ?????? (??????)</label>
	  	<input type="text" name="name_en" id="name_en" value="<c:out value="${item.name_en}"/>" class="form-control" placeholder="??????(????????????),??????">
	  </div>
	  <div class="col-md-5">
	    <label class="codeName-label">????????????</label>
	    <select class="form-control" name="useNY"  id="useNY" value="<c:out value="${item.useNY}"/>" >
	    	<option>Y
	    	<option>N
	    </select>
	  </div>
	  <div class="col-md-5">
	  	<label class="delete-label">????????????</label>
	  	<select class="form-control" name="delNY"  id="delNY" value="<c:out value="${item.delNY}"/>" >
	  		<option>Y
	  		<option>N
	  	</select>
	  </div>
	  <div class="col-md-5">
	  	<label class="regDate-label">?????????</label>
	  	<input type="text" name="reg_date" id="reg_date" class="form-control" value="<c:out value="${item.reg_date}"/>">
	  </div>
	  <div class="col-md-5">
	  	<label class="modDate-label">?????????</label>
	  	<input type="text" name="mod_date" id="mod_date" class="form-control" value="<c:out value="${item.mod_date}"/>">
	  </div>
 	<div style="width:90%; margin:20px 0 20px 30px;">
			<button class="btn btn-warning" type="button" style="float:left; color:white;"><a href="/code/codeList"><i class="fa-solid fa-chart-bar"></i></a></button>
			<button class="btn btn-danger"  style="margin-left:10px;" data-bs-toggle="modal" data-bs-target="#exampleModal"><i class="fa-solid fa-trash-can-arrow-up"></i></button>
			<button class="btn btn-success" type="submit" name="" id="btnSave" onClick="complete(); return false;" style="float:right; margin-right:7px;"><i class="fa-regular fa-bookmark"></i></button>
			<button class="btn btn-danger" style="float:right; margin-right:7px;"><i class="fa-solid fa-x"></i></button>
		</div> 
		<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">??????</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">?????? ?????????????????????????</div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-danger">??????</button>
		        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">??????</button>
		      </div>
		    </div>
		  </div>
		</div>
  	 </form>
 </main><!-- End #main -->
  
 <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <div class="footer-legal text-center position-relative">
      <div class="container">
        <div class="copyright">
          ?? Copyright <strong><span>With Book</span></strong>. All Rights Reserved
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
		function complete() {
			
			alert("????????? ?????????????????????.");
			
			alert("????????????: " + document.getElementById('name').value);
			alert("????????????(??????): " + document.getElementById('name_en').value);
	
	
			
			if(document.getElementById('name').value == '' || document.getElementById('name').value == null) {
				alert("????????? ??????????????????");
				document.getElementById('name').value = "";   
				document.getElementById('name').focus(); 	
				return false ;
		}
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