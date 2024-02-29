package kr.co.softsoldesk.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.softsoldesk.service.CartService;



@Controller
@RequestMapping("/WT")
public class CartController {

	@Autowired
	private CartService cartService;
	
	@GetMapping("/WT_cart") // 장바구니
	public String WT_cart(@RequestParam("WT_Key")String WT_Key, Model model) {
		cartService.addCart(WT_Key);
		model.addAttribute("WT_Key",WT_Key);
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
