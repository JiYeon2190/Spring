<%@page import="com.spring.care.impl.BoardDo"%>
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
		<a class="nav-link" href="searcha.do?type=a" style="color: grey;">시설 찾기</a> 
		<a class="nav-link" href="list.do" style="color: grey;">예약 정보</a> 
	</nav>
</div>
<hr style="height: 2px;">
<div style="height: 90px; margin-top: 50px;">
	<p class="fs-1 fw-bold text-center font-monospace">입원 상담 예약</p>
</div>
<hr style="margin: 10px 300px 50px 300px">
<div class="container border form_container shadow"
	style="padding: 20px; width: 600px; border-radius: 20px; margin-bottom: 50px;">
	<form action="insert.do" method="post" name="frm">
		<div class="mb-1">
			<label class="form-label">예약자 성함</label> <input type="text"
				class="form-control" name="name" autocomplete="off">
		</div>
		<div class="mb-1">
			<label class="form-label">예약자 연락처</label> <input type="tel"
				class="form-control" name="tel" autocomplete="off">
		</div>
		<div class="mb-1">
			<label class="form-label">시설 이름</label> <input type="text"
				class="form-control" name="fname" value="${board.name}"
				readonly="readonly">
		</div>
		<div class="row g-3">
			<div class="col">
				<label class="form-label">예약 날짜</label> <input type="date"
					class="form-control" name="date">
			</div>
			<div class="col">
				<label class="form-label">예약 시간</label> <input type="time"
					class="form-control" name="time">
			</div>
		</div>
		<div class="mb-1">
		  <label class="form-label">상담 내용</label>
		  <textarea class="form-control" name="content" rows="3"></textarea>
		</div>
		<div style="padding: 20px 0 0 435px;">
			<button type="submit" class="btn btn-outline-success">예약</button>
			<button type="reset" class="btn btn-outline-danger"
				onclick="location.href='searcha.do?type=a'">취소</button>
		</div>
	</form>
</div>
</body>
</html>