<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="/resources/js/jquery-3.6.0.js"></script>
<title>제이쿼리로 동적으로 생성된 버튼에 이벤트를 달아보자</title>
<script type="text/javascript">
$(function(){
	// 첫번째 버튼 이벤트
	$("#firstButton").on("click", function(e){
		let bodyHtml = "<button id='secondButton'>두번째 버튼(동적생성)</button>";
		// mainDiv 마지막 요소로 추가
		$("#mainDiv").append(bodyHtml);
	});
	
	// 두번째 버튼 이벤트
	// 두번째 버튼을 클릭하면 alert("개똥이");를 처리해보자
	$(document).on("click", "#secondButton", function(){
		alert("개똥이");
	});
	
});

// 쉼표 문자열에서 최대값을 구해보자
	let c_values = "500, 200, 600, 700, 100, 300";
	// 내가 푼 방법
	let arr_values = c_values.split(",");
	console.log(arr_values);
	const min = Math.min.apply(null, arr_values);
	const max = Math.max.apply(null, arr_values);
	console.log("내가 푼 최소값 : " + min);
	console.log("내가 푼 최대값 : " + max);
	
	// 선생님이 푼 방법
	// map : 반복문을 돌며 배열 안의 요소 들을 1:1로 짝지어 줌
	let values = c_values.split(",").map(str => Number(str));
	console.log("values : " + values);
	console.log("values.length : " + values.length);
	
	// reduce : 배열.reduce((누적값, 현재값, 인덱스, 요소))
	// -Infinity : 초기값을 제공하지 않을 경우 배열의 첫 번째 요소를 사용함
	let max2 = values.reduce(function(a,b){
		return Math.max(a,b);
	},-Infinity);
	console.log("선생님이 푼 max : " + max);

</script>
<script type="text/javascript">
	let key2 = sessionStorage.getItem("key2");
	
	console.log("key2 : " + key2);

</script>
</head>
<body>
	<div id="mainDiv">
		<button id="firstButton">첫번째 버튼</button>
	</div>
</body>
</html>