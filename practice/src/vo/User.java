package vo;

public class User {
	private String userName;
	private String password;
	private String charname;
	private String role;
	
	public User(String string, String string2, String string3, String string4) {
		// TODO Auto-generated constructor stub
		this.userName=userName;
		this.password=password;
		this.charname=charname;
		this.role=role;
	}
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getcharName() {
		return charname;
	}
	public void setName(String name) {
		this.charname = charname;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
	
	
}
