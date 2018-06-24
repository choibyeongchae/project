package kr.ync.project.domain;

import java.sql.Date;

public class BatterPlayerVO {
	
	private String enteryear; // 입단년도
	private String name; // 이름
	private String birth; // 생년월일
	private String pitcherhitting; // 투타
	private String career; // 경력
	private int height; // 키
	private int weight; // 몸무게
	private int gamecnt; // 게임수
	private int hit; // 안타
	private double battingavg; // 타율
	private int twohit; // 2루타
	private String id; 
	private int threehit; //3 루타
	private int homerun; // 홈런
	private int hittingscore; // 타점
	private int fourball; // 포볼
	private int strikeout; // 삼진
	private int addscore; // 득점
	private String img; // 이미지 url
	private String position; // 포지션
	private String seasonyear; // 시즌
	private String team; // 팀
	private int backnum; // 등번호
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	public String getEnteryear() {
		return enteryear;
	}
	public void setEnteryear(String enteryear) {
		this.enteryear = enteryear;
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
	public int getGamecnt() {
		return gamecnt;
	}
	public void setGamecnt(int gamecnt) {
		this.gamecnt = gamecnt;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public double getBattingavg() {
		return battingavg;
	}
	public void setBattingavg(double battingavg) {
		this.battingavg = battingavg;
	}
	public int getTwohit() {
		return twohit;
	}
	public void setTwohit(int twohit) {
		this.twohit = twohit;
	}
	public int getThreehit() {
		return threehit;
	}
	public void setThreehit(int threehit) {
		this.threehit = threehit;
	}
	public int getHomerun() {
		return homerun;
	}
	public void setHomerun(int homerun) {
		this.homerun = homerun;
	}
	public int getHittingscore() {
		return hittingscore;
	}
	public void setHittingscore(int hittingscore) {
		this.hittingscore = hittingscore;
	}
	public int getFourball() {
		return fourball;
	}
	public void setFourball(int fourball) {
		this.fourball = fourball;
	}
	public int getStrikeout() {
		return strikeout;
	}
	public void setStrikeout(int strikeout) {
		this.strikeout = strikeout;
	}
	public int getAddscore() {
		return addscore;
	}
	public void setAddscore(int addscore) {
		this.addscore = addscore;
	}
	public String getSeasonyear() {
		return seasonyear;
	}
	public void setSeasonyear(String seasonyear) {
		this.seasonyear = seasonyear;
	}
	public String getTeam() {
		return team;
	}
	public void setTeam(String team) {
		this.team = team;
	}
	public int getBacknum() {
		return backnum;
	}
	public void setBacknum(int backnum) {
		this.backnum = backnum;
	}
	@Override
	public String toString() {
		return "BatterPlayerVO [enteryear=" + enteryear + ", name=" + name + ", birth=" + birth + ", pitcherhitting="
				+ pitcherhitting + ", career=" + career + ", height=" + height + ", weight=" + weight + ", gamecnt="
				+ gamecnt + ", hit=" + hit + ", battingavg=" + battingavg + ", twohit=" + twohit + ", id=" + id
				+ ", threehit=" + threehit + ", homerun=" + homerun + ", hittingscore=" + hittingscore + ", fourball="
				+ fourball + ", strikeout=" + strikeout + ", addscore=" + addscore + ", img=" + img + ", position="
				+ position + ", seasonyear=" + seasonyear + ", team=" + team + ", backnum=" + backnum + "]";
	}
	
	

	

	
	
	
}
