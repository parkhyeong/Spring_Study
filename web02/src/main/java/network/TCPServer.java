package network;

import java.net.ServerSocket;
import java.net.Socket;

public class TCPServer {

	public static void main(String[] args) throws Exception {
		//전화기역할을 하는 객체 (Socket)
		//승인용 Socket(ServerSocket)
		//데이터교환용 Socket
		//==> 서버가 승인하면 Socket이 생성됨.
		ServerSocket server =  new ServerSocket(9100);
		System.out.println("포트 9100 TCP서버 시작됨.");
		System.out.println("클라이언트 요청을 기다림.");
		int count = 0;
		while (true) {
			Socket socket = server.accept();//클라이언트 연결 요청을 승인 
			System.out.println("서버의 승인 OK..");
			count++;
			System.out.println("현재연결된 클라이언트수 >> " + count);
		}
		
	}

}
