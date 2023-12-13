package com.backend.chat;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.stereotype.Controller;

@Controller
public class WebSocketController {
	@MessageMapping("/chat")
	public void send() {
		
	}
}
