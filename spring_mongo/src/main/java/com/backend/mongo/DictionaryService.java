package com.backend.mongo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.shineware.nlp.komoran.constant.DEFAULT_MODEL;
import kr.co.shineware.nlp.komoran.core.Komoran;
import kr.co.shineware.nlp.komoran.model.KomoranResult;

@Service //controller --- service(전처리/후처리) --- dao
public class DictionaryService {
	
	@Autowired
	DictionaryDAO dao;
	
	public String emotion(String sentence) {
		//코모란 이용해서 명산만 추출해서 프린트
		Komoran komoran =new Komoran(DEFAULT_MODEL.FULL);
		KomoranResult result =komoran.analyze(sentence);
		List<String> list = result.getNouns();
		System.out.println(list);
		int sum=0;
		for (String s : list) {
			DictionaryVO vo = dao.one(s);
			if(vo != null) {
				System.out.println(vo.getJumsu());
				sum=sum+vo.getJumsu();
			}//if
		}//for
		String result2 ="negative";
		if(sum >= 0) {
			result2="positive";
		}
		return result2;
	}
}
