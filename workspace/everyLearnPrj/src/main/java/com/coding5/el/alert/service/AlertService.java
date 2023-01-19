package com.coding5.el.alert.service;

import java.util.List;
import java.util.Map;

import com.coding5.el.alert.vo.AlertVo;

public interface AlertService {
	// 알림들 가져오기
	public Map<String, Object> selectAlertList(String memberNo);
	
	// 알림 하나 체크
	public int updateAlert(String no, String memberNo);
	

}
