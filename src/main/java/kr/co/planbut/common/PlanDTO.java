package kr.co.planbut.common;


public class PlanDTO {


	public PlanDTO() {
		System.out.println("Start PlanVO");
	}

	
	// Planner(플래너) Table
	public class Planner {
		
		// Variable
		private String plan_code, m_id, subject;
		private int people;


		// Constructor
		public Planner() {
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

	} // Planner() Class

	
	
	// Cityplan(도시계획) Table
	public class Cityplan {
		
		// Variable
		private String cp_code, plan_code, ct_code;
		private int order_code, day;
		private String trans, s_date, rm_ok;


		// Constructor
		public Cityplan() {
			;
		}


		// Getter&Setter
		
		public String getCp_code() {
			return cp_code;
		}

		public void setCp_code(String cp_code) {
			this.cp_code = cp_code;
		}

		public String getPlan_code() {
			return plan_code;
		}

		public void setPlan_code(String plan_code) {
			this.plan_code = plan_code;
		}

		public String getCt_code() {
			return ct_code;
		}

		public void setCt_code(String ct_code) {
			this.ct_code = ct_code;
		}

		public int getOrder_code() {
			return order_code;
		}

		public void setOrder_code(int order_code) {
			this.order_code = order_code;
		}

		public int getDay() {
			return day;
		}

		public void setDay(int day) {
			this.day = day;
		}

		public String getTrans() {
			return trans;
		}

		public void setTrans(String trans) {
			this.trans = trans;
		}

		public String getS_date() {
			return s_date;
		}

		public void setS_date(String s_date) {
			this.s_date = s_date;
		}

		public String getRm_ok() {
			return rm_ok;
		}

		public void setRm_ok(String rm_ok) {
			this.rm_ok = rm_ok;
		}
		
	} // Cityplan() Class

	
	
	// Courseplan(경로계획) Table
	public class Courseplan {
		
		// Variable
		private String cos_code, cp_code, course, date;


		// Constructor
		public Courseplan() {
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
		
	} // Courseplan() Class
	
	
}