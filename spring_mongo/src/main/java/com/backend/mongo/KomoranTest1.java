package com.backend.mongo;

import java.util.List;

import kr.co.shineware.nlp.komoran.constant.DEFAULT_MODEL;
import kr.co.shineware.nlp.komoran.core.Komoran;
import kr.co.shineware.nlp.komoran.model.KomoranResult;
import kr.co.shineware.nlp.komoran.model.Token;

public class KomoranTest1 {

	public static void main(String[] args) {
		Komoran komoran =new Komoran(DEFAULT_MODEL.FULL);
		String document = "너무 이쁜 우리 아기들";
		KomoranResult result =komoran.analyze(document);
		System.out.println(result.getPlainText());
		List<Token> list = result.getTokenList();
		for(Token token: list) {
			System.out.println(token.getMorph() + " "+ token.getPos());
		}
		
		List<String> list2 = result.getNouns(); //명사만 추출
		System.out.println(list2);
	}

}
