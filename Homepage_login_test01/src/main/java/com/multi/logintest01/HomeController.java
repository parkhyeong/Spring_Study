package com.multi.logintest01;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

	@Autowired
	MemberDAO dao;
	
	@RequestMapping("insert")
	public String insert(MemberVO vo, Model model) {
		int result = dao.insert(vo);
		model.addAttribute("result", result);
		return "insert";
	}

	@RequestMapping(value = "select", method = RequestMethod.POST)
    public String select(MemberVO vo, Model model, HttpServletRequest request) {
        MemberVO result = dao.select(vo);

        if (result != null) {
            // 로그인 성공한 경우
            // 세션에 로그인 정보를 저장하고, 홈 페이지로 리다이렉션
            request.getSession().setAttribute("loggedInUser", result);
            
            return "redirect:home.jsp";  // "/home"으로 리다이렉션
        } else {
            // 로그인 실패한 경우
            model.addAttribute("loginFailedMessage", "아이디 또는 비밀번호가 올바르지 않습니다.");
            return "login.jsp";
        }
    }
}

