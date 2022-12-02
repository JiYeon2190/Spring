package com.spring.care.impl;

public class FacDo {
	private int seq;
	private String name;
	private String addr;
	private String img1;
	private String img2;
	private String img3;
	private String grade;
	private int doctor;
	private int num;
	private String type;
	
	@Override
	public String toString() {
		return "BoardDO [seq=" + seq + ", name=" + name + ", addr" + addr + ", img1=" + img1 + ", img2=" + img2 +
				", img3=" + img3 + ", grade" + grade + ", doctor" + doctor + ", num" + num + ", type" + type + "]";
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

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getImg1() {
		return img1;
	}

	public void setImg1(String img1) {
		this.img1 = img1;
	}

	public String getImg2() {
		return img2;
	}

	public void setImg2(String img2) {
		this.img2 = img2;
	}

	public String getImg3() {
		return img3;
	}

	public void setImg3(String img3) {
		this.img3 = img3;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public int getDoctor() {
		return doctor;
	}

	public void setDoctor(int doctor) {
		this.doctor = doctor;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

}
