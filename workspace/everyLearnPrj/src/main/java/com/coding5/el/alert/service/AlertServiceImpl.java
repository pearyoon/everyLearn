package com.coding5.el.alert.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.coding5.el.alert.dao.AlertDao;
import com.coding5.el.alert.vo.AlertVo;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Service
public class AlertServiceImpl implements AlertService{
	@Autowired
	public AlertServiceImpl(AlertDao alertDao) {
		this.alertDao = alertDao;
	}
	
	private final AlertDao alertDao;
	
	@Autowired
	private SqlSessionTemplate sst;

	@Override
	public Map<String, Object> selectAlertList(String memberNo) {
		// 읽지 않은 알림 수 가져오기
		int cnt = alertDao.selectAlertCnt(sst, memberNo);
		
		// 알림 리스트 가져오기
		List<AlertVo> voList = alertDao.selectAlertList(sst,memberNo);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("cnt", cnt);
		map.put("voList", voList);
		return map;
	}

	@Override
	@Transactional
	public int updateAlert(String no, String memberNo) {
		// 알림 읽음으로 변경
		int result = alertDao.alertClickY(sst,no);
		
		int cnt = 0;
		if(result == 1) {
			// 안 읽은 알람 수 가져오기
			cnt = alertDao.selectAlertCnt(sst, memberNo);
		}
		
		return cnt;
	}




}
