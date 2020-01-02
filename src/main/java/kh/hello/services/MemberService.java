package kh.hello.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.hello.dao.MemberDAO;

@Service
public class MemberService {

	@Autowired
	private MemberDAO mdao;
	
	//로그인
	public int login(String id, String pw)throws Exception{
		return mdao.login(id, pw);
	}
}