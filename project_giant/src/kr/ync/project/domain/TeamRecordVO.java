package kr.ync.project.domain;

public class TeamRecordVO {
	private double battingavg; // 팀타율
	private int mylosescore; // 팀 자책점
	private int miss; // 팀 실책
	private double longhitavg; // 팀 장타율
	private double onbaseavg; // 팀 출루율
	private double saveavg; // 팀 방어율
	private int hitbypitch; // 팀 사사구
	private String seasonyear; // 시즌
	private String teamcode; // 팀코드
	private int gamecount; // 게임 수
 	private int hit; // 팀 안타
	private int twohit; // 팀 2루타
	private int threehit; // 팀 3루타
	private int homerun; // 팀 홈런
	private int run;  // 팀 도루
	private int point; // 팀 득점
	private int losescore; // 팀 실점
	public double getBattingavg() {
		return battingavg;
	}
	public void setBattingavg(double battingavg) {
		this.battingavg = battingavg;
	}
	public int getMylosescore() {
		return mylosescore;
	}
	public void setMylosescore(int mylosescore) {
		this.mylosescore = mylosescore;
	}
	public int getMiss() {
		return miss;
	}
	public void setMiss(int miss) {
		this.miss = miss;
	}
	public double getLonghitavg() {
		return longhitavg;
	}
	public void setLonghitavg(double longhitavg) {
		this.longhitavg = longhitavg;
	}
	public double getOnbaseavg() {
		return onbaseavg;
	}
	public void setOnbaseavg(double onbaseavg) {
		this.onbaseavg = onbaseavg;
	}
	public double getSaveavg() {
		return saveavg;
	}
	public void setSaveavg(double saveavg) {
		this.saveavg = saveavg;
	}
	public int getHitbypitch() {
		return hitbypitch;
	}
	public void setHitbypitch(int hitbypitch) {
		this.hitbypitch = hitbypitch;
	}
	public String getSeasonyear() {
		return seasonyear;
	}
	public void setSeasonyear(String seasonyear) {
		this.seasonyear = seasonyear;
	}
	public String getTeamcode() {
		return teamcode;
	}
	public void setTeamcode(String teamcode) {
		this.teamcode = teamcode;
	}
	public int getGamecount() {
		return gamecount;
	}
	public void setGamecount(int gamecount) {
		this.gamecount = gamecount;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
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
	public int getRun() {
		return run;
	}
	public void setRun(int run) {
		this.run = run;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public int getLosescore() {
		return losescore;
	}
	public void setLosescore(int losescore) {
		this.losescore = losescore;
	}
	@Override
	public String toString() {
		return "TeamRecordVO [battingavg=" + battingavg + ", mylosescore=" + mylosescore + ", miss=" + miss
				+ ", longhitavg=" + longhitavg + ", onbaseavg=" + onbaseavg + ", saveavg=" + saveavg + ", hitbypitch="
				+ hitbypitch + ", seasonyear=" + seasonyear + ", teamcode=" + teamcode + ", gamecount=" + gamecount
				+ ", hit=" + hit + ", twohit=" + twohit + ", threehit=" + threehit + ", homerun=" + homerun + ", run="
				+ run + ", point=" + point + ", losescore=" + losescore + "]";
	}
	
	
	
}
