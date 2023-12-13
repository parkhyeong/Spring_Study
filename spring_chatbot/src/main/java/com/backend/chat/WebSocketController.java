package com.backend.chat;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;

@Controller
public class WebSocketController {

	@MessageMapping("/chat")
	@SendTo("/topic/messages") //채팅방이름 messages
	public Message send(Message message) {
		//from, text만 messages채팅방에 가입한 브라우저로 그대로 보내고 싶은 경우 
		return message;
	}
}