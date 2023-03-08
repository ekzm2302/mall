package com.kr.show;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Qualifier;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import board.BoardPageVO;
import board.BoardVO;
import common.PageVO;

@Controller
public class BoardController {
	@Autowired
	@Qualifier("pcj")
	SqlSession sql;
	
	// 게시판 상세내
		@RequestMapping("/info.bo")
		public String board_info(String id, Model model) {
			BoardVO vo = sql.selectOne("bo.info", id);
			model.addAttribute("vo", vo);
			model.addAttribute("crlf", "\r\n");
			model.addAttribute("lf", "\n");
			return "board/info";
		}
	
	// 게시판 리스트
	@RequestMapping("/list.bo")
	public String board(HttpSession session, Model model, BoardPageVO page) {
		session.setAttribute("category", "board");
		model.addAttribute("page", board_list(page));
		return "board/list";
	}
	// 페이지 처리
		public PageVO board_list(BoardPageVO page) {
			page.setTotalList(sql.selectOne("bo.total", page));
			page.setList(sql.selectList("bo.plist", page));
			return page;
		}
	
}
