package com.backend.mvc05;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BbsController {

	@Autowired
	BbsDAO dao;
	
	@Autowired
	ReplyDAO dao2;
	
	@RequestMapping("one")
	public void one(BbsDTO dto, Model model) throws Exception {
		System.out.println(dto);
		BbsDTO bag = dao.one(dto);
		List<ReplyDTO> list=dao2.list(dto.getId());
		//검색결과는 bag에 들어있음. ==> views/one.jsp에 결과를 출력 
		//bag을 one.jsp까지 전달해주어야 한다. ==> Model
		model.addAttribute("bag", bag); //Object(큰) <-- BbsDTO2
		//자동타입변환(자동형변환, Casting, 업캐스팅)
		model.addAttribute("list",list);
	}
	
	@RequestMapping("list")
	public void list(Model model) throws Exception {
		//dao를 이용해서 여러개를 받아서 가지고 와주세요.
		List<BbsDTO> list = dao.list();
		System.out.println(list.size());
		//views/list.jsp까지 넘어가야 함.==>Model 
		//model을 이용해서 검색결과인 list를 list.jsp까지 넘기자.!
		model.addAttribute("list", list);
	}
	
	//요청하나당 함수하나.
	@RequestMapping("insert2")
	public void insert2(BbsDTO bag, Model model) {
		//db처리 --> views/insert2.jsp결과를 출력해주세요.
		int result =dao.insert(bag);
		System.out.println(result);
		//vuews까지 데이터를 넘길 수 있는 객체 필요(model)
		//함수 (Model model)써놓으면 스프링이 model객체를 만들어서 넣어준다.
		model.addAttribute("result",result);
	}
	
	@RequestMapping("update2")
	public String update2(BbsDTO bag) {
		int result= dao.update(bag);
		
		if (result ==1) { // views/ok.jsp
			return "redirect:bbs.jsp";
		}
		else { // views/no.jsp
			return "no";
		}
	
	}
	
	@RequestMapping("delete2")
	public String delete2(BbsDTO bag, Model model) {
		//bag에 넣고
		//dao를 이용해서 db처리하고
		int result = dao.delete(bag);
		//views/delete.jsp를 만들어서 결과를 출력
		model.addAttribute("result",result);
		return "delete";
	}
	
}
