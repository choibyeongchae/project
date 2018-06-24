package kr.ync.project.domain;

public class TeamRankVO {
	private String seasonyear;
	private int seasonrank; // 팀 순위
	private int gamecount;
	private int win; // 승
	private int lose; // 무
	private int draw; // 패
	private double winavg; // 승률
	private double gameminus; // 승차
	private String teamcode;//팀코드
	
	public int getGamecount() {
		return gamecount;
	}
	public String getTeamcode() {
		return teamcode;
	}
	public void setTeamcode(String teamcode) {
		this.teamcode = teamcode;
	}
	public void setGamecount(int gamecount) {
		this.gamecount = gamecount;
	}
	public String getSeasonyear() {
		return seasonyear;
	}
	public void setSeasonyear(String seasonyear) {
		this.seasonyear = seasonyear;
	}
	public int getSeasonrank() {
		return seasonrank;
	}
	public void setSeasonrank(int seasonrank) {
		this.seasonrank = seasonrank;
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
	public int getDraw() {
		return draw;
	}
	public void setDraw(int draw) {
		this.draw = draw;
	}
	public double getWinavg() {
		return winavg;
	}
	public void setWinavg(double winavg) {
		this.winavg = winavg;
	}
	public double getGameminus() {
		return gameminus;
	}
	public void setGameminus(double gameminus) {
		this.gameminus = gameminus;
	}
	@Override
	public String toString() {
		return "TeamRankVO [seasonyear=" + seasonyear + ", seasonrank=" + seasonrank + ", gamecount=" + gamecount
				+ ", win=" + win + ", lose=" + lose + ", draw=" + draw + ", winavg=" + winavg + ", gameminus="
				+ gameminus + ", teamcode=" + teamcode + "]";
	}
	
	
	
	
	
	
	
}
