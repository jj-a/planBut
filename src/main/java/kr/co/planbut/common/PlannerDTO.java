package kr.co.planbut.common;


// Planner(플래너) Table
public class PlannerDTO {

	// Variable
	private String plan_code, m_id, subject;
	private int people;
<<<<<<< HEAD
	private String s_date;
	private CityplanDTO cityplan;	// cityplan 테이블 조인
	
=======
>>>>>>> feature/tour

	// Constructor
	public PlannerDTO() {
		;
	}

	
	// Getter&Setter

	public String getPlan_code() {
		return plan_code;
	}

	public void setPlan_code(String plan_code) {
		this.plan_code = plan_code;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public int getPeople() {
		return people;
	}

	public void setPeople(int people) {
		this.people = people;
	}

	public String getS_date() {
		return s_date;
	}

	public void setS_date(String s_date) {
		this.s_date = s_date;
	}

	public CityplanDTO getCityplan() {
		return cityplan;
	}

	public void setCityplan(CityplanDTO cityplan) {
		this.cityplan = cityplan;
	}

}