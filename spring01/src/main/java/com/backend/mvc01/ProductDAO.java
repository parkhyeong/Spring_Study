package com.backend.mvc01;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO {

	@Autowired
	SqlSessionTemplate my;
	
	public int update(ProductDTO dto) {
		int result = my.update("product.update", dto);
		
		return result; // 1, 0
	}
	
	
	public int insert(ProductDTO dto) {
		int result = my.insert("product.create",dto);
		
		return result; // 1, 0
	}

	public List<ProductDTO> list() throws Exception {
		List <ProductDTO> list =my.selectList("product.list");
		return list;

	}

	// 리스트 중에서 선택한 물건 하나 보기
	public ProductDTO one(ProductDTO dto) throws Exception {

		ProductDTO dto2 = my.selectOne("product.one",dto);

		return dto2;

	}
}