package kr.co.softsoldesk.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.softsoldesk.beans.EventBean;
import kr.co.softsoldesk.service.EventService;
import oracle.jdbc.proxy.annotation.GetCreator;

@Controller
@RequestMapping("/event")
public class EventController {
	
	@Autowired
	private EventService eventService;
	
	@GetMapping("/event3")
	public String event3(Model model) {
		
		List<EventBean> eventCList = eventService.getConEventList();
		model.addAttribute("eventList", eventCList);
		
		return "event/event3";
	}
	
	@GetMapping("/event3_end")
	public String event3_end(Model model) {
		List<EventBean> eventEList = eventService.getEndEventList();
		model.addAttribute("eventList", eventEList);
		
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
