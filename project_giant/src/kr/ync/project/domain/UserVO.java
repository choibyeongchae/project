package kr.ync.project.domain;

public class UserVO {

	private String id; // 아이디
	private String password; // 비밀번호
	private String email; // 이메일
	private int memberlevel; // 회원레벨 
	private String joinday; // 가입일
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getMemberlevel() {
		return memberlevel;
	}
	public void setMemberlevel(int memberlevel) {
		this.memberlevel = memberlevel;
	}
	public String getJoinday() {
		return joinday;
	}
	public void setJoinday(String joinday) {
		this.joinday = joinday;
	}
	@Override
	public String toString() {
		return "UserVO [id=" + id + ", password=" + password + ", email=" + email + ", memberlevel=" + memberlevel
				+ ", joinday=" + joinday + "]";
	}
	
	
}
