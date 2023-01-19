package com.coding5.el.alert.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.coding5.el.alert.vo.AlertVo;

public interface AlertDao {

	public List<AlertVo> selectAlertList(SqlSessionTemplate sst, String memberNo);

	public int selectAlertCnt(SqlSessionTemplate sst, String memberNo);

	public int alertClickY(SqlSessionTemplate sst, String no);



}
