package com.kr.show;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import member.MemberService;
import member.MemberVO;

@Controller
@RequiredArgsConstructor

public class LoginController {
	@Autowired
	private SqlSession sql;
	@Autowired private MemberService member;
	// 로그아웃
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		// 비지니스로직: 세션에 있는 로그인정보를 삭제한다
		session.removeAttribute("loginInfo");
		// 응답화면연결
		return "redirect:/";
	}

	// 로그인처리 요청
	@ResponseBody
	@RequestMapping("/shlogin")
	public boolean loginIn(String id, String pw, HttpSession session) {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pw", pw);
		MemberVO vo = sql.selectOne("lo.login", map);
		session.setAttribute("loginInfo", vo);

		return vo == null ? false : true;
	}

	// 로그인 화면요청
	@RequestMapping("/login")
	public String login(HttpSession session) {
		session.setAttribute("category", "login");
		return "login/login";
	}
	
	// 회원가입 
	@ResponseBody @PostMapping(value= "/insert", produces="text/html; charset=utf-8")
	public String insert(@ModelAttribute MemberVO vo, HttpServletRequest request) {
		StringBuffer msg = new StringBuffer("<script>");
		if ( member.member_join(vo)==1 ) {
			msg.append("alert('회원가입을 축하합니다'); location='")
				.append( request.getContextPath() )
				.append("'; ");
		}else {
			msg.append("alert('회원가입 실패'); history.go(-1); ");
		}
		msg.append("</script>");
		
		//응답화면연결
		return msg.toString();
	}

	// 회원가입 화면 요청
	@GetMapping("/insert")
	public String join(HttpSession session) {
		session.setAttribute("category", "insert");
		return "login/insert";
	}
}
