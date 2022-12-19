package chatting;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Scanner;

public class Server{
	ServerSocket serverSocket;
	Socket clientSocket;	
	DataInputStream dataInputStream;
	DataOutputStream dataOutputStream;		
	
	
	 public Server() {
		
		 try {
			serverSocket = new ServerSocket(5050);
			System.out.println("클라이언트소캣생성");
			Socket  clientSocket = serverSocket.accept();
			//System.out.println("클라이언트 연결됨");
			
			
			dataInputStream = new DataInputStream( clientSocket.getInputStream());
			dataOutputStream = new DataOutputStream ( clientSocket.getOutputStream());			
			recvMessage();
			sendMessage();	
			
			
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 		 
	 }
	
	
	private void sendMessage() {				
		final Scanner in = new Scanner(System.in);	
		Thread th = new Thread(new Runnable() {

			@Override
			public void run() {
				try {
					while(true) {
					//System.out.println("작성");
					String message  = in.nextLine();
					dataOutputStream.writeUTF(message);
					
					
					}
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}});
		th.start();
		
	}
 
	private void  recvMessage() {
		
		Thread th = new Thread(new Runnable() {

			@Override
			public void run() {
			
				try {
					while(true) {
					String message  =dataInputStream.readUTF();
					System.out.println( "클라이언트 : "+message);
					
					
					
					
					}
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}});
		th.start();
		
	}




	public static void main(String[] args) {
		 new Server();

	}

}
