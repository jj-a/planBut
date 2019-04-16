package kr.co.tour;

public class TreserveDTO {
	private String re_code;
	private String tour_code;
	private String m_id;
	private String pay_type;
	private String date;
	private int payed;
	private int people;
	
	public TreserveDTO() {}

	public String getRe_code() {
		return re_code;
	}

	public void setRe_code(String re_code) {
		this.re_code = re_code;
	}

	public String getTour_code() {
		return tour_code;
	}

	public void setTour_code(String tour_code) {
		this.tour_code = tour_code;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getPay_type() {
		return pay_type;
	}

	public void setPay_type(String pay_type) {
		this.pay_type = pay_type;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getPayed() {
		return payed;
	}

	public void setPayed(int payed) {
		this.payed = payed;
	}

	public int getPeople() {
		return people;
	}

	public void setPeople(int people) {
		this.people = people;
	}

	@Override
	public String toString() {
		return "TreserveDTO [re_code=" + re_code + ", tour_code=" + tour_code + ", m_id=" + m_id + ", pay_type=" + pay_type + ", date=" + date
				+ ", payed=" + payed + ", people=" + people + "]";
	}
	
	
	
}
