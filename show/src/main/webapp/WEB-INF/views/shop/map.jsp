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
        <title>Map</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
         <link href="css/common.css" rel="stylesheet" />
         <!-- 지도 api -->
         <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ff483c08b881228ac44f4c8833c94b1a"></script>
    </head>
<body>
 <!-- Navigation-->
      <jsp:include page="/WEB-INF/views/include/topnav.jsp" />
     		<!-- 지도 크기 -->
     		<h2 class="text-center mt-2 mb-2">오시는 길</h2>
     		<div class="gogo" style="display: flex; justify-content: center;">
    	 <div id="map" style="width:600px;height:500px;"></div>
    	   </div>
    	   <div class="text-center mt-3 mb-3">
    	 <a class="btn btn-primary" style="margin-right: 10px; margin-right: 10px" href="https://map.kakao.com/link/to/cj shop,35.2089911, 126.8758756"> 길 찾기</a>
    	<a class="btn btn-primary" style="margin-right: 10px; margin-right: 10px" href="https://map.kakao.com/link/roadview/35.2089911, 126.8758756">로드뷰</a>
    	</div>
    	
    	 
        <!-- Footer-->
       <jsp:include page="/WEB-INF/views/include/footer.jsp" />
       
       <script>
       var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
       var options = { //지도를 생성할 때 필요한 기본 옵션
       	center: new kakao.maps.LatLng(35.2089911, 126.8758756), //지도의 중심좌표.
       	level: 3 //지도의 레벨(확대, 축소 정도)
      
       };
    	var markerPosition  = new kakao.maps.LatLng(35.2089911, 126.8758756);
       var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
       
       var marker = new kakao.maps.Marker({
    	    position: markerPosition
    	});
       marker.setMap(map);
       </script>
</body>

</html>