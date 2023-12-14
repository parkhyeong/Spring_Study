package com.multi.mini3;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MemberController {

	@Autowired
	MemberService memberservice;

	// 로그인
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(MemberVO memberVO, HttpSession session) {

		int result = memberservice.login(memberVO);

		if (result == 0) {

			session.setAttribute("id", null);

			return "login_fail_alert";
		} else {
			session.setAttribute("id", memberVO.getMember_id());
			return "redirect:home.jsp";
		}

	}

	// 로그아웃
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:home.jsp";
	}

	// 회원가입
	@RequestMapping(value = "insert", method = RequestMethod.POST)
	public String insert(MemberVO memberVO, HttpServletRequest request) {

		try {
			memberservice.insert(memberVO);
			request.setAttribute("msg", "없는 회원정보입니다 확인해주세요");
			request.setAttribute("url", "/");
			return "redirect:home.jsp";
		} catch (Exception e) {
			System.out.println("sql 실패");
			return "redirect:index.jsp";
		}

	}

	// 아이디 중복확인 처리
	@RequestMapping(value = "idOverlap", method = RequestMethod.POST)
	public void idOverlap(HttpServletResponse response, String member_id) throws IOException {
		// @RequestParam는 요청의 특정 파라미터 값을 찾아낼 때 사용하는 어노테이션
		memberservice.idOverlap(member_id, response); // 서비스에 있는 idOverlap 호출.
	}

	//닉네임 중복확인 처리
	@RequestMapping(value = "nicknameOverlap", method = RequestMethod.POST)
	public void nicknameOverlap(HttpServletResponse response, String nickname) throws IOException {
		// @RequestParam는 요청의 특정 파라미터 값을 찾아낼 때 사용하는 어노테이션
		memberservice.nicknameOverlap(nickname, response); // 서비스에 있는 idOverlap 호출.
	}

}
