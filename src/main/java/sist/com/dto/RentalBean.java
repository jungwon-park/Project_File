package sist.com.dto;

public class RentalBean {
	private String bookcode;
	private String id;
	private String rentdate;
	
	public String getBookcode() {
		return bookcode;
	}
	public void setBookcode(String bookcode) {
		this.bookcode = bookcode;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getRentdate() {
		return rentdate;
	}
	public void setRentdate(String rentdate) {
		this.rentdate = rentdate;
	}
	@Override
	public String toString() {
		return "Rental [bookcode=" + bookcode + ", id=" + id + ", rentdate=" + rentdate + "]";
	}
}
