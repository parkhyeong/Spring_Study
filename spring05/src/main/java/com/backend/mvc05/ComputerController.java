package com.backend.mvc05;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ComputerController {
	
	@RequestMapping("computer")
	public void computer(ComputerVO vo, Model model) {
		System.out.println(vo);
		int total = vo.getPrice() +vo.getPrice2();
		model.addAttribute("vo",vo);
		model.addAttribute("total",total);
		
	}
}
