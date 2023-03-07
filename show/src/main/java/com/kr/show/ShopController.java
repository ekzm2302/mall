package com.kr.show;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShopController {

	// 전체보기
	@RequestMapping("/list")
	public String All(HttpSession session) {
		session.setAttribute("category", "list");
		return "shop/list";
	}
	
	// 지도
	@RequestMapping("/map.mp")
	public String Map(HttpSession session) {
		session.setAttribute("category", "map");
		return "shop/map";
	}
}
