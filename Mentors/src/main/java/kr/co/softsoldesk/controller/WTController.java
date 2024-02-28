package kr.co.softsoldesk.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/WT")
public class WTController {
	



	@GetMapping("/WT_list") // 연수 목록
	public String WT_list() {
		return "WT/WT_list";
	}

	@GetMapping("/WT_info") // 연수 상세
	public String WT_info() {
		return "WT/WT_info";
	}

	@GetMapping("/WT_my_room") // 나의 강의실
	public String WT_my_room() {
		return "WT/WT_my_room";
	}

	@GetMapping("/WT_cart") // 장바구니
	public String WT_cart() {
		return "WT/WT_cart";
	}

	@GetMapping("/WT_payment") // 결제
	public String WT_payment() {
		return "WT/WT_payment";
	}
	
	@GetMapping("/WT_payment_success") //결제 완료
	public String WT_payment_success() {
		return "WT/WT_payment_seccess";
	}
}
