package com.coding5.el.alert.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.coding5.el.alert.service.AlertService;
import com.coding5.el.member.vo.MemberVo;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("my/alert")
public class AlertController {
	@Autowired
	public AlertController(AlertService alertService) {
		this.alertService = alertService;
	}
	
	private final AlertService alertService;
	// 알림 조회
	@GetMapping("")
	public String alertList(HttpSession session, Model model) {
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		
		Map<String, Object> map = alertService.selectAlertList(loginMember.getMemberNo());
		
		log.info("[알림]디비다녀옴"+map);
		model.addAttribute("map", map);
		return "alert/list";
	}
	// 1 개 check
	@PostMapping("check")
	@ResponseBody
	public String alertCheck(String no, HttpSession session) {
		
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		
		int result = alertService.updateAlert(no, loginMember.getMemberNo());
		
		return ""+result;
	}
	
}
