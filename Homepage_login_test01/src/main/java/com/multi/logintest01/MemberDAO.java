package com.multi.logintest01;

import java.util.List;
import java.util.Date;
import java.util.Locale;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * Handles requests for the application home page.
 */
@Controller
public class MemberDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public int insert(MemberVO vo) {
		int result = 0;
		
		result = my.insert("member.create", vo);
		
		return result;
	}
	public MemberVO select(MemberVO vo) {
	    MemberVO result = my.selectOne("member.select", vo);
	    return result;
	}

	
}
	
	
	
