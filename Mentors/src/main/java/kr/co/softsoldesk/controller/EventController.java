package kr.co.softsoldesk.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
		
		//TODO �쁺�뿴�쁺�뿴�븘 db�뿉 媛� �꽔�뼱�넄�씪
		for(EventBean eb : eventCList) {
			int d = (int)Math.ceil(eventService.setDday(eb.getEvent_key()));
			String sdate = eb.getEvent_s_date().substring(0,11);
			String edate = eb.getEvent_e_date().substring(0,11);
			eb.setEvent_s_date(sdate);
			eb.setEvent_e_date(edate);
			eb.setD_day(d);
			System.out.println(eb.getD_day());
		}
		
		
		model.addAttribute("eventList", eventCList);
		
		return "event/event3";
	}
	
	@GetMapping("/event_end")
	public String event_end(Model model) {
		List<EventBean> eventEList = eventService.getEndEventList();

		for(EventBean eb : eventEList) {
			int d = (int)Math.ceil(eventService.setDday(eb.getEvent_key()));
			String sdate = eb.getEvent_s_date().substring(0,11);
			String edate = eb.getEvent_e_date().substring(0,11);
			eb.setEvent_s_date(sdate);
			eb.setEvent_e_date(edate);
			eb.setD_day(d);
			System.out.println(eb.getD_day());
		}
		
		model.addAttribute("eventList", eventEList);
		
		return "event/event_end";
	}
	
	@GetMapping("/event_info")
	public String event_info(@RequestParam("event_key") String event_key, Model model) {
		EventBean eBean = eventService.getEventInfo(event_key);
		String sdate = eBean.getEvent_s_date().substring(0,11);
		String edate = eBean.getEvent_e_date().substring(0,11);
		eBean.setEvent_s_date(sdate);
		eBean.setEvent_e_date(edate);
		model.addAttribute("eBean", eBean);
		return "event/event_info";
	}
	
	@GetMapping("/event_return")
	public String event_return() {
		return "event/event_return";
	}

}
