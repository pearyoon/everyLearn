package com.coding5.el.alert.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.coding5.el.alert.vo.AlertVo;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Repository
public class AlertDaoImpl implements AlertDao{

	@Override
	public List<AlertVo> selectAlertList(SqlSessionTemplate sst, String memberNo) {
		return sst.selectList("alertMapper.selectAlertList",memberNo);
	}

	@Override
	public int selectAlertCnt(SqlSessionTemplate sst, String memberNo) {
		return sst.selectOne("alertMapper.selectAlertCnt",memberNo);
	}

	@Override
	public int alertClickY(SqlSessionTemplate sst, String no) {
		return sst.update("alertMapper.alertClickY", no);
	}




	
}
