package com.multi.mini3;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {
	
	@Autowired
	MemberService memberservice;
	
	//로그인
	@RequestMapping(value="login", method = RequestMethod.POST)
	public String login(MemberVO memberVO, HttpSession session) {
		
		int result = memberservice.login(memberVO);
		
		if (result==0) {
			
			session.setAttribute("id", null);
			
	        return "login_fail_alert";
		}
		else {
			session.setAttribute("id", memberVO.getMember_id());
			return "redirect:home.jsp";
		}
		
		
	}
	
	//로그아웃
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:home.jsp";
	}
	
	//회원가입
	@RequestMapping(value="insert", method = RequestMethod.POST)
	public String logout(MemberVO memberVO) {
		memberservice.insert(memberVO);
		return "redirect:home.jsp";
	}
	
}
