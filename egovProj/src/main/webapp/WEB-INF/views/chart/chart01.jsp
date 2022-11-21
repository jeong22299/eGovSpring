<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="/resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript">
	$(function(){
		// 구글차트 라이브러리 로딩(메모리에 올림)
		google.load("visualization", "1",{
			"packages":["corechart"]
		});
		
		// 로딩이 완료되면 drawChart 함수를 호출해보자
		google.setOnLoadCallback(drawChart);
		
		// responseText : json 데이터를 텍스트로 읽어 들임. console.log로 볼 수 있음
		function drawChart(){
			let jsonData = $.ajax({
				url:"/resources/json/sampleData.json",
				dataType:"json",
				async:false
			}).responseText;
			
			console.log("jsonData : " + jsonData);
			
			// 데이터 테이블 생성
			let data = new google.visualization.DataTable(jsonData);
			// 차트를 출력할 div를 선택(PieChart, LineChart, ColumnChart)
			let chart = new google.visualization.ColumnChart(document.getElementById("chart_div"));
			// 차트객체(chart).draw(데이터테이블(data), 옵션)
			chart.draw(data,{
				title :"개똥이 제목",
			//	curveType:"function",   // LineChart에서 선이 곡선으로
				width:600,
				height:450
			});
		}
		
		
		
		
	});
</script>

<div id="chart_div"></div>






