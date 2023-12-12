package com.backend.api;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class YoungService {

	@Autowired
	YoungDAO youngDAO;
	
	public void insert() {
		청년지원센터_청년정책2 young = new 청년지원센터_청년정책2();
		ArrayList<YoungVO> list =young.parse();
		for (YoungVO youngVO  : list) {
			youngDAO.insert(youngVO);
		}
		
	}
}
