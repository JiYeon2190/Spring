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
		<a class="nav-link" href="list.do" style="color: #006400;">예약 정보</a> 
	</nav>
</div>
<hr style="height: 2px;">
<div style="height: 90px; margin-top: 50px;">
	<p class="fs-1 fw-bold text-center font-monospace">예약 정보</p>
</div>
<hr style="margin: 10px 300px 30px 300px">
<div class="container" style="width: 1220px; padding-bottom: 50px;">
	<div style="float: left;">
		<form class="d-flex" action="sortList.do" method="post" style="">
			<select name="sortCon" class="form-select me-2" style="width: 150px;">
				<option value="asc" <c:if test="${param.sortCon == 'asc'}">selected</c:if>>오래된순</option>
				<option value="desc" <c:if test="${param.sortCon == 'desc'}">selected</c:if>>최신순</option>
				<option value="name" <c:if test="${param.sortCon == 'name'}">selected</c:if>>이름순</option>
				<option value="time" <c:if test="${param.sortCon == 'time'}">selected</c:if>>시간순</option>
			</select>
			<button class="btn btn-outline-success" type="submit" value="선택"
				style="width: 70px;">정렬</button>
		</form>
	</div>
	<div style="float: right;">
		<form class="d-flex" action="searchList.do" method="post"
			style="width: 400px;">
			<select name="searchCon" class="form-select me-2" style="width: 150px;">
				<option value="all">전체</option>
				<option value="name">예약자 이름</option>
				<option value="fname">시설 이름</option>
			</select> <input class="form-control me-2" type="text" name="searchKey"
				placeholder="검색" autocomplete="off">
			<button class="btn btn-outline-success" type="submit"
				style="width: 100px;">
				검색
			</button>
		</form>
	</div>
</div>
<div class="container border list_container"
	style="padding: 20px; margin-bottom: 50px; width: 1200px;">
	<table class="table table-hover">
		<thead>
			<tr align="center">
				<th scope="col">예약자 성함</th>
				<th scope="col">예약자 연락처</th>
				<th scope="col">시설 이름</th>
				<th scope="col">예약 날짜</th>
				<th scope="col">예약 시간</th>
				<th scope="col">수정/취소</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${bList}" var="board">
		  		<tr align="center"> 
					<td> ${board.name} </td>
					<td> ${board.tel} </td>
					<td> ${board.fname} </td>
					<td> ${board.date} </td>
					<td> ${board.time} </td>	
					<td>
				      	<button class="btn btn-outline-success" data-bs-toggle="modal" 
				      			data-bs-target="#modifyModal" 
				      			data-seq="${board.seq}"
				      			data-name="${board.name}"
				      			data-tel="${board.tel}"
				      			data-fname="${board.fname}"
				      			data-date="${board.date}"
				      			data-time="${board.time}"
				      			data-content="${board.content}">
				      	정보 수정
				      	</button>
			    		<button class="btn btn-outline-danger"
			    		onclick="removeCheck(${board.seq})">예약 취소</button>
				    </td>
				</tr>
		    </c:forEach>
		</tbody>
	</table>
</div>
<div class="modal fade" id="modifyModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">예약 정보 수정</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">   
          <div class="mb-3">
		    <label for="exampleInputEmail1" class="form-label">예약자 성함</label>
		    <input type="text" name="name" class="form-control" id="name">
		  </div>
		  <div class="mb-3">
		    <label for="exampleInputEmail1" class="form-label">예약자 연락처</label>
		    <input type="text" name="tel" class="form-control" id="tel">
		  </div>
		  <div class="mb-3">
		    <label for="exampleInputEmail1" class="form-label">시설 이름</label>
		    <input type="text" name="fname" class="form-control" id="fname" readonly="readonly">
		  </div>
		  <div class="row g-3">
			<div class="col">
				<label class="form-label">예약 날짜</label> 
				<input type="date" class="form-control" name="date" id="date">
			</div>
			<div class="col">
				<label class="form-label">예약 시간</label> 
				<input type="time" class="form-control" name="time" id="time">
			</div>
		  </div>
		  <div class="mb-3">
		    <label for="exampleInputEmail1" class="form-label">상담 내용</label>
		    <textarea class="form-control" name="content" id="content" rows="3"></textarea>
		  </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-outline-danger" data-bs-dismiss="modal">취소</button>
        <button type="button" class="btn btn-outline-success"
        onclick="modifyBoard()">수정</button>
      </div>
    </div>
  </div>
</div>

<script>
	let seq, name, tel, fname, date, time, content,
		modifyModal = document.getElementById("modifyModal"),
		nameId = document.getElementById("name"),
		telId = document.getElementById("tel"),
		fnameId = document.getElementById("fname"),
		dateId = document.getElementById("date"),
		timeId = document.getElementById("time"),
		contentId = document.getElementById("content");
	
	modifyModal.addEventListener("show.bs.modal", function(event) {
		console.log(event);
		seq = event.relatedTarget.dataset['seq'];
		name = event.relatedTarget.dataset['name'];
		tel = event.relatedTarget.dataset['tel'];
		fname = event.relatedTarget.dataset['fname'];
		date = event.relatedTarget.dataset['date'];
		time = event.relatedTarget.dataset['time'];
		content = event.relatedTarget.dataset['content'];
		console.log('name : ' + name);
		console.log('tel : ' + tel);
		console.log('fname : ' + fname);
		console.log('date : ' + date);
		console.log('time : ' + time);
		console.log('content : ' + content);
		nameId.value = name;
		telId.value = tel;
		fnameId.value = fname;
		dateId.value = date;
		timeId.value = time;
		contentId.value = content;
	});
	
	function modifyBoard() {
		name = nameId.value;
		tel = telId.value;
		fname = fnameId.value;
		date = dateId.value;
		time = timeId.value;
		content = contentId.value;
		location.href='modify.do?seq='+seq+
					  '&name='+name+
					  '&tel='+tel+
					  '&fname='+fname+
					  '&date='+date+
					  '&time='+time+
					  '&content='+content;
	}

	function removeCheck(num) {
		if (confirm("예약을 취소하시겠습니까?") == true){
			location.href="delete.do?seq="+num
		}else{
			return false;
		}
	}
</script>
</body>
</html>