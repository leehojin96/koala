package chatting;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.Socket;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ChatController {

	@Autowired
	Client client;
	
	@ResponseBody
	@RequestMapping(value="/chat",method=RequestMethod.GET)
	public String test() {
		//client.servcon();
		
		DataOutputStream dataOutputStream;
		DataInputStream dataInputStream;
		Socket socket = null;
		
		
		try {
			
			client.servcon();
			dataInputStream = new DataInputStream( socket.getInputStream());
			dataOutputStream = new DataOutputStream( socket.getOutputStream());
			
			//String recv =client.recvMessage();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
		
		//String recv = client.recvMessage();
		
		String test01 = "con";

		//return client.recvMessage();
		return test01;
	}
	
}
