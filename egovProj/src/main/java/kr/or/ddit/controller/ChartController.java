package kr.or.ddit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@RequestMapping("/chart")
@Slf4j
@Controller
public class ChartController {

	// 요청 URI : /chart/chart01
	// json 구글차트
	@GetMapping("/chart01")
	public String chart01() {
		
		// forwarding
		return "chart/chart01";
	}
	
	// 요청 URI : /chart/chart01Multi
	// json구글 멀티 차트
	@GetMapping("/chart01Multi")
	public String chart01Multi() {
		
		// forwarding
		return "chart/chart01Multi";
	}
	
	// 요청 URI : /chart/chart02
	// oracle 구글차트
	@GetMapping("/chart02")
	public String chart02() {
		
		// forwarding
		return "chart/chart02";
	}	
	
	
	
	
}
