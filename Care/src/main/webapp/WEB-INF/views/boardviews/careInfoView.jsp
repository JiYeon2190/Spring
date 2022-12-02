<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 	  	rel="stylesheet" 
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 	crossorigin="anonymous">
<script 	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" 	crossorigin="anonymous"></script>
<style>
.my_container {
	max-width: 1000px;
	padding: 32px;
	border-radius: 10px;
	box-shadow: 0 8px 20px 0 rgba(0, 0, 255, 0.5)
}
</style>
<title>care anywhere</title>
</head>
<body>
<hr style="height: 2px;">
<div class="p-3">
	<nav class="nav nav-pills nav-justified">
		<div style="width: 300px; padding-left: 30px; color: #006400;">
			<h3 class="fw-bold font-monospace">Care Anywhere</h3>
		</div>
		<div class="vr"></div>
		<a class="nav-link" href="main.do" style="color: grey;">홈</a>
		<a class="nav-link" href="searcha.do?type=a" style="color: #006400;">시설 찾기</a> 
		<a class="nav-link" href="list.do" style="color: grey;">예약 정보</a> 
	</nav>
</div>
<hr style="height: 2px;">
<div style="height: 90px; margin-top: 50px;">
	<p class="fs-1 fw-bold text-center font-monospace">시설 정보</p>
</div>
<hr style="margin: 10px 300px 30px 300px">
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel"
style="padding: 0 400px 0 400px;">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="${board.img1}" class="d-block w-100 rounded">
    </div>
    <div class="carousel-item">
      <img src="${board.img2}" class="d-block w-100 rounded">
    </div>
    <div class="carousel-item">
      <img src="${board.img3}" class="d-block w-100 rounded">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev"
		  style="margin-left: 350px;">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next"
		  style="margin-right: 350px;">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<div style="margin-top: 20px; padding: 0 400px 0 400px;">
	<p class="fs-2 fw-bold">${board.name}
	<button type="button" class="btn btn-outline-success" style="float: right;"
			onclick="location.href='form.do?seq=${board.seq}'">
			예약하기
	</button>
	</p>
	<p class="fs-6 fw-light">${board.addr}
	<button type="button" class="btn btn-outline-warning" style="height: 35px; font-size: 12px; width: 70px;"
			onclick="window.open('https://map.kakao.com/?from=roughmap&amp;eName=${board.addr}')">
			길찾기
	</button>
	</p>
</div>
<hr style="margin: 20px 400px 10px 400px">
<div class="container" style="padding: 0 300px 0 300px;">
  <div class="row row-cols-lg-3">
    <div class="col">
      <div class="p-1" style="text-align: center;">
      <p class="fs-6 fw-light text-center font-monospace">평가등급</p>
      <p class="fs-3 fw-bold text-center font-monospace">${board.grade} 등급</p>
      </div>
    </div>
    <div class="col">
      <div class="p-1" style="text-align: center;">
  	  <p class="fs-6 fw-light text-center font-monospace">의사수</p>
      <p class="fs-3 fw-bold text-center font-monospace">${board.doctor} 명</p>
      </div>
    </div>
    <div class="col">
      <div class="p-1" style="text-align: center;">
      <p class="fs-6 fw-light text-center font-monospace">인원</p>
      <p class="fs-3 fw-bold text-center font-monospace">${board.num} 명</p>
      </div>
    </div>
  </div>
</div>
<hr style="margin: 0 400px 10px 400px">
</body>
</html>