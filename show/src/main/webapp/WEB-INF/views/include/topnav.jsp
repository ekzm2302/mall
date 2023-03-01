<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="css/styles.css" rel="stylesheet" />
<style>
a { text-decoration:none !important }
a:hover {
  color: #b7b8b8 !important; 
}
.title > a {
  color: white;
}
</style>
<header>
 <!-- Navigation-->

        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="<c:url value='/'/>">CJ SHOP</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="<c:url value='/'/>">홈</a></li>
                         <li class="nav-item"><a class="nav-link active" aria-current="page" href="list.bo">공지사항</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="list">전체</a></li>
                                <li><hr class="dropdown-divider" /></li>
                                <li><a class="dropdown-item" href="#!">신상</a></li>
                                <li><a class="dropdown-item" href="#!">악세사리</a></li>
                            </ul>
                        </li>
                    </ul>
                    <form class="d-flex">
                        <button class="btn btn-outline-dark" type="submit">
                            <i class="bi-cart-fill me-1"></i>
                            Cart
                            <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                        </button>
                    </form>
                    <!-- 로그인하지 않은 경우 -->
                    <c:if test="${empty loginInfo}">
                     <a class="nav-link nav-item" href="login">로그인</a>
                     <a class="nav-link nav-item" href="insert">회원가입</a>
                    </c:if>
                    <!-- 로그인한 경우 -->
                    <c:if test="${not empty loginInfo}">
                    <a class="nav-link nav-item" ><strong>${loginInfo.username} 님</strong></a>
                    <a class="nav-link nav-item" href="logout">로그아웃</a>
                    </c:if>
                </div>
            </div>
        </nav>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
</header>
    <!-- Header-->
        <header class="bg-dark py-3 mt-2">
            <div class="container px-4 px-lg-5 my-5">
               <div class="text-center text-white">
                  <p class="title display-4 fw-bolder"> <a href=""> CJ Shop</a></p>
                    <p class="lead fw-normal text-white-50 mb-0">예쁜옷 예쁜신상 많은 집</p>
                </div>
            </div>
        </header>
          
        