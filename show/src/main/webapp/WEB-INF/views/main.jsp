<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko">
<head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shop</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
           <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
		<link rel="stylesheet" href="css/owl.carousel.min.css">
   		 <link rel="stylesheet" href="css/owl.theme.default.min.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/4.5.6/css/ionicons.min.css">
		<link rel="stylesheet" href="css/style.css">
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
<body>
 <!-- Navigation-->
      <jsp:include page="/WEB-INF/views/include/topnav.jsp" />
        <!-- Section-->
        <section class="ftco-section">
        <h2 class="text-center">&#127775; <span>New Item</span></h2>
         <div class="mt-4" style=" display: flex; margin-bottom: -1rem; justify-content: center;">
	  <button type="button" class="btn btn-outline-secondary " style="margin-left: 1rem; margin-right: 1rem;">전체</button>
	  <button type="button" class="btn btn-outline-secondary " style="margin-left: 1rem; margin-right: 1rem;">상의</button>
	  <button type="button" class="btn btn-outline-secondary " style="margin-left: 1rem; margin-right: 1rem;">하의</button>
	  <button type="button" class="btn btn-outline-secondary " style="margin-left: 1rem; margin-right: 1rem;">악세사리</button>
	  </div>
          <div class="container">
				<div class="row">
					<div class="col-md-5 mt-5">
						<div class="hero featured-carousel owl-carousel">
							<div class="item">
								<div class="work">
									<div class="img d-flex align-items-center justify-content-center" style="background-image: url(img/new1.jpg);">
										
									</div>
								</div>
							</div>
							<div class="item">
								<div class="work">
									<div class="img d-flex align-items-center justify-content-center" style="background-image: url(img/new2.jpg);">

									</div>
								</div>
							</div>
							<div class="item">
								<div class="work">
									<div class="img d-flex align-items-center justify-content-center" style="background-image: url(img/new3.jpg);">

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
        </section>
        <!-- Footer-->
       <jsp:include page="/WEB-INF/views/include/footer.jsp" />
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
         <script src="js/jquery.min.js"></script>
	    <script src="js/popper.js"></script>
	    <script src="js/bootstrap.min.js"></script>
	    <script src="js/owl.carousel.min.js"></script>
	    <script src="js/main.js"></script>
</body>
</html>