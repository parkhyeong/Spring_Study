package com.backend.test100;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CarController {
	
	@Autowired
	CarDAO dao;
	
	@RequestMapping("list4")
	public void list4(PageVO2 pageVO2, Model model) {
		pageVO2.setStartEnd(); //start값과 end값 계산
		List<CarVO> list = dao.list1(pageVO2);
		int count = dao.count();
		int pages= count/5;
		
		if (pages%5 !=0) {
			pages+=1;
		}
		model.addAttribute("list",list);
		model.addAttribute("pages",pages);
		model.addAttribute("count",count);
	}
	
	@RequestMapping("list5")
	public void list5(PageVO2 pageVO2, Model model) {
		pageVO2.setStartEnd(); //start값과 end값 계산
		List<CarVO> list = dao.list1(pageVO2);
		int count = dao.count();
		int pages= count/20;
		
		if (pages%20 !=0) {
			pages+=1;
		}
		model.addAttribute("list",list);
		model.addAttribute("pages",pages);
		model.addAttribute("count",count);
	}
	
	@RequestMapping("list0")
	public void list1(PageVO2 pageVO2, Model model) {
		pageVO2.setStartEnd(); //start값과 end값 계산
		List<CarVO> list = dao.list1(pageVO2);
		model.addAttribute("list",list);

	}
	
}
