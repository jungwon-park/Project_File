package sist.com.dto;

public class SubscribeListBean {
	private String id;
	private String subscribecode;
	private String paymentdate;
	
	public String getSubscribecode() {
		return subscribecode;
	}
	public void setSubscribecode(String subscribecode) {
		this.subscribecode = subscribecode;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPaymentdate() {
		return paymentdate;
	}
	public void setPaymentdate(String paymentdate) {
		this.paymentdate = paymentdate;
	}
	@Override
	public String toString() {
		return "SubscribeList [id=" + id + ", subscribecode=" + subscribecode + ", paymentdate=" + paymentdate + "]";
	}
}
