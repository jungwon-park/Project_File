package sist.com.dto;


public class EvaluationBean {
	
	private String id;
	private String bookcode;
	private String evaluation;
	private String score;
	
	
	@Override
	public String toString() {
		return "EvaluationBean [id=" + id + ", bookcode=" + bookcode + ", evaluation=" + evaluation + ", score=" + score
				+ "]";
	}

	public EvaluationBean(String id, String bookcode, String evaluation, String score) {
		super();
		this.id = id;
		this.bookcode = bookcode;
		this.evaluation = evaluation;
		this.score = score;
	}
	
	public EvaluationBean() {
		super();
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getBookcode() {
		return bookcode;
	}
	public void setBookcode(String bookcode) {
		this.bookcode = bookcode;
	}
	public String getEvaluation() {
		return evaluation;
	}
	public void setEvaluation(String evaluation) {
		this.evaluation = evaluation;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	
	
	
	
	
}
