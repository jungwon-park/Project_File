package sist.com.dto;

public class EvalBookBean {
	private String id; 
	private String bookname;
	private String evaluation;
	private String evaluation2;
	private String bookcode; 
	private int score;
	private String writedate;
	
	public EvalBookBean(String id, String bookname, String evaluation, String evaluation2, String bookcode, int score,
			String writedate) {
		super();
		this.id = id;
		this.bookname = bookname;
		this.evaluation = evaluation;
		this.evaluation2 = evaluation2;
		this.bookcode = bookcode;
		this.score = score;
		this.writedate = writedate;
	}
	public EvalBookBean() {
		super();
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getEvaluation() {
		return evaluation;
	}
	public void setEvaluation(String evaluation) {
		this.evaluation = evaluation;
	}
	public String getEvaluation2() {
		return evaluation2;
	}
	public void setEvaluation2(String evaluation2) {
		this.evaluation2 = evaluation2;
	}
	public String getBookcode() {
		return bookcode;
	}
	public void setBookcode(String bookcode) {
		this.bookcode = bookcode;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public String getWritedate() {
		return writedate;
	}
	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}
	@Override
	public String toString() {
		return "EvalBookBean [id=" + id + ", bookname=" + bookname + ", evaluation=" + evaluation + ", evaluation2="
				+ evaluation2 + ", bookcode=" + bookcode + ", score=" + score + ", writedate=" + writedate + "]";
	}

	
	
	
}
