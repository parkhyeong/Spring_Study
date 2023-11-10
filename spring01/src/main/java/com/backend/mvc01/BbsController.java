package com.backend.mvc01;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BbsController {

	@Autowired
	BbsDAO dao;
	
	//요청하나당 함수하나.
	@RequestMapping("insert2")
	public void insert2(BbsDTO2 bag, Model model) {
		//db처리 --> views/insert2.jsp결과를 출력해주세요.
		int result =dao.insert(bag);
		System.out.println(result);
		//vuews까지 데이터를 넘길 수 있는 객체 필요(model)
		//함수 (Model model)써놓으면 스프링이 model객체를 만들어서 넣어준다.
		model.addAttribute("result",result);
	}
	
	@RequestMapping("update2")
	public String update2(BbsDTO2 bag) {
		int result= dao.update(bag);
		
		if (result ==1) { // views/ok.jsp
			return "redirect:bbs.jsp";
		}
		else { // views/no.jsp
			return "no";
		}
	
	}
	
	@RequestMapping("delete2")
	public String delete2(BbsDTO2 bag, Model model) {
		//bag에 넣고
		//dao를 이용해서 db처리하고
		int result = dao.delete(bag);
		//views/delete.jsp를 만들어서 결과를 출력
		model.addAttribute("result",result);
		return "delete";
	}
}
