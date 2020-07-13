package sist.com.dto;

public class AdminMemberBean {
	private String id;
	private String birth;
	private String name;
	private String phonenumber;
	private String email;
	private String nickname;
	private String subscribecode;
	@Override
	public String toString() {
		return "AdminMemberBean [id=" + id + ", birth=" + birth + ", name=" + name + ", phonenumber=" + phonenumber
				+ ", email=" + email + ", nickname=" + nickname + ", subscribecode=" + subscribecode + "]";
	}
	public AdminMemberBean(String id, String birth, String name, String phonenumber, String email, String nickname,
			String subscribecode) {
		super();
		this.id = id;
		this.birth = birth;
		this.name = name;
		this.phonenumber = phonenumber;
		this.email = email;
		this.nickname = nickname;
		this.subscribecode = subscribecode;
	}
	public AdminMemberBean() {
		super();
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getSubscribecode() {
		return subscribecode;
	}
	public void setSubscribecode(String subscribecode) {
		this.subscribecode = subscribecode;
	}

	
	
	
}
