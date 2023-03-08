<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%> 

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Shop</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
<link href="css/common.css" rel="stylesheet" />
<style>
.h-px80 {
height: 80px;
}
.h-px500 {
height: 400px;
}
.reply_content{
height: 220px;
}
</style>
</head>
<body>
	<!-- Navigation-->
	<jsp:include page="/WEB-INF/views/include/topnav.jsp" />
	<!-- Section-->
	
	<section id="" class="container py-5">
		 <h3>공지글안내</h3>
     <div class="card text-center">
  <div class="card-header">
     <span style ="font-size: 20px" > 제목 : ${vo.board_title} </span> 
  </div>
  <div class="card-body h-px500">
    <p class="card-text text-start">${fn: replace(  fn:replace( vo.board_content, lf, '<br>' )  , crlf, '<br>')}</p>
  </div>
  <div class="card-footer text-muted emp">
  <span style='margin-left: 2rem'> 작성자 : ${vo.username} </span> 
   <span style='margin-left: 2rem'> 작성일자 : ${vo.write_date} </span>
   <span style='margin-left: 2rem'> 조회수 : ${vo.board_hits} </span> 
  </div>
</div>
     
<c:set var='params' value='curPage=${page.curPage}&search=${page.search}&keyword=${page.keyword}'/>
<div class='btnSet mt-3'>
	<button type="button" class="btn btn-primary"
				onclick="location='list.bo'">공지목록 </button>
	<a class='btn btn-primary' href='modify.no?id=${vo.board_no}'>수정</a>
	<a class='btn btn-danger btn-delete'>공지삭제</a>
</div>
			
	</section>
	<!-- Footer-->
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>
</html>