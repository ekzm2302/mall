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
			<form class="form-horizontal" action="/show/insert" method="post">
				<div class="form-group">
					<label for="inputId" class="col-sm-2 control-label">아이디</label>
					<div class="col-sm-10">
						<input class="form-control" id="inputId" placeholder="ID" name="userid" autocomplete="off">
						<button class="btn btn-primary btn-sm mt-2" id='btn-userid'>ID 중복체크</button>
						<span></span>
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="col-sm-2 control-label">비밀번호</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="inputPassword" placeholder="Password" name="userpw" autocomplete="off">
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword2" class="col-sm-2 control-label">비밀번호 재확인</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="inputPassword2" placeholder="Password" autocomplete="off">
					</div>
				</div>				
				<div class="form-group">
					<label for="inputName" class="col-sm-2 control-label"  autofocus>이름</label>
					<div class="col-sm-10">
						<input class="form-control" id="inputName" placeholder="이름" name="username" autocomplete="off">
					</div>
				</div>				
				<div class="form-group">
					<!-- <label for="inputAdd" class="col-sm-2 control-label">주소</label>  -->
				<div class="col-sm-10">
				<div>주소</div>
				 <input type="text" name="zipcode" id="zipcode" size="7" readonly>
                <input type="button" value="우편번호찾기" onclick="kakaopost()">
                <div class="mt-2"><input type="text" name="useraddress" id="address" size="90" autocomplete="off"></div>
						<!-- <input class="form-control" id="layer" placeholder="주소" name="useraddress" autocomplete="off"> -->
					</div>
				</div>				
				<div class="form-group">
					<label for="inputEmail" class="col-sm-2 control-label">Email</label>
					<div class="col-sm-10">
						<input type="email" class="form-control" id="inputEmail" placeholder="Email" name="email" autocomplete="off">
					</div>
				</div>
				<div class="form-group">
					<label for="inputTel" class="col-sm-2 control-label">전화번호</label>
					<div class="col-sm-10">
						<input type="tel" class="form-control" id="inputEmail" placeholder="Tel" name="tel" autocomplete="off" maxlength='11'>
					</div>
				</div>
				<div class="form-group">
					<label for="inputBirth" class="col-sm-2 control-label">생년월일</label>
					<div class="col-sm-10">
						<input type="date" class="form-control" id="inputBirth" placeholder="Birth" name="birth">
					</div>
				</div>				
				<div class="form-group">
					<div class="bottom col-sm-offset-2 col-sm-10" style="margin-top: 15px;margin-bottom: 15px;text-align: center;">
						<button type="submit" class="btn_click btn btn-primary mt-2 mb-2">회원 가입</button>
						<a href="/main"><button type="submit" class="btn btn-danger mt-2 mb-2">취소</button></a>
					</div>
				</div>
			</form>
		</div><!-- class=row -->
	</div><!-- class=container -->
       
     	
        <!-- Footer-->
       <jsp:include page="/WEB-INF/views/include/footer.jsp" />
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        <!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	
	<script>
	function kakaopost() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	           document.querySelector("#zipcode").value = data.zonecode;
	           document.querySelector("#address").value =  data.address
	        }
	    }).open();
	}

	//아이디 중복확인
	$('#btn-userid').click(function(){
		idCheck(); 
	});
	function idCheck(){
		var $userid = $('[name=userid]');
		//이미 중복확인했다면 재확인 불필요
		if( $userid.hasClass('chked') ) return;
		
		var status = member.tag_status( $userid );
		if( status.code=='invalid' ){
			alert('아이디 중복확인 불필요!\n' + status.desc);
			$userid.focus();
		}else{
			$.ajax({
				url: 'idCheck',
				data: { id: $userid.val() },
				success: function( response ){
					//false: 아이디 존재X, true: 아이디 존재
					status = response ? member.userid.unUsable : member.userid.usable;
					$userid.siblings('div').text( status.desc )
											.removeClass().addClass( status.code );
					//중복확인완료지정
					$userid.addClass('chked');
				},error: function(req, text){
					alert(text+':' + req.status);
				}						
			});
		}	
	}
	</script>
	
</body>
</html>