package sist.com.dto;

public class AudioBookBean {
	
	private String bookcode;
	private String audiofile;
	
	
	public String getBookcode() {
		return bookcode;
	}
	public void setBookcode(String bookcode) {
		this.bookcode = bookcode;
	}
	public String getAudiofile() {
		return audiofile;
	}
	public void setAudiofile(String audiofile) {
		this.audiofile = audiofile;
	}
	@Override
	public String toString() {
		return "AudioBookBean [bookcode=" + bookcode + ", audiofile=" + audiofile + "]";
	}
	
	

	
}
