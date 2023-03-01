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
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
         <link href="css/common.css" rel="stylesheet" />
    </head>
<body>
 <!-- Navigation-->
      <jsp:include page="/WEB-INF/views/include/topnav.jsp" />
        <!-- Section-->
        <section class="py-5">
	        
         <h3 class="text-center mb-4">공지사항</h3>
       <div class="table-responsive container-md">
			<table class='table table-hover'>
			<colgroup>
				<col width='80px'>
				<col class="no_title" >
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
				<tr class='text-center '>
					<td class='text-center'> 1</td>
					<td class="no_title text-start"><a href="#">오픈기념 파격 세일 !</a></td>
					<td >그림자</td> 
					<td>2022.02.23</td>
					<td>2</td>
				</tr>
		</table>
					</div>
               <jsp:include page="/WEB-INF/views/include/page.jsp" />
            
        </section>
        <!-- Footer-->
       <jsp:include page="/WEB-INF/views/include/footer.jsp" />
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
</body>
</html>