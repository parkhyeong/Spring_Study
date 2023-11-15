package com.backend.mvc03;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookController {
	//요청하나당 함수 하나!!
	@Autowired
	BookDAO dao;
	
	@RequestMapping("one2") 
	public void one(BookDTO dto, Model model) throws Exception{
		BookDTO bag=dao.one(dto);
		model.addAttribute("bag",bag);
	}
	
	@RequestMapping("all2")
	public void all(Model model) throws Exception {
		List<BookDTO> list = dao.list();
		model.addAttribute("list", list);
	}
	
	//북마크 추가
	@RequestMapping("insert")
	public String insert(BookDTO dto) {
		int result= dao.insert(dto);
		if (result == 1) {
			return "insert";
		}
		else {
			return "redirect:index.jsp";
		}
	}
	
	@RequestMapping("up2")
	public String up(BookDTO dto) {
		int result=dao.update(dto);
		if (result == 1) {
			return "up2";
		}
		else {
			return "redirect:index.jsp";
		}
	}
}
