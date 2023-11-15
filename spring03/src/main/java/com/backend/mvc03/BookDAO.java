package com.backend.mvc03;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BookDAO {
	@Autowired
	SqlSessionTemplate my;
	
	//북마크 추가
	public int insert(BookDTO dto) {
		int result = my.insert("book.create",dto);
		return result;
	}
	
	//북마크 수정
	public int update(BookDTO dto) {
		int result = my.update("book.update",dto);
		return result;
	}
	
	//book 하나 검색
	public BookDTO one(BookDTO dto) {
		BookDTO dto2 = my.selectOne("book.one",dto);
		return dto2;
	}
	
	//전체 book list
	public List<BookDTO> list(){
		List<BookDTO> list = my.selectList("book.list");
		return list;
	}
	
	
	
}
