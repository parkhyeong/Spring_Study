package com.backend.mongo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DictionaryController {

	@Autowired
	DictionaryService service;
	
	@RequestMapping("emotion")
	public void one(String sentence, Model model) {
		//문장에 들이었는 명사만을 추출해서
		String result = service.emotion(sentence);
		//==> db에 넣기전 전처리, db에서 검색한 후 후처리
		//컨트롤러 --> 전처리/후처리(service) --> dao
		model.addAttribute("result",result);
	}
}
