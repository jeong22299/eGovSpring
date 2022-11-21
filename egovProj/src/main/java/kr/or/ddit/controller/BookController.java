package kr.or.ddit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.ddit.service.BookService;
import kr.or.ddit.vo.BookVO;
import lombok.extern.slf4j.Slf4j;
import oracle.jdbc.proxy.annotation.Post;

@Slf4j
@RequestMapping("/book")
@Controller
public class BookController {
	
	@Autowired
	BookService bookservice;

	@GetMapping("/list")
	public String list(Model model) {
		
		List<BookVO> bookVOList = this.bookservice.list();
		log.info("bookVOList : " + bookVOList);
		
		// 공통 약속
		model.addAttribute("bodyTitle", "도서목록");
		model.addAttribute("bookVOList", bookVOList);
		
		// forwarding
		return "book/list";
	}
	
	// 요청 URI : /book/detail?bookId=2
	// 요청 파라미터 : bookId=2
	// 메소드 이름 : detail
	// 목록에서 title을 클릭 시 상세페이지로 이동
	// 1) 스프링에서 요청파라미터를 매개변수로 받을 수 있다.
	// 요청파라미터 타입은 String타입. int형 매개변수로도 받을 수 있음(자동형변환 가능)
	//  매개변수 : String bookId/ int bookId
	// 2) Map<String, String>/ Map<String, Object> 가능
	// 3) 골뱅이ModelAttribute BookVO bookVO
	// 4) 골뱅이 RequestParam  Map<String, String>/ Map<String, Object> 가능
	@GetMapping("/detail")
	public String detail(int bookId, Model model) {
		
		BookVO bookVO = this.bookservice.detail(bookId);
		
		log.info("bookVO : " + bookVO);
		
		model.addAttribute("bodyTitle", "도서 상세");
		model.addAttribute("bookVO", bookVO);
		
		return "book/detail";
	}
	
	@PostMapping("/update")
	public String update(BookVO bookVO) {
		
		log.info("bookVO : " + bookVO.toString());
		
		int result = this.bookservice.updateBook(bookVO);
		
		return "redirect:/book/detail?bookId=" + bookVO.getBookId();
	}
	
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	@GetMapping("/addBook")
	public String insertGet(Model model) {
		
		model.addAttribute("bodyTitle", "도서 등록");
		
		return "book/addBook";
	}
	
	@PostMapping("/addBook")
	public String insertPost(BookVO bookVO) {
		
		int result = this.bookservice.insert(bookVO);
		log.info("bookVO : " + bookVO);
		
		if(result>0) {
			return "redirect:/book/detail?bookId=" + bookVO.getBookId();
		}else {
			return "redirect:/book/list";
		}
	}
	

}



















