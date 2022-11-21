<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<!-- CSS only -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
<script type="text/javascript" src="/resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="/resources/ckeditor/ckeditor.js"></script>
</head>
<body>
<form name="frm" id="frm" method="post" action="/book/addBook">	
	<div class="card card-primary " style="font-family: 메이플스토리;">
		<div class="card-header">
			<h3 class="card-title">도서등록</h3>
		</div>
		<div class="card-body">
			
			<div class="form-group">
				<label>제목</label>
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text">
							<i class="bi bi-book-fill"></i>
						</span>
					</div>
					<input type="text" class="form-control" name="title" value="">
				</div>
			</div>


			<div class="form-group">
				<label>카테고리</label>
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text">
								<i class="bi bi-book-half"></i>
						</span>
					</div>
					<input type="text" class="form-control" name="category" value="">
				</div>
			</div>


			<div class="form-group">
				<label>가격</label>
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text">
							<i class="bi bi-cash-coin"></i>
						</span>
					</div>	
					<input type="text" class="form-control"  name="price" id="txtPrice"value="">
				</div>
			</div>
			
			<div class="form-group">
				<label>내용</label>
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text">
							<i class="bi bi-clipboard"></i>
						</span>
					</div>	
					<textarea id="content" name="content"></textarea>
				</div>
			</div>
		
			<!-- 수정모드 -->
			<div align="right" id="span2" >
				<button type="submit" class="btn btn-success" >확인</button>
				<a class="btn btn-danger" href="/book/list">취소</a>
			</div>
		</div>
	</div>
</form>
<script type="text/javascript">

$(function(){
	
	// 숫자입력 validate
	$("#txtPrice").on("keyup", function(){
		$(this).val($(this).val().replace(/[^0-9]/g,""));
	})
	
});
</script>
<script type="text/javascript">

	CKEDITOR.replace("content");
</script>
	
</body>
</html>