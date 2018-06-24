package kr.ync.project.dto;

public class LoginDTO {
	
	private String id; // 아이디
	private String password; // 비밀번호
	private boolean useCookie;
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
	public boolean isUseCookie() {
		return useCookie;
	}
	public void setUseCookie(boolean useCookie) {
		this.useCookie = useCookie;
	}
	@Override
	public String toString() {
		return "LoginDTO [id=" + id + ", password=" + password + ", useCookie=" + useCookie + "]";
	}
	
	
	
	
	
	

}
