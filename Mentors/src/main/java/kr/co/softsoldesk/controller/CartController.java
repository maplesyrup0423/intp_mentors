package kr.co.softsoldesk.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.softsoldesk.beans.CartBean;
import kr.co.softsoldesk.service.CartService;



@Controller
@RequestMapping("/WT")
public class CartController {

	@Autowired
	private CartService cartService;
	
	/*
	 * @GetMapping("/WT_cart") // 장바구니 public String
	 * WT_cart(@RequestParam("WT_Key")String WT_Key, Model model) {
	 * cartService.addCart(WT_Key); model.addAttribute("WT_Key",WT_Key); return
	 * "WT/WT_cart"; }
	 */
	
	@GetMapping("/WT_cart") // 장바구니
	public String WT_cart(@RequestParam("teacher_id")String teacher_id, Model model) {
		System.out.println("teacher_id = "+teacher_id);
		List<CartBean> cartList= cartService.getCartInfo(teacher_id);
		model.addAttribute("cartList",cartList);
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
