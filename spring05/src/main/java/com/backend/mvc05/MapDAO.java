package com.backend.mvc05;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MapDAO {

	@Autowired
	SqlSessionTemplate my;
	
	//전체리스트 가지고 오는 기능 
	public List<MapVO> all() {
		return my.selectList("mymap.all");
	}
	
	//location에 맞는 정보를 가지고 오는 기능 
	public MapVO one(String location) {
		return my.selectOne("mymap.one", location);
	}
}
