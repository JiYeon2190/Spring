<%@ page language="java" contentType="text/html; charset=EUC-KR"
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
body {
	background: #FCFFFF;
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
		<a class="nav-link" href="main.do" style="color: #006400;">홈</a>
		<a class="nav-link" href="searcha.do?type=a" style="color: grey;">시설 찾기</a> 
		<a class="nav-link" href="list.do" style="color: grey;">예약 정보</a> 
	</nav>
</div>
<hr style="height: 2px;">
<div style="height: 170px; margin-top: 100px;">
	<p class="fs-1 fw-bold text-center font-monospace">요양시설 상담 예약 서비스</p>
	<p class="fs-5 fw-light text-center font-monospace">어떤 시설을 찾고 계시나요?</p>
</div>
<!-- <form action="typeList.do" method="post"> -->
<div class="container" style="width: 75%">
  <div class="row row-cols-lg-4">
    <div class="col">
      <div class="p-5 shadow-lg" style="height: 200px; text-align: center; border-radius: 20px;"
      onclick="location.href='searcha.do?type=a'">
      <img alt="" src="https://cdn.ddoga.co.kr/assets/icon/category/cate13.svg">     
      <p class="fs-6 fw-bold text-center font-monospace" style="padding-top: 25px;">요양병원</p>
      </div>
    </div>
    <div class="col">
      <div class="p-5 shadow-lg" style="height: 200px; text-align: center; border-radius: 20px;"
      onclick="location.href='searchb.do?type=b'">
      <img alt="" src="https://cdn.ddoga.co.kr/assets/icon/category/cate1.svg">     
      <p class="fs-6 fw-bold text-center font-monospace" style="padding-top: 25px;">요양원</p>
      </div>
    </div>
    <div class="col">
      <div class="p-5 shadow-lg" style="height: 200px; text-align: center; border-radius: 20px;"
      onclick="location.href='searchc.do?type=c'">
      <img alt="" src="https://cdn.ddoga.co.kr/assets/icon/category/cate2.svg">     
      <p class="fs-6 fw-bold text-center font-monospace" style="padding-top: 25px;">방문요양</p>
      </div>
    </div>
    <div class="col">
      <div class="p-5 shadow-lg" style="height: 200px; text-align: center; border-radius: 20px;"
      onclick="location.href='searchd.do?type=d'">
      <img alt="" src="https://cdn.ddoga.co.kr/assets/icon/category/cate4.svg">     
      <p class="fs-6 fw-bold text-center font-monospace" style="padding-top: 25px;">단기보호</p>
      </div>
    </div>
  </div>
</div>
<!-- </form> -->

<%-- <div class="container-fluid" style="padding: 0 400px 30px 400px;">
	<form action="visitSearch.jsp" method="post" class="d-flex"
		style="height: 50px;">
		<select name="sf" class="form-select me-2" style="width: 150px;">
			<option selected>선택</option>
			<option value="fname"
				<c:if test="${param.sf == 'fname'}">selected</c:if>>시설이름</option>
			<option value="area"
				<c:if test="${param.sf == 'area'}">selected</c:if>>지역</option>
		</select> <input name="st" class="form-control me-2" type="text" value="${param.st}"
			placeholder="요양시설 검색하기" autocomplete="off">
		<button class="btn btn-outline-success" type="submit"
			style="width: 60px">
			<i class="bi bi-search"></i>
		</button>
	</form>
</div> --%>
</body>
</html>