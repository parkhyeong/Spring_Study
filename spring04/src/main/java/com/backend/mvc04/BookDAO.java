package com.backend.mvc04;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

@Repository
public class BookDAO {
	@Autowired
	SqlSessionTemplate my;
	
	//북마크 추가
	public int insert(BookDTO dto) {
		int result = my.insert("book.create",dto);
		System.out.println(dto);
		return result;
	}
	
	//북마크 수정
	public int update(BookDTO dto) {
		int result = my.update("book.update",dto);
		return result;
	}
	
	//book 하나 검색
	public BookDTO one(String id) {
		return my.selectOne("book.one",id);
	}
	
	//전체 book list
	public List<BookDTO> list(){
		List<BookDTO> list = my.selectList("book.list");
		return list;
	}
	
	
	
}
