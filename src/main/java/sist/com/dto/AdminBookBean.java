package sist.com.dto;

public class AdminBookBean {
	private String bookcode;
	private String bookname;
	private String authorname;
	private String publishername;
	private String publicationdate;
	private String registrationdate;
	private String categoryname;
	private String contents;
	private String link;
	public String getBookcode() {
		return bookcode;
	}
	public void setBookcode(String bookcode) {
		this.bookcode = bookcode;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getAuthorname() {
		return authorname;
	}
	public void setAuthorname(String authorname) {
		this.authorname = authorname;
	}
	public String getPublishername() {
		return publishername;
	}
	public void setPublishername(String publishername) {
		this.publishername = publishername;
	}
	public String getPublicationdate() {
		return publicationdate;
	}
	public void setPublicationdate(String publicationdate) {
		this.publicationdate = publicationdate;
	}
	public String getRegistrationdate() {
		return registrationdate;
	}
	public void setRegistrationdate(String registrationdate) {
		this.registrationdate = registrationdate;
	}
	public String getCategoryname() {
		return categoryname;
	}
	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	@Override
	public String toString() {
		return "AdminBookBean [bookcode=" + bookcode + ", bookname=" + bookname + ", authorname=" + authorname
				+ ", publishername=" + publishername + ", publicationdate=" + publicationdate + ", registrationdate="
				+ registrationdate + ", categoryname=" + categoryname + ", contents=" + contents + ", link=" + link
				+ "]";
	}
	public AdminBookBean(String bookcode, String bookname, String authorname, String publishername,
			String publicationdate, String registrationdate, String categoryname, String contents, String link) {
		super();
		this.bookcode = bookcode;
		this.bookname = bookname;
		this.authorname = authorname;
		this.publishername = publishername;
		this.publicationdate = publicationdate;
		this.registrationdate = registrationdate;
		this.categoryname = categoryname;
		this.contents = contents;
		this.link = link;
	}
	public AdminBookBean() {
		super();
	}
	
	


}