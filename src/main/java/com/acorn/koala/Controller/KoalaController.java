package com.acorn.koala.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.acorn.koala.dao.Dao;
import com.acorn.koala.service.LoginService;

import jdk.internal.org.jline.utils.Log;



@Controller
public class KoalaController {
	@Autowired
	Dao dao;

	
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index( HttpServletRequest request) {
		HttpSession session = request.getSession();
		String userid = (String) session.getAttribute("id");
		
		request.setAttribute("userid", userid);
		return "index";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(HttpServletRequest request) {
	
		return "login";
	}
	
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login2(String id, String pw, boolean rememberId, HttpServletResponse response, HttpServletRequest request) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		
		LoginService service = new LoginService(dao);
		int result = service.loginUser(id, pw);

		
		
		if(result == 1 ){	
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			
			if(rememberId) {
				//쿠키생성, 저장
				Cookie cookie = new Cookie("id",id);
				response.addCookie(cookie);
			} else {
				//쿠키삭제
				Cookie cookie = new Cookie("id",id);
				cookie.setMaxAge(0); // 쿠키 삭제
				response.addCookie(cookie);
			}
			return "redirect:index";		// redirect 가 아닌  return "index"  로 보내게 되면 화면은 index로 가지만 주소창엔 login으로 남아있음
		} else if (result == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>alert('비밀번호가 틀립니다.'); history.back(); </script>");
		} else if (result == -1){
			PrintWriter script = response.getWriter();
			script.println("<script>alert('존재하지 않는 아이디입니다.'); history.back(); </script>");
		} else if (result == -2){
			PrintWriter script = response.getWriter();
			script.println("<script>alert('DB 오류'); history.back(); </script>");
		}
		
		return null;
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletResponse response, HttpServletRequest request) throws IOException {
		response.setContentType("text/html;charset=utf-8");
		
		HttpSession session = request.getSession();
		session.invalidate();
		
		
		PrintWriter script = response.getWriter();
		script.println("<script>alert('로그아웃 되었습니다.'); </script>");
		script.println("<script>location.href = '/koalas/index'; </script>");
		script.flush();	// 얘 하니까 안뜨던 alert가 뜨지만 return이 안먹어서 location.hrtf로 보냄..

		return null;
		
	}
	
	@RequestMapping(value = "/kakaoLogin", method = RequestMethod.POST)
	public String kakaoLogin(String id, String email, String nickname, String gender) {
		System.out.println(id +"/"+ email + "/"+ nickname + "/"+ gender  );
		
		// 가입 후 세션에 id 등록
		
		
		// 가입 이미 되어있다면 세션에 id 등록
		
		
		
		return "redirect:index";
		
	}
	
	
	
	
}
