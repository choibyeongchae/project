package kr.ync.project.domain;

import java.sql.Date;

public class PitcherPlayerVO {
	private int gamecnt; // 게임수
	private double saveavg; // 방어율
	private int win; // 승
	private int lose; // 패
	private int save; // 세이브
	private String id;
	private int hold; // 홀드
	private String inning; // 이닝
	private int strikeout; // 탈삼진
	private int hitbypitch; // 사사구
	private int myhit; // 피안타
	private int myhomerun; // 피홈런
	private int mylosescore; // 실점
	private int losescore; // 자책점
	private String seasonyear; // 시즌
	private String team; // 팀
	private int backnum; // 등번호
	private Date enteryear; // 입단년도
	private String name; // 이름
	private Date birth; // 생년월일
	private String pitcherhitting; // 투타
	private String career; // 경력
	private String position; // 포지션
	private String img; // 이미지 url
	private int height; // 키
	private int weight; // 몸무게
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public int getGamecnt() {
		return gamecnt;
	}
	public void setGamecnt(int gamecnt) {
		this.gamecnt = gamecnt;
	}
	public double getSaveavg() {
		return saveavg;
	}
	public void setSaveavg(double saveavg) {
		this.saveavg = saveavg;
	}
	public int getWin() {
		return win;
	}
	public void setWin(int win) {
		this.win = win;
	}
	public int getLose() {
		return lose;
	}
	public void setLose(int lose) {
		this.lose = lose;
	}
	public int getSave() {
		return save;
	}
	public void setSave(int save) {
		this.save = save;
	}
	public int getHold() {
		return hold;
	}
	public void setHold(int hold) {
		this.hold = hold;
	}
	public String getInning() {
		return inning;
	}
	public void setInning(String inning) {
		this.inning = inning;
	}
	public int getStrikeout() {
		return strikeout;
	}
	public void setStrikeout(int strikeout) {
		this.strikeout = strikeout;
	}
	public int getHitbypitch() {
		return hitbypitch;
	}
	public void setHitbypitch(int hitbypitch) {
		this.hitbypitch = hitbypitch;
	}
	public int getMyhit() {
		return myhit;
	}
	public void setMyhit(int myhit) {
		this.myhit = myhit;
	}
	public int getMyhomerun() {
		return myhomerun;
	}
	public void setMyhomerun(int myhomerun) {
		this.myhomerun = myhomerun;
	}
	public int getMylosescore() {
		return mylosescore;
	}
	public void setMylosescore(int mylosescore) {
		this.mylosescore = mylosescore;
	}
	public int getLosescore() {
		return losescore;
	}
	public void setLosescore(int losescore) {
		this.losescore = losescore;
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
	public Date getEnteryear() {
		return enteryear;
	}
	public void setEnteryear(Date enteryear) {
		this.enteryear = enteryear;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
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
	@Override
	public String toString() {
		return "PitcherPlayerVO [gamecnt=" + gamecnt + ", saveavg=" + saveavg + ", win=" + win + ", lose=" + lose
				+ ", save=" + save + ", id=" + id + ", hold=" + hold + ", inning=" + inning + ", strikeout=" + strikeout
				+ ", hitbypitch=" + hitbypitch + ", myhit=" + myhit + ", myhomerun=" + myhomerun + ", mylosescore="
				+ mylosescore + ", losescore=" + losescore + ", seasonyear=" + seasonyear + ", team=" + team
				+ ", backnum=" + backnum + ", enteryear=" + enteryear + ", name=" + name + ", birth=" + birth
				+ ", pitcherhitting=" + pitcherhitting + ", career=" + career + ", position=" + position + ", img="
				+ img + ", height=" + height + ", weight=" + weight + "]";
	}
	
	
	
}
