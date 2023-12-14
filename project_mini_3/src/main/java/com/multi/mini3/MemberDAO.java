package com.multi.mini3;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public MemberVO select(MemberVO memberVO) {
		MemberVO result=my.selectOne("member.select", memberVO);
		System.out.println(result);
		return result;
	}
	
	//로그인
	public int count(MemberVO memberVO) {
		return my.selectOne("member.count", memberVO);

	}
	
	public void insert(MemberVO memberVO) {
		my.insert("member.insert", memberVO);
	}
	
	public MemberVO idOverlap(String member_id) {
		System.out.println(member_id);
		return my.selectOne("member.idOverlap", member_id);
	}
	
	public MemberVO nicknameOverlap(String nickname) {
		System.out.println(nickname);
		return my.selectOne("member.nicknameOverlap", nickname);
	}
}
