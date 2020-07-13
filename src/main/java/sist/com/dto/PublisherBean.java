package sist.com.dto;

public class PublisherBean {
	private String publishercode;
	private String publishername;
	private String callnumber;
	public String getPublishername() {
		return publishername;
	}
	public void setPublishername(String publishername) {
		this.publishername = publishername;
	}
	
	public String getPublishercode() {
		return publishercode;
	}
	public void setPublishercode(String publishercode) {
		this.publishercode = publishercode;
	}
	public String getCallnumber() {
		return callnumber;
	}
	public void setCallnumber(String callnumber) {
		this.callnumber = callnumber;
	}
	@Override
	public String toString() {
		return "PublisherBean [publishercode=" + publishercode + ", publishername=" + publishername + ", callnumber="
				+ callnumber + "]";
	}
}
