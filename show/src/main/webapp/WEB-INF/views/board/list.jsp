<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
.page-list {
	text-align: center;
	column-gap: .5rem;
}
.list_top{
background-color: #c9c9c9;
    color: #000;
    }
 a:link { color: #000; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
 a:hover { color: blue; text-decoration: underline;}
 
 .btn-insert{
 display: flex;
 flex-direction: row;
 justify-content: flex-start;
 }
 
</style>
</head>
<body>
	<!-- Navigation-->
	<jsp:include page="/WEB-INF/views/include/topnav.jsp" />
	<!-- Section-->
	
	<section class="py-5 ">
		<form method='post' action='list.bo' id="list">
			<input type='hidden' name='curPage' value='1'>
		</form>
				<div class="card-header">
					<h3 class="card-title text-center" style="font-weight: bold;">공지사항</h3>
				</div>
				<div class="btn-insert py-2 px-2"><button class="btn btn-primary"> 글 쓰기 </button></div>
					<div class="table-responsive">
						<table class='table table-hover'>
							<colgroup>
								<col width='80px'>
								<col class="no_title">
								<col width="250px">
								<col width='120px'>
								<col width='120px'>
							</colgroup>
							<tr class='text-center list_top'>
								<th>번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>날짜</th>
								<th>조회수</th>
							</tr>
							<c:forEach items='${page.list}' var='vo'>
								<tr class='text-center '>
									<td class='text-center'>${vo.rnum }</td>
									<td class="no_title text-start"><a
										href='info.bo?id=${vo.board_no}'>${vo.board_title }</a></td>
									<td>${vo.username}</td>
									<td><fmt:formatDate pattern="yyyy/MM/dd"
											value="${vo.write_date }" /></td>
									<td>${vo.board_hits}</td>
								</tr>
							</c:forEach>
						</table>
					</div>
			<jsp:include page="/WEB-INF/views/include/page.jsp" />
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