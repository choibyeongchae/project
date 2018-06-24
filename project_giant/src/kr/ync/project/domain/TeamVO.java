package kr.ync.project.domain;

import java.util.Date;

public class TeamVO {
	private String teamname; // 팀 이름
	private String place; // 팀 연고지
	private String id;
	private int championcnt; // 우승횟수
	private Date foundyear; // 창단년도
	private String teamcode; // 팀 코드
	public String getTeamname() {
		return teamname;
	}
	public void setTeamname(String teamname) {
		this.teamname = teamname;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getChampioncnt() {
		return championcnt;
	}
	public void setChampioncnt(int championcnt) {
		this.championcnt = championcnt;
	}
	public Date getFoundyear() {
		return foundyear;
	}
	public void setFoundyear(Date foundyear) {
		this.foundyear = foundyear;
	}
	public String getTeamcode() {
		return teamcode;
	}
	public void setTeamcode(String teamcode) {
		this.teamcode = teamcode;
	}
	@Override
	public String toString() {
		return "TeamVO [teamname=" + teamname + ", place=" + place + ", id=" + id + ", championcnt=" + championcnt
				+ ", foundyear=" + foundyear + ", teamcode=" + teamcode + "]";
	}
	
	
}
