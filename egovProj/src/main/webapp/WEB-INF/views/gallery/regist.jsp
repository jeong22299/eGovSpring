<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<script type="text/javascript" src="/resources/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="/resources/js/jquery-3.6.0.js"></script>
<script src="/resources/sweetalert2/sweetalert2.min.js"></script>
<link rel="stylesheet" href="/resources/sweetalert2/sweetalert2.min.css">
                  <!-- 
                  1)button
                     data-toggle="modal" data-target="샾modal-lg"
                  2)a 
                     data-toggle="modal" href="샾modal-lg"
                  3)기타
                     data-toggle="modal" data-target="샾modal-lg"
                   -->
<section class="content">         
<div class="row">
	<div class="col-md-6">
		<div class="card card-primary">
			<div class="card-header">
				<h3 class="card-title">도서 정보</h3>
				<input type="text" name="bookId" id="bookId" />
				<div class="card-tools">
					<button type="button" class="btn btn-tool"
						data-card-widget="collapse" title="Collapse">
						<i class="fas fa-minus"></i>
					</button>
				</div>
			</div>
			<div class="card-body">
			<div class="form-group">
                  <div style="clear: both;">
                     <label for="title">제목</label>
                  </div>
                  <div style="width: 70%; float: left;">
                     <input type="text" id="title" name="title" class="form-control" readonly="readonly" />
                  </div>
                  <div style="width: 30%; float: right;">
                     <button type="button" class="btn btn-outline-info btn-block btn-flat" data-toggle="modal" data-target="#modal-lg">
                        <i class="fa fa-book"></i>책 검색
                     </button>
                  </div>
               </div>
               
				<div class="form-group">
					<label for="category">카테고리</label> 
					<select id="category" name="category" class="form-control custom-select" readonly="readonly" >
						<option value="a0101" selected>소설</option>
						<option value="a0102">에세이</option>
						<option value="a0103">어린이</option>
						<option value="a0104">요리</option>
						<option value="a0105">수험서</option>
						<option value="a0106">자격증</option>
					</select>
				</div>
				<div class="form-group">
					<label for="price">가격</label> 
					<input type="text" id="price" name="price" class="form-control" readonly="readonly" >
				</div>
				<div class="form-group">
					<label for="insertDate">입력일자</label> 
					<input type="text" id="insertDate" name="insertDate" class="form-control" readonly="readonly" >
				</div>
				<div class="form-group">
					<label for="content">책 내용</label>
					<textarea id="content" name="content" class="form-control" rows="4" readonly="readonly" ></textarea>
				</div>
			</div>
			<!-- /.card-body -->
		</div>
		<!-- /.card -->
	</div>
	<div class="col-md-6">
		<div class="card card-secondary">
			<div class="card-header">
				<h3 class="card-title">이미지 정보</h3>

				<div class="card-tools">
					<button type="button" class="btn btn-tool"
						data-card-widget="collapse" title="Collapse">
						<i class="fas fa-minus"></i>
					</button>
				</div>
			</div>
			<!-- 미리보기 이미지 보이기 시작 -->
			<div class="card-body" id="card-imges">
			</div>		<!-- /.card-body -->
			<!-- 미리보기 이미지 보이기 끝 -->
			<div class="card-footer">
				<div class="input-group">
                      <div class="custom-file">
                        <input type="file" class="custom-file-input" id="input_imgs" name="uploadFile" multiple="multiple" disabled="disabled">
                        <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                      </div>
                      <div class="input-group-append">
                        <span class="input-group-text" id="uploadBtn" style="cursor:pointer;">Upload</span>
                      </div>
                    </div>
			</div>
		</div>
		<!-- /.card -->
	</div>
</div>

</section>     
<br>
<!-- 책검색 모달 시작 -->
<div class="modal fade" id="modal-lg" style="display: none;" aria-hidden="true">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">책검색</h4>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">×</span>
				</button>
			</div>
			<div class="modal-body">
			<!-- 검색 영역 시작 -->
				<div class="row">
	                <div class="col-md-8 offset-md-2">
	                        <div class="input-group">
	                            <input type="text" class="form-control form-control-lg" placeholder="Type your keywords here">
	                            <div class="input-group-append">
	                                <button type="button" class="btn btn-lg btn-default" id="btnSearch">
	                                    <i class="fa fa-search"></i>
	                                </button>
	                            </div>
	                        </div>
	                </div>
 				</div>
 				<!-- 검색 영역 끝 -->
 				<!-- 검색 결과 영역 시작 -->
				<div class="row mt-3">
					<div class="col-md-10 offset-md-1">
						<div class="list-group">
<!-- 							<div class="list-group-item"> -->
<!-- 								<div class="row"> -->
<!-- 									<div class="col-auto"> -->
<!-- 										<img class="img-fluid" src="../../dist/img/photo1.png"  width="" -->
<!-- 											alt="Photo" style="max-height: 160px;"> -->
<!-- 									</div> -->
<!-- 									<div class="col px-4"> -->
<!-- 										<div> -->
<!-- 											<div class="float-right">2021-04-20 10:14pm</div> -->
<!-- 											<h3>Lorem ipsum dolor sit amet</h3> -->
<!-- 											<p class="mb-0">consectetuer adipiscing elit. Aenean -->
<!-- 												commodo ligula eget dolor. Aenean massa. Cum sociis natoque -->
<!-- 												penatibus et magnis dis parturient montes, nascetur -->
<!-- 												ridiculus mus.</p> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
						</div>
					</div>
				</div>
				<!-- 검색 결과 영역 끝 -->
			</div>
			<div class="modal-footer ">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- 책검색 모달 끝 -->

<script type="text/javascript">
// 책 목록 result를 object로써 받을 수 있음
let bookVOList;
	$(function() {
		var Toast = Swal.mixin({
	         toast: true,
	         position: 'top-end',
	         showConfirmButton: false,
	         timer: 3000
	       });
		
		// 이미지 미리보기 시작 ///////////////////////////////////
		
		let sel_file = [];   // 이미지 객체를 담을 배열
		$("#input_imgs").on("change", handleImgFileSelect);
		
		// e : onchange 이벤트 객체
		function handleImgFileSelect(e){
			let files = e.target.files;   // == <input type="file"
			// 이미지 오브젝트 배열.
			let fileArr = Array.prototype.slice.call(files);
			
			// f :  각각의 이미지
			fileArr.forEach(function(f){
				if(!f.type.match("image.*")){
					swal("이미지 확장자만 가능합니다.","다시선택하세요","error");
					return; // 함수 종료
				}
				// 이미지를 배열에 넣음
				sel_file.push(f);
				
				let reader = new FileReader();
				// e : 리더가 이미지를 읽을 때 그 이벤트
				reader.onload = function(e){
					let img_html = "<img src=\"" + e.target.result + "\" width='50%' height='350px' />";
					
					// 객체.append : 누적, .html : 새로고침, innerHTML : J/S
					$("#card-imges").append(img_html);
				}
				// 다음 이미지 파일(f)을 위해 리더를 초기화
				reader.readAsDataURL(f);
				
			});
		}
		// 이미지 미리보기 끝    ///////////////////////////////////
		
		// ajax 파일 업로드 시작 ///////////////////////////////////
		$("#uploadBtn").on("click", function(e){
			// 가상 폼
			let formData = new FormData();
			let inputFile = $("input[name='uploadFile']");
			// 이미지 파일들을 변수에 담음
			let files = inputFile[0].files;
			
			console.log("files : " , files);
			
			// 가상폼인 formData에 이미지를 넣자
			for(let i=0; i<files.length; i++){
				// uploadFile[]
				formData.append("uploadFile", files[i]);
			}
			
			let bookId = $("#bookId").val();
			console.log("bookId : " + bookId);
			formData.append("bookId", bookId);
			
			// 아작났어유 피씨다탔어
			// GalleryController 참고
			// ATTACH 테이블의 USER_NO 컬럼의 데이터에는 bookId가 들어가야 함
			// ATTACH 테이블의 SEQ 컬럼의 데이터는 1부터 1씩 자동 증가
			
			// 스프링 시큐리티를 위한 토큰처리(csrf)
			let header = "${_csrf.headerName}";
			let token = "${_csrf.token}";
			$.ajax({
				url:"/gallery/uploadAjaxAction",
				processData:false,
				contentType:false,
				data:formData,
				dataType:"json",
				type:"post",
				beforeSend:function(xhr){
					xhr.setRequestHeader(header, token);
				},
				success:function(result){
					
					if(result.status>0){  // 다중 insert 성공!!
						Toast.fire({
							icon:'success',
							title:'성공!!'
						});
					// 3초 후에 이동
					setTimeout(function(){
						location.href = "/gallery/list?bookId="+result.bookId;
						
					},3000);
						
					}else{   // 다중 insert 실패
						Toast.fire({
							icon:'error',
							title:'다시 시도하세용!!'
						});
					}
				}
			});
		});
		// ajax 파일 업로드 끝		///////////////////////////////////
		
		$("#btnSearch").on("click", function() {
			let str = $(".form-control-lg").val();
			
			let data = {"title" : str};
			console.log("data : " + JSON.stringify(str));
			
			// 스프링 시큐리티를 위한 토큰처리(csrf)
			let header = "${_csrf.headerName}";
			let token = "${_csrf.token}";
			
			// contentType : 가즈아  /  dataType: 드루와
			$.ajax({
				url:"/gallery/registPost",
				contentType:"application/json;charset=utf-8",
				type:"post",
				data:JSON.stringify(data),
				dataType:"json",
				beforeSend:function(xhr){
					xhr.setRequestHeader(header, token);
				},
				success:function(result){
// 					console.log("result : " + JSON.stringify(result));
					bookVOList = result;
					// $.each를 쓰면 VO가 됨 => 
					//$.each(result(List), function(index, item(BookVO)))
					$.each(result, function(index,item){
						console.log("bookId : " + item.bookId);
						console.log("title : " + item.title);
						console.log("category : " + item.category);
						// result => List<BookVO>, item =>BookVO
						// volist => List<AttachVO>
						let volist = item.attachVOList;
						let filename = "/noimage.jpg"
						if(volist.length>0){
							console.log("attachVOList : " + item.attachVOList);
							$.each(volist, function(index, item){
								// 책 이미지가 1이상이면 이미지 경로를 변수에 대힙
								filename = item.filename;
							});
						}
						
						console.log("filename : " + filename);
						
						let dt = new Date(item.insertDate);
						let dtYY = dt.getFullYear();
						let dtMM = dt.getMonth();
						let dtDD = dt.getDate();
						let dtHH = dt.getHours();
						let dtMI = dt.getMinutes();
						let dtResult = dtYY + "-" + dtMM + "-" + dtDD + " "+ dtHH + ":" + dtMI;
						
						// 내용이 길어서 150자로 해보자.....
						let cont = item.content +"...";
						

						let content="";
								content += "<div class='list-group-item' value='"+item.bookId+"'><div class='row'>";
								content += "<div class='col-auto'><img class='img-fluid' src='/resources/upload"+filename+"' alt='Photo' style='max-height: 160px;'></div>";
								content += "<div class='col px-4'><div>";
								content += "<div class='float-right'>"+dtResult+"</div>";
								content += "<h3><a href='javascript:fn_go("+item.bookId+")'>"+item.title+"</a></h3>";
								content += "<p class='mb-0'>"+cont.substring(0,150)+"</p>";
								content += "</div></div></div></div>";

						$(".list-group").append(content);
						
					});
				}
				
			});
		});

		

	});
</script>
<script type="text/javascript">
function fn_go(geta){
	let str = geta;
	console.log("str : " + str);
	
	$.each(bookVOList,function(index,item){
		let bookId = item.bookId;
		
		if(str==bookId){
// 			console.log("item : " + JSON.stringify(item));
			// 책 아이디(bookId)
			$("#bookId").val(item.bookId);
			//제목(title)
			$("#title").val(item.title);
			//카테고리(category)
			$("#category").val(item.category).prop("selected", true);
			//가격(price)
			$("#price").val(item.price);
			//입력 일자(insertDate)
			$("#insertDate").val(fn_getInsertDate(item.insertDate));			
			//책 내용 => CKEDITOR 내용 변경
			CKEDITOR.instances.content.setData(item.content);
			// 책 선택하면 모달창 닫기
			$("#modal-lg").modal("hide");   // show : 모달창 보이기
			// 파일 선택 disabled를 삭제
			$("#input_imgs").removeAttr("disabled")
			
			return;
		}
	});
}

function fn_getInsertDate(geta){
	   let dt = new Date(geta);
	   let dtYY = dt.getFullYear();
	   let dtMM = dt.getMonth();
	   let dtDD = dt.getDate();
	   let dtHH = dt.getHours();
	   let dtMI = dt.getMinutes();
	   let dtResult = dtYY + "-" + dtMM + "-" + dtDD + " " + dtHH + ":" + dtMI;
	   console.log("insertDate : " + dtResult);
	   
	   return dtResult;
}

</script>

<script type="text/javascript">
// 에디터 적용
CKEDITOR.replace("content");

</script>