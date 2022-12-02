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
body {
	background: #FCFFFF;
	padding-bottom: 50px;
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
	<p class="fs-1 fw-bold text-center font-monospace">요양시설</p>
</div>
<hr style="margin: 10px 300px 30px 300px">
<div class="container-fluid" style="padding: 0 350px 30px 350px;">
	<form action="searchFac.do" method="post" class="d-flex"
		style="height: 50px;">
		<button class="btn btn-outline-success" style="width: 160px; margin-right: 10px;" type="button" 
		data-bs-toggle="offcanvas" data-bs-target="#offcanvasTop" aria-controls="offcanvasTop">
			<% String type = request.getParameter("type");
			   if(type.equals("a")) {
				   type = "요양병원";
			   }
			   else if(type.equals("b")) {
				   type = "요양원";
			   }
			   else if(type.equals("c")) {
				   type = "방문요양";
			   }
			   else if(type.equals("d")) {
				   type = "단기보호";
			   }
			%>
			<%= type %>
		</button>
		<select name="searchCon" class="form-select me-2" style="width: 150px;">
			<option value="all">전체</option>
			<option value="name">시설이름</option>
			<option value="addr">지역</option>
		</select> 
		<input name="searchKey" class="form-control me-2" type="text"
			placeholder="요양시설 검색하기" autocomplete="off">
		<button class="btn btn-outline-success" type="submit"
			style="width: 100px">
			검색
		</button>
	</form>
</div>
<div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasWithBackdrop" aria-labelledby="offcanvasWithBackdropLabel">
  <div class="offcanvas-header">
    <h5 class="offcanvas-title" id="offcanvasWithBackdropLabel">지역 선택</h5>
    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  <div class="offcanvas-body">
    <p>.....</p>
  </div>
</div>

<div class="offcanvas offcanvas-top" tabindex="-1" id="offcanvasTop" aria-labelledby="offcanvasTopLabel">
  <div class="offcanvas-header">
    <h5 id="offcanvasTopLabel" style="margin: 10px 0 0 200px">시설종류 선택</h5>
    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  <div class="offcanvas-body" style="height: 3000px;">
  	<div class="container" style="width: 75%">
	  <div class="row row-cols-lg-4">
	    <div class="col">
	      <div class="p-3 shadow-lg" style="height: 120px; text-align: center; border-radius: 20px;"
	      onclick="location.href='searcha.do?type=a'">
	      <img alt="" src="https://cdn.ddoga.co.kr/assets/icon/category/cate13.svg">     
	      <p class="fs-6 fw-bold text-center font-monospace" style="padding-top: 15px;">요양병원</p>
	      </div>
	    </div>
	    <div class="col">
	      <div class="p-3 shadow-lg" style="height: 120px; text-align: center; border-radius: 20px;"
	      onclick="location.href='searchb.do?type=b'">
	      <img alt="" src="https://cdn.ddoga.co.kr/assets/icon/category/cate1.svg">     
	      <p class="fs-6 fw-bold text-center font-monospace" style="padding-top: 15px;">요양원</p>
	      </div>
	    </div>
	    <div class="col">
	      <div class="p-3 shadow-lg" style="height: 120px; text-align: center; border-radius: 20px;"
	      onclick="location.href='searchc.do?type=c'">
	      <img alt="" src="https://cdn.ddoga.co.kr/assets/icon/category/cate2.svg">     
	      <p class="fs-6 fw-bold text-center font-monospace" style="padding-top: 15px;">방문요양</p>
	      </div>
	    </div>
	    <div class="col">
	      <div class="p-3 shadow-lg" style="height: 120px; text-align: center; border-radius: 20px;"
	      onclick="location.href='searchd.do?type=d'">
	      <img alt="" src="https://cdn.ddoga.co.kr/assets/icon/category/cate4.svg">     
	      <p class="fs-6 fw-bold text-center font-monospace" style="padding-top: 15px;">단기보호</p>
	      </div>
	    </div>
	  </div>
	</div>
  </div>
</div>

<c:forEach items="${fList}" var="board">
	<div class="container border shadow"
		style="width: 1000px; padding: 15px; border-radius: 20px; margin-bottom: 20px;">
		<div class="row">
			<div class="col">
				<img src="${board.img1}" class="card-img-top rounded" style="height: 280px;">
			</div>
			<div class="col-md-auto" style="margin-top: 60px;">
				<h5 class="card-title">${board.name}</h5>
				<p class="card-text">${board.addr}</p>
			</div>
			<div class="col-md-auto" style="margin-top: 240px;">
				<button type="button" class="btn btn-outline-success"
						onclick="location.href='form.do?seq=${board.seq}'">
						예약하기</button>
				<button type="button" class="btn btn-outline-secondary"
						onclick="location.href='info.do?seq=${board.seq}'">
						자세히 보기</button>
			</div>
		</div>
	</div>
</c:forEach>


<br />
</body>
</html>