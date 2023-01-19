package com.coding5.el.alert.vo;

import lombok.Data;

@Data
public class AlertVo {
	private String no;
	private String memberNo;
	private String category;
	private String title;
	private String content;
	private String sendDate;
	private String clickYn;
}
