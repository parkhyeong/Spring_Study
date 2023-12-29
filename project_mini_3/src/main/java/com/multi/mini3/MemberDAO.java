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
		return result;
	}
	
	//로그인
	public int count(MemberVO memberVO) {
		return my.selectOne("member.count", memberVO);

	}
	
	public void insert(MemberVO memberVO) {
		my.insert("member.insert", memberVO);
	}
	
	public String idConfirm(String member_id) {
		return my.selectOne("member.idConfirm", member_id);
	}
	
	public String nicknameConfirm(String nickname) {
		return my.selectOne("member.nicknameConfirm", nickname);
	}
}
