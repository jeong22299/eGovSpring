package kr.or.ddit.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.ddit.mapper.BookMapper;
import kr.or.ddit.service.BookService;
import kr.or.ddit.vo.BookVO;
import lombok.extern.slf4j.Slf4j;
@Slf4j
@Service
public class BookServiceImpl implements BookService {
	
	@Autowired
	BookMapper bookMapper;
	
	// 도서 목록
	@Override
	public List<BookVO> list() {
		return this.bookMapper.list();
	}
	
	// 도서 상세
	@Override
	public BookVO detail(int bookId){
		return this.bookMapper.detail(bookId);
	}
	
	//도서 수정
	@Override
	public int updateBook(BookVO bookVO) {
//		return this.bookMapper.updateBook(bookVO);
		log.info("before bookVO : " + bookVO);
		
		int result = this.bookMapper.insert(bookVO);
		log.info("after bookVO : " + bookVO);
		
		return result;
	}
	
	// 도서 등록
	@Override
	public int insert(BookVO bookVO) {
		return this.bookMapper.insert(bookVO);
	}
	
	
}
