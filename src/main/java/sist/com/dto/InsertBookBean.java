package sist.com.dto;

public class InsertBookBean {
	 private String bookcode;
	 private String bookname;
	 private String authorname;
	 private String publicationdate;
	 private String registrationdate;
	 private String categoryname;
	 private String contents;
	 private String publishername;
	
	 public InsertBookBean(String bookcode, String bookname, String authorname, String publicationdate,
			String registrationdate, String categoryname, String contents, String publishername) {
		super();
		this.bookcode = bookcode;
		this.bookname = bookname;
		this.authorname = authorname;
		this.publicationdate = publicationdate;
		this.registrationdate = registrationdate;
		this.categoryname = categoryname;
		this.contents = contents;
		this.publishername = publishername;
	}
	
	 public InsertBookBean() {
		super();
	}

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

	public String getPublishername() {
		return publishername;
	}

	public void setPublishername(String publishername) {
		this.publishername = publishername;
	}

	@Override
	public String toString() {
		return "InsertBookBean [bookcode=" + bookcode + ", bookname=" + bookname + ", authorname=" + authorname
				+ ", publicationdate=" + publicationdate + ", registrationdate=" + registrationdate + ", categoryname="
				+ categoryname + ", contents=" + contents + ", publishername=" + publishername + "]";
	}
	 
	 
	
	 
}
