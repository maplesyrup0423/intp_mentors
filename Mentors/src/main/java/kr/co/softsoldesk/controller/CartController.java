package kr.co.softsoldesk.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.softsoldesk.beans.CartBean;
import kr.co.softsoldesk.beans.TeacherBean;
import kr.co.softsoldesk.service.CartService;

@Controller
@RequestMapping("/WT")
public class CartController {

	@Autowired
	private CartService cartService;

	@Resource(name = "loginTeacherBean")
	private TeacherBean loginTeacherBean;

	// 장바구니 항목추가
	@GetMapping("/WT_cart_add")
	public String WT_cart_add(@RequestParam("WT_Key") String WT_Key) {

		List<String> WKList = cartService.getCartWT_KeyInfo();
		for (String WK : WKList) {
			if (WK.equals(WT_Key)) {
				return "WT/WT_cart_fail";
			}
		}
		List<String> WKList2 = cartService.getCartWT_KeyInfo2();
		for (String WK : WKList2) {
			if (WK.equals(WT_Key)) {
				return "WT/WT_cart_fail2";
			}
		}

		cartService.addCart(WT_Key);
		return "WT/WT_cart_success";
	}

	// 장바구니 항목삭제
	@GetMapping("/WT_cart_delete")
	public String WT_cart_delete(@RequestParam("WT_Key") String WT_Key) {
		cartService.deleteCart(WT_Key);
		return "WT/WT_cart_deleteSuccess";
	}

	@GetMapping("/WT_cart") // 장바구니
	public String WT_cart(@RequestParam("teacher_id") String teacher_id, Model model) {
		System.out.println("teacher_id = " + teacher_id);
		List<CartBean> cartList = cartService.getCartInfo(teacher_id);

		model.addAttribute("cartList", cartList);

		return "WT/WT_cart";
	}

	@GetMapping("/WT_payment") // 결제
	public String WT_payment(@RequestParam("teacher_id") String teacher_id, Model model) {
		System.out.println("전부 결제 teacher_id = " + teacher_id);
		List<CartBean> cartList = cartService.getCartInfo(teacher_id);

		model.addAttribute("cartList", cartList);

		return "WT/WT_payment";
	}

	@GetMapping("/WT_payment2") // 단일결제
	public String WT_payment2(@RequestParam("teacher_id") String teacher_id, @RequestParam("WT_Key") String WT_Key,
			Model model) {
		System.out.println("결제 teacher_id = " + teacher_id);
		System.out.println("결제 WT_Key = " + WT_Key);

		CartBean cBean = cartService.getOneCartInfo(teacher_id, WT_Key);
		// WTT키 추가
		cartService.addWTT(WT_Key);
		// 장바구니 삭제
		cartService.deleteCart(WT_Key);
		model.addAttribute("cBean", cBean);

		return "WT/WT_payment2";
	}

	@GetMapping("/WT_payment3") // 직접결제
	public String WT_payment3(@RequestParam("WT_Key") String WT_Key, Model model) {

		CartBean cBean = cartService.directPay(WT_Key);
		// WTT키 추가
		cartService.addWTT(WT_Key);
		// 장바구니 삭제
		cartService.deleteCart(WT_Key);
		model.addAttribute("cBean", cBean);

		return "WT/WT_payment3";
	}

	@GetMapping("/WT_payment_success") // 결제 완료
	public String WT_payment_success() {
		// WTT키 추가 및 장바구니 삭제
		List<String> WKList = cartService.getCartWT_KeyInfo();
		for (String WK : WKList) {
			cartService.addWTT(WK);
			cartService.deleteCart(WK);
			String wttkey=cartService.getWttKey(WK);
			cartService.addTestA(wttkey);
			
		}
		
		return "WT/WT_payment_success";
	}

}
