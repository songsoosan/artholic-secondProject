package kr.co.two.mypage.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.two.mypage.service.MypageService;

@Controller
public class MypageController {

	@Autowired MypageService service;
	
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@RequestMapping(value="/pwchange")
	public String pwChange() {
		
		return "pwChange";
	}
	
	@RequestMapping(value="/myfolder")
	public String myFolder() {
		
		return "myFolder";
	}
	
	@RequestMapping(value="/mycalendar")
	public String myCalendar() {
		
		return "myCalendar";
	}
}
