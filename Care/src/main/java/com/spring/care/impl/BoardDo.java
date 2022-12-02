package com.spring.care.impl;

public class BoardDo {
	private int seq;
	private String name;
	private String tel;
	private String fname;
	private String date;
	private String time;
	private String content;
	
	@Override
	public String toString() {
		return "BoardDO [seq=" + seq + ", name=" + name + ", tel" + tel + ", fname=" + fname + ", date" + date + ", time" + time + ", content" + content + "]";
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}
