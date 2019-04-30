package kr.co.planbut.common;


// Courseplan(경로계획) Table
public class CourseplanDTO {

	// Variable
	private String cos_code, cp_code, course, date;
	private CityplanDTO cityplan;	// cityplan 테이블 조인

	
	// Constructor
	public CourseplanDTO() {
		;
	}

	
	// Getter&Setter

	public String getCos_code() {
		return cos_code;
	}

	public void setCos_code(String cos_code) {
		this.cos_code = cos_code;
	}

	public String getCp_code() {
		return cp_code;
	}

	public void setCp_code(String cp_code) {
		this.cp_code = cp_code;
	}

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public CityplanDTO getCityplan() {
		return cityplan;
	}

	public void setCityplan(CityplanDTO cityplan) {
		this.cityplan = cityplan;
	}

}