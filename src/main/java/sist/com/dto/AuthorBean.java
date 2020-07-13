package sist.com.dto;

public class AuthorBean {
	
	private String authorcode;
	private String authorname;
	public String getAuthorcode() {
		return authorcode;
	}
	public void setAuthorcode(String authorcode) {
		this.authorcode = authorcode;
	}
	public String getAuthorname() {
		return authorname;
	}
	public void setAuthorname(String authorname) {
		this.authorname = authorname;
	}
	@Override
	public String toString() {
		return "AuthorBean [authorcode=" + authorcode + ", authorname=" + authorname + "]";
	}
	
	

	
}