package kr.co.planbut.common;


// Cityplan(도시계획) Table
public class CityplanDTO {

	// Variable
	private String cp_code, plan_code, ct_code;
	private int order_code, day;
	private String trans, s_date, rm_ok;
	private String m_id;

	// Constructor
	public CityplanDTO() {
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
	
	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

}