package com.acorn.koala.service;

import com.acorn.koala.dao.Dao;

public class LoginService {
		Dao dao;

		public LoginService(Dao dao) {
			this.dao = dao;
		}

		public LoginService() {

		}
		
		public int loginUser(String id, String pw) {
			int result = dao.login(id, pw);
			return result;
			
		}
		
		public int kakaoCheck(String id) {
			int result = dao.kakaoidCheck(id);
			return result;
		}
		
		public void kakaoJoin(String id, String email, String nickname, String gender) {
			dao.KakaoJoin(id, email, nickname, gender);
		}
		
		public int naverCheck(String id) {
			int result = dao.naveridCheck(id);
			return result;
		}
		public void naverJoin(String id, String name, String email, String gender, String birthday, String birthyear, String mobile) {
			dao.NaverJoin(id, name, email, gender, birthday, birthyear, mobile);
		}
}
