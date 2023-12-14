package com.backend.api;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TransController {
	
	@RequestMapping("trans")
	public void trans(String ko, Model model, 네이버번역서비스 naver) {
		String en = naver.trans(ko);
		model.addAttribute("en", en);
	}
}
