<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>  
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
<form name="frm" id="frm" method="post">	
	<div class="card card-primary " style="font-family: 메이플스토리;">
		<div class="card-header">
			<h3 class="card-title">${bookVO.bookId}</h3>
		</div>
		<div class="card-body">
			<input type="text" name="bookId" value="${bookVO.bookId}" hidden="true">
			<div class="form-group">
				<label>제목</label>
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text">
							<i class="bi bi-book-fill"></i>
						</span>
					</div>
					<input type="text" id="fc" class="form-control" name="title" value="${bookVO.title}" readonly="readonly">
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
					<input type="text"  id="fc" class="form-control" name="category" value="${bookVO.category}" readonly="readonly">
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
					<input type="text"   class="form-control"  name="price"  id="txtPrice" value="<fmt:formatNumber pattern='#,###'  value='${bookVO.price}'/>"  readonly="readonly">
				</div>
			</div>
			
			<div class="form-group">
				<label>입력일자</label>
				<div class="input-group">
					<div class="input-group-prepend">
						<span class="input-group-text">
							<i  class="far fa-calendar-alt" ></i>
						</span>
					</div>
					<input type="text"  class="form-control"  name="insertDate" value="<fmt:formatDate value='${bookVO.insertDate}' pattern='yyyy-MM-dd' />" readonly="readonly">
				</div>
			</div>
			
			<div class="form-group">
				<label>내용</label>
				<div class="input-group" >
					<div class="input-group-prepend">
						<span class="input-group-text">
							<i class="bi bi-clipboard"></i>
						</span>
					</div>	
					<textarea id="content" name="content"  readonly>${bookVO.content}</textarea>
				</div>
			</div>
			
			<!-- 일반모드 -->
			<div align="right" id="span1">
				<button type="button" class="btn btn-success btn-sm" id="edit">수정</button>
				<a class="btn btn-primary btn-sm" href="/book/list">목록</a>
			</div>
			<!-- 수정모드 -->
			<div align="right" id="span2" style="display: none;">
					<button type="submit" class="btn btn-success btn-sm" >확인</button>
					<a class="btn btn-danger btn-sm" href="/book/detail?bookId=${bookVO.bookId}">취소</a>
			</div>
		</div>
	</div>
	<sec:csrfInput/>
</form>
<script type="text/javascript">
$(function(){
	$("#edit").on("click", function(){
		$(".form-control").removeAttr("readonly");
		$("textarea").attr("readonly", false);
		// 수정모드
		$("#span2").css("display","block");
		// 일반모드
		$("#span1").css("display","none");
		$("#fc").attr("required", true);
		// 책 내용 처리
		CKEDITOR.instances['content'].setReadOnly(false);
		
		// form action 추가
		$("#frm").attr("action","/book/update");
		
	});
	
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