package kr.co.softsoldesk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import oracle.jdbc.proxy.annotation.GetCreator;

@Controller
@RequestMapping("/event")
public class EventController {
	
	@GetMapping("/event3")
	public String event3() {
		return "event/event3";
	}
	
	@GetMapping("/event_info")
	public String event_info() {
		return "event/event_info";
	}
	
	@GetMapping("/event_end")
	public String event_end() {
		return "event/event_end";
	}
	
	@GetMapping("/event_return")
	public String event_return() {
		return "event/event_return";
	}

}
