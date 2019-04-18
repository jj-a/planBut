package kr.co.planbut.common;


// Planner(플래너) Table
public class PlannerDTO {

	// Variable
	private String plan_code, m_id, subject;
	private int people;
	

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

}