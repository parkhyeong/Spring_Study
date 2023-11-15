package com.backend.mvc05;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
	
	@RequestMapping("test")
	public void test() {
		System.out.println("test요청이 들어왔음.");
	}
	
	@RequestMapping("test2")
	public void test2() {
		System.out.println("test2요청이 들어왔음.");
	}
}
