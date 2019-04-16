package kr.co.tour;

public class TreviewDTO {
	private String rv_code;
	private String re_code;
	private String m_id;
	private String content;
	private int star;
	private String regdt;
	
	public TreviewDTO() {}

	public String getRv_code() {
		return rv_code;
	}

	public void setRv_code(String rv_code) {
		this.rv_code = rv_code;
	}

	public String getRe_code() {
		return re_code;
	}

	public void setRe_code(String re_code) {
		this.re_code = re_code;
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

	public int getStar() {
		return star;
	}

	public void setStar(int star) {
		this.star = star;
	}

	public String getRegdt() {
		return regdt;
	}

	public void setRegdt(String regdt) {
		this.regdt = regdt;
	}

	@Override
	public String toString() {
		return "TreviewDTO [rv_code=" + rv_code + ", re_code=" + re_code + ", m_id=" + m_id + ", content=" + content + ", star=" + star + ", regdt="
				+ regdt + "]";
	}
	
	
	
}
