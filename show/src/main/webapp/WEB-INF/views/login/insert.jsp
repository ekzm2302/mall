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
    </head>
<body>
 <!-- Navigation-->
      <jsp:include page="/WEB-INF/views/include/topnav.jsp" />
     	
     	<div class="container">
		<div class="row mt-3">
			<h1 class="bg-dark py-5" style="color: white;">회원 가입</h1>
		</div>
		<div class="row">
			<form class="form-horizontal" action="/login/insert" method="post">
				<div class="form-group">
					<label for="inputId" class="col-sm-2 control-label">아이디</label>
					<div class="col-sm-10">
						<input class="form-control" id="inputId" placeholder="ID" name="userid">
						<button class="btn btn-primary btn-sm mt-2">ID 중복체크</button>
						<span></span>
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="col-sm-2 control-label">비밀번호</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="inputPassword" placeholder="Password" name="userpw">
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword2" class="col-sm-2 control-label">비밀번호 재확인</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="inputPassword2" placeholder="Password">
					</div>
				</div>				
				<div class="form-group">
					<label for="inputName" class="col-sm-2 control-label">이름</label>
					<div class="col-sm-10">
						<input class="form-control" id="inputName" placeholder="이름" name="username">
					</div>
				</div>				
				<div class="form-group">
					<label for="inputAdd" class="col-sm-2 control-label">주소</label>
					<div class="col-sm-10">
						<input class="form-control" id="inputAdd" placeholder="주소" name="address">
					</div>
				</div>				
				<div class="form-group">
					<label for="inputEmail" class="col-sm-2 control-label">Email</label>
					<div class="col-sm-10">
						<input type="email" class="form-control" id="inputEmail" placeholder="Email" name="email">
					</div>
				</div>
				<div class="form-group">
					<label for="inputTel" class="col-sm-2 control-label">전화번호</label>
					<div class="col-sm-10">
						<input type="tel" class="form-control" id="inputEmail" placeholder="Tel" name="tel">
					</div>
				</div>
				<div class="form-group">
					<label for="inputBirth" class="col-sm-2 control-label">생년월일</label>
					<div class="col-sm-10">
						<input type="date" class="form-control" id="inputBirth" placeholder="Birth" name="birth">
					</div>
				</div>				
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-primary mt-2 mb-2">회원 가입</button>
						<button type="submit" class="btn btn-danger mt-2 mb-2">취소</button>
					</div>
				</div>
			</form>
		</div><!-- class=row -->
	</div><!-- class=container -->
       
        <!-- Footer-->
       <jsp:include page="/WEB-INF/views/include/footer.jsp" />
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
</body>
</html>