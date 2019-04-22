package kr.co.planbut.common;


// Recommend(추천) Table
public class RecommendDTO {

	// Variable
	private String rm_code, ct_code, tm_type, course;

	
	// Constructor
	public RecommendDTO() {
		;
	}

	
	// Getter&Setter

	public String getRm_code() {
		return rm_code;
	}

	public void setRm_code(String rm_code) {
		this.rm_code = rm_code;
	}

	public String getCt_code() {
		return ct_code;
	}

	public void setCt_code(String ct_code) {
		this.ct_code = ct_code;
	}

	public String getTm_type() {
		return tm_type;
	}

	public void setTm_type(String tm_type) {
		this.tm_type = tm_type;
	}

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

}