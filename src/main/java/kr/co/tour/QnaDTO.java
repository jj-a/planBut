package kr.co.tour;

public class QnaDTO {
	private String tq_code;
	private String tour_code;
	private String m_id;
	private String content;
	private String regdt;
	
	public QnaDTO() {}

	public String getTq_code() {
		return tq_code;
	}

	public void setTq_code(String tq_code) {
		this.tq_code = tq_code;
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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getRegdt() {
		return regdt;
	}

	public void setRegdt(String regdt) {
		this.regdt = regdt;
	}

	@Override
	public String toString() {
		return "QnaDTO [tq_code=" + tq_code + ", tour_code=" + tour_code + ", m_id=" + m_id + ", content=" + content + ", regdt=" + regdt + "]";
	}
	
	
	
	
}
