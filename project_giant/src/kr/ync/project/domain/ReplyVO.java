package kr.ync.project.domain;

import java.util.Date;

public class ReplyVO {

	private Integer cmt_id;
	private Integer writenum;
	private String 	cmt_content;
	private String cmt_writer;

	private Date cmt_regidate;
	private Date updatedate;
	public Date getUpdatedate() {
		return updatedate;
	}
	public void setUpdatedate(Date updatedate) {
		this.updatedate = updatedate;
	}
	private int boardtypenum;
	public Integer getCmt_id() {
		return cmt_id;
	}
	public void setCmt_id(Integer cmt_id) {
		this.cmt_id = cmt_id;
	}
	public Integer getWritenum() {
		return writenum;
	}
	public void setWritenum(Integer writenum) {
		this.writenum = writenum;
	}
	public String getCmt_content() {
		return cmt_content;
	}
	public void setCmt_content(String cmt_content) {
		this.cmt_content = cmt_content;
	}
	public String getCmt_writer() {
		return cmt_writer;
	}
	public void setCmt_writer(String cmt_writer) {
		this.cmt_writer = cmt_writer;
	}
	public Date getCmt_regidate() {
		return cmt_regidate;
	}
	public void setCmt_regidate(Date cmt_regidate) {
		this.cmt_regidate = cmt_regidate;
	}
	public int getBoardtypenum() {
		return boardtypenum;
	}
	public void setBoardtypenum(int boardtypenum) {
		this.boardtypenum = boardtypenum;
	}
	@Override
	public String toString() {
		return "ReplyVO [cmt_id=" + cmt_id + ", writenum=" + writenum + ", cmt_content=" + cmt_content + ", cmt_writer="
				+ cmt_writer + ", cmt_regidate=" + cmt_regidate + ", updatedate=" + updatedate + ", boardtypenum="
				+ boardtypenum + "]";
	}
	

	
}
