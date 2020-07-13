package sist.com.dto;

public class WishListBean {
	private String id;
	private String bookcode;
	private String wishdate;
	
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
	public String getWishdate() {
		return wishdate;
	}
	public void setWishdate(String wishdate) {
		this.wishdate = wishdate;
	}
	@Override
	public String toString() {
		return "WishList [id=" + id + ", bookcode=" + bookcode + ", wishdate=" + wishdate + "]";
	}
}
