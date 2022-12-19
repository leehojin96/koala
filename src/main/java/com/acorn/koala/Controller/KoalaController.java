package com.acorn.koala.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class KoalaController {

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index( HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		String userid = (String) session.getAttribute("id");
		String logintype = (String) session.getAttribute("type");
		
		request.setAttribute("userid", userid);
		request.setAttribute("logintype", logintype);
		return "index";
	}
	
	

	

}
