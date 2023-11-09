package com.backend.mvc01;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {
	
	//요청하나당 함수하나!
	@RequestMapping("insert3")
	public String insert3(ProductDTO dto, Model model) {
		//1. 받아서 dto에 넣으세요.
		//2. dao이용해서 db처리하세요.
		ProductDAO dao = new ProductDAO();
		int result = dao.insert(dto);
		//3. 결과를 jsp로 만들어서 실행후
		//   html코드를 브라우저에 보내주세요.
		
		model.addAttribute("result",result);
		
		if(result==1) {
			return "insert3";
		}
		else {
			return "redirect:product.jsp";
			//redirect해서 jsp호출할 때는 파일명.jsp까지 써주어야한다.
		}
	}
}
