package sist.com.dto;

public class SubscribeBean {
	private String subscribecode;
	private String subscribename;
	
	public String getSubscribecode() {
		return subscribecode;
	}
	public void setSubscribecode(String subscribecode) {
		this.subscribecode = subscribecode;
	}
	public String getSubscribename() {
		return subscribename;
	}
	public void setSubscribename(String subscribename) {
		this.subscribename = subscribename;
	}
	@Override
	public String toString() {
		return "Subscribe [subscribecode=" + subscribecode + ", subscribename=" + subscribename + "]";
	}
}
