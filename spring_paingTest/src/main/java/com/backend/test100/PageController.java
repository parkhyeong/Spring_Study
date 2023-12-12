package com.backend.test100;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {

	@Autowired
	PageDAO dao;

	@RequestMapping("list1")
	public void list1(PageVO pageVO, Model model) { // start, end
		pageVO.setStartEnd();
		List<BbsVO> list = dao.list1(pageVO);
		System.out.println(list.size());
		model.addAttribute("list", list);
	}

	@RequestMapping("list2")
	public void list2(PageVO pageVO, Model model) { // start, end
		pageVO.setStartEnd();
		List<BbsVO> list = dao.list1(pageVO);
		// 전체 페이지수 구하기
		int count = dao.count();
		// 모델로 views까지 페이지수를 넘겨야 페이지수 버튼을 만들 수 있음.
		System.out.println("전체 게시물수>> " + count);
		int pages = count / 10;
		if (count%10 !=0) {
			pages = count /10 +1;
		}
		
		System.out.println("페이지당 가지고 온 게시물수>> "+ list.size());
		model.addAttribute("list", list);
		model.addAttribute("pages", pages);
		model.addAttribute("count", count);
	}
	
	@RequestMapping("list3")
	public void list3(PageVO pageVO, Model model) { // start, end
		pageVO.setStartEnd();
		List<BbsVO> list = dao.list1(pageVO);
		// 전체 페이지수 구하기
		int count = dao.count();
		// 모델로 views까지 페이지수를 넘겨야 페이지수 버튼을 만들 수 있음.
		System.out.println("전체 게시물수>> " + count);
		int pages = count / 10;
		if (count%10 !=0) {
			pages = count /10 +1;
		}
		
		System.out.println("페이지당 가지고 온 게시물수>> "+ list.size());
		model.addAttribute("list", list);
		model.addAttribute("pages", pages);
		model.addAttribute("count", count);
	}
}
