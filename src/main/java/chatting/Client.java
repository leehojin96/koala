package chatting;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.Socket;
import java.util.Scanner;

public class Client {

	 Socket socket;
	 DataInputStream dataInputStream;
	 DataOutputStream dataOutputStream;
	 
	 public void servcon() {
		 try {
			socket = new Socket("localhost",5050);
			System.out.println("접속성공");
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 }

	public Client() {
		 
		try {
			//socket = new Socket("localhost", 5050); 
			System.out.println("서버 접속요청");
			  
			dataInputStream  = new DataInputStream( socket.getInputStream());
			dataOutputStream = new DataOutputStream( socket.getOutputStream());
			
			sendMessge();
			recvMessage();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}   
		
		
	}
	
	
	public String recvMessage() {
		
		Thread th = new Thread(new Runnable() {

			@Override
			public void run() {
				try {
					while(true) {
					String message = dataInputStream.readUTF();			
					System.out.println("서버 : "+message);
					}
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}	
				
			}});
		th.start();
		return recvMessage();
	
	}
	
	

	public void sendMessge() {
		final Scanner   in = new Scanner(System.in);
		
		Thread th = new Thread(new Runnable() {

			@Override
			public void run() {
				try {
					while(true) {
					String  message  = in.nextLine();
					dataOutputStream.writeUTF(message);

					}
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}});
		th.start();
		
		
		
	}

	public static void main(String[] args) {
		 
		//new Client();

	}

}
