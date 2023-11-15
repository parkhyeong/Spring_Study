package com.backend.mvc05;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MovieController {
	@RequestMapping("movie")
	public void movie(String title,String price, Model model) {
		model.addAttribute("title", title);
		model.addAttribute("price",price);
	}
}
