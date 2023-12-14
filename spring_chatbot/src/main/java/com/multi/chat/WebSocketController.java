package com.multi.chat;

import java.util.Date;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;

@Controller
public class WebSocketController {

	@MessageMapping("/chat")
	@SendTo("/topic/messages") //채팅방이름 messages
	public Message send(Message message) {
		//from, text만 messages채팅방에 가입한 브라우저로 그대로 보내고 싶은 경우 
		Date date = new Date();
		message.setDate(date.getHours() + "시 " + date.getMinutes() + "분");
		return message; 
		//return에 뒤에 있는vo가 가입한 브라우저에 도착
	}
	
	@MessageMapping("/chat2")
	@SendTo("/topic/messages2") //채팅방이름 messages2
	public Message2 send2(Message2 message) {
		//from, text만 messages채팅방에 가입한 브라우저로 그대로 보내고 싶은 경우 
		String menu = "";
		
		switch (message.getText()) { //1
		case "1":
			menu = "챗 봇>>  10) 운동화		11) 모자			12) 가방";
			break;
		case "2":
			menu = "챗 봇>>  20) 배송조회	21) 주문완료상품조회";
			break;
		case "20":
			menu = "챗 봇>> DB에서 가지고 온 배송 상황 목록 \n" +
						"상품명: 르꼬뿌		배송상황: 물건 준비중";
			break;
		case "10":
			menu = "챗 봇>>  100) 나이커	    200) 르꼬뿌			300) 라코스또";
			break;
		case "100":
			menu = "챗 봇>>  1000) 나이커 운동화 세부 메뉴	1) 다시 처음 메뉴";
			break;
		case "1000":
			menu = "챗 봇>>  1001)나이커빨강(1만원)	1002)나이커파랑(2만원)	1003)나이커보라(3만원)	100)이전 메뉴로";
			break;
		default:
			menu = "챗 봇>>선택한 번호는 없는 메뉴입니다. 다시 입력해주세요.";
			break;
		}
		message.setMenu(menu);
		return message; 
		//return에 뒤에 있는vo가 가입한 브라우저에 도착
	}
}
