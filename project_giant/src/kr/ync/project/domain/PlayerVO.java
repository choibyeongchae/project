package kr.ync.project.domain;

import java.sql.Date;

public class PlayerVO {
	
	private int backnum; // 등번호
	private String enteryear; // 입단년도
	private String id;
	private String name; // 이름
	private String birth; // 생년월일
	private String pitcherhitting; // 투타
	private String career; // 경력
	private String position; // 포지션
	private String img; // 이미지 url
	private int height; // 키
	private int weight; // 몸무게
	private String gubun; // 1군,2군 구분
	
	public int getBacknum() {
		return backnum;
	}
	public void setBacknum(int backnum) {
		this.backnum = backnum;
	}
	public String getEnteryear() {
		return enteryear;
	}
	public void setEnteryear(String enteryear) {
		this.enteryear = enteryear;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getPitcherhitting() {
		return pitcherhitting;
	}
	public void setPitcherhitting(String pitcherhitting) {
		this.pitcherhitting = pitcherhitting;
	}
	public String getCareer() {
		return career;
	}
	public void setCareer(String career) {
		this.career = career;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public String getGubun() {
		return gubun;
	}
	public void setGubun(String gubun) {
		this.gubun = gubun;
	}
	@Override
	public String toString() {
		return "PlayerVO [backnum=" + backnum + ", enteryear=" + enteryear + ", id=" + id + ", name=" + name
				+ ", birth=" + birth + ", pitcherhitting=" + pitcherhitting + ", career=" + career + ", position="
				+ position + ", img=" + img + ", height=" + height + ", weight=" + weight + ", gubun=" + gubun + "]";
	}
	
	
}
