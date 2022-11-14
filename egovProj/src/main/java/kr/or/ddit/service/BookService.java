package kr.or.ddit.service;

import java.util.List;

import kr.or.ddit.vo.BookVO;

public interface BookService {

	// 메서드 시그니처
	// 도서 목록
	public List<BookVO> list();

	// 도서 상세
	public BookVO detail(int bookId);

	//도서 수정
	public int updateBook(BookVO bookVO);

	// 도서 등록
	public int insert(BookVO bookVO);
	
	
}
