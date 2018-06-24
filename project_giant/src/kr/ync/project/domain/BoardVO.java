package kr.ync.project.domain;

import java.util.Arrays;
import java.util.Date;

public class BoardVO {

	private Integer writenum; // 글번호
	private String writetitle; // 제목
	private String writecontent; // 내용
	private String writepeople; // 글쓴이
	private Date writeday; // 쓴 날짜
	private int view_cnt; // 조회수
	private int comment_cnt; // 댓글 수
	private String id;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	private String[] files;
	public Integer getWritenum() {
		return writenum;
	}
	public void setWritenum(Integer writenum) {
		this.writenum = writenum;
	}
	public String getWritetitle() {
		return writetitle;
	}
	public void setWritetitle(String writetitle) {
		this.writetitle = writetitle;
	}
	public String getWritecontent() {
		return writecontent;
	}
	public void setWritecontent(String writecontent) {
		this.writecontent = writecontent;
	}
	public String getWritepeople() {
		return writepeople;
	}
	public void setWritepeople(String writepeople) {
		this.writepeople = writepeople;
	}
	public Date getWriteday() {
		return writeday;
	}
	public void setWriteday(Date writeday) {
		this.writeday = writeday;
	}
	public int getView_cnt() {
		return view_cnt;
	}
	public void setView_cnt(int view_cnt) {
		this.view_cnt = view_cnt;
	}
	public int getComment_cnt() {
		return comment_cnt;
	}
	public void setComment_cnt(int comment_cnt) {
		this.comment_cnt = comment_cnt;
	}
	public String[] getFiles() {
		return files;
	}
	public void setFiles(String[] files) {
		this.files = files;
	}
	@Override
	public String toString() {
		return "BoardVO [writenum=" + writenum + ", writetitle=" + writetitle + ", writecontent=" + writecontent
				+ ", writepeople=" + writepeople + ", writeday=" + writeday + ", view_cnt=" + view_cnt
				+ ", comment_cnt=" + comment_cnt + ", id=" + id + ", files=" + Arrays.toString(files) + "]";
	}
	
	
	
	
	
}
