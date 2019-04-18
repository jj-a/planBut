package kr.co.planbut.plan;

public class PlanDTO {
	public PlanDTO() {}
	
	String plan_code;//char(4) NOT NULL PRIMARY KEY,
	String m_id; //varchar(16) NOT NULL,
	String subject; //varchar(20) NOT NULL,
	int people; //int NOT NULL,
	
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
}//class end
