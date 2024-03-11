package kr.co.softsoldesk.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import kr.co.softsoldesk.service.TeacherService;


@RestController
public class RestApiController {

	@Autowired
	private TeacherService teacherService;
	
	@GetMapping("/user/checkTeacherIdExist/{teacher_id}")
	public String checkTeacherIdExist(@PathVariable String teacher_id) {
		
		boolean chk = teacherService.checkTeacherIdExist(teacher_id);
		
		return chk +"";
	}
	
}
