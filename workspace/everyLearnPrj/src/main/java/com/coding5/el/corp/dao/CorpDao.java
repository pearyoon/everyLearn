package com.coding5.el.corp.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.coding5.el.corp.vo.CorpVo;

public interface CorpDao {

	// 회원가입
	public int insertCorpMember(SqlSessionTemplate sst, CorpVo vo);

	// 로그인
	public CorpVo selectOneCorpMember(SqlSessionTemplate sst, CorpVo vo);

}
