package com.multi.mini3;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

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
	
	public void idOverlap(String member_id, HttpServletResponse response) throws IOException {
		System.out.println(dao.idOverlap(member_id));
		//System.out.println(memberVO.getMember_id());
		if(dao.idOverlap(member_id) == null) {
			//dao에서 select이 되지 않아야 true
			//id가 없어야 true(사용 가능)
			response.getWriter().print("1");
		}else {
			//id가 있으면 false(중복으로 사용 불가능)
			response.getWriter().print("0");
		}
		
	}
	
	
	public void nicknameOverlap(String nickname, HttpServletResponse response) throws IOException {
		System.out.println(dao.nicknameOverlap(nickname));
		//System.out.println(memberVO.getMember_id());
		if(dao.nicknameOverlap(nickname) == null) {
			//dao에서 select이 되지 않아야 true
			//id가 없어야 true(사용 가능)
			response.getWriter().print("1");
		}else {
			//id가 있으면 false(중복으로 사용 불가능)
			response.getWriter().print("0");
		}
		
	}
}
