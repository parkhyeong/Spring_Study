package com.multi.mini3;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {
	
	@Autowired
	MemberDAO dao;
	
	public int login(MemberVO memberVO) {
		return dao.count(memberVO);
	}
	
	public void insert(MemberVO memberVO) {
		dao.insert(memberVO);
	}
}
