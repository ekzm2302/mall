package com.kr.show;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {

	// 게시판 리스트
	@RequestMapping("/list.bo")
	public String board(HttpSession session) {
		session.setAttribute("category", "board");
		return "board/list";
	}
}
