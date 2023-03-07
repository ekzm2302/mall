<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
 <script src="https://code.jquery.com/jquery-3.6.3.min.js" ></script> 
 

</head>
<body>
	<!-- Navigation-->
	<jsp:include page="/WEB-INF/views/include/topnav.jsp" />

	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-5">
					<div class="login-wrap p-4 p-md-5">
					<a href="<c:url value='/'/>"><img  style="width: 55%; margin-left: 20%;margin-bottom: -20px;" alt="..." src="img/logo2.png"></a>
							<h2 >로그인</h2>
						<form action="" class="login-form">
							<div class="form-group">
								<input type="text" class="form-control rounded-left " id="id"
						 			placeholder="ID" required autocomplete="off">
							</div>
							<div class="form-group d-flex">
								<input type="password" class="form-control rounded-left mt-2" id="pw"
									placeholder="Password" required>
							</div>
							<div class="form-group d-md-flex mt-3">
								<div class="w-50">
									<label class="checkbox-wrap checkbox-primary">아이디 저장 <input
										type="checkbox" checked> <span class="checkmark"></span>
									</label>
								</div>
								<div class="w-50 text-md-right" style="margin-left: 120px;">
									<a href="#">패스워드 찾기</a>
								</div>
								<div class="w-50 text-md-right" style="margin-left: 30px;">
									<a href="#">회원가입</a>
								</div>
							</div>
							<div class="form-group mt-4">
								<a class="login btn btn-primary rounded submit p-3 px-5"
									id="login_on">로그인</a>
							</div>
						</form>
					</div>
   
				</div>
			</div>
		</div>
	</section>

	<!-- Footer-->
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	<!-- Bootstrap core JS-->
	 <script>
$('#pw').keydown(function(e){
	if(e.keyCode == 13) {
	login();
	}
}) ;
 
 $('.login').click(function(){
		login();
	});
 function login(){
	
	if( emptyCheck() ){
		
		$.ajax({
			url: 'shlogin',
			data: { id:$('#id').val(), pw:$('#pw').val() },
			dataType : "json", 
			success: function( response ){
				
				if( response ){
					location = '<c:url value="/"/>';
				}else{
					alert('아이디나 비밀번호가 일치하지 않습니다');
				}
			},error: function(req,text){
				alert(text+':'+req.status);
			}
		});
	}
}
</script>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/common.js"></script>
	
</body>
</html>