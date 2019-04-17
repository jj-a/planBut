package kr.co.planbut.applyBbs;

public class ApplyBbsDTO {
	private String ma_code;
	private int b_no;
	private String sp_id;
	private int people;
	private String mate_code;
	
	public ApplyBbsDTO() {}

	public String getMa_code() {
		return ma_code;
	}

	public void setMa_code(String ma_code) {
		this.ma_code = ma_code;
	}

	public int getB_no() {
		return b_no;
	}

	public void setB_no(int b_no) {
		this.b_no = b_no;
	}

	public String getSp_id() {
		return sp_id;
	}

	public void setSp_id(String sp_id) {
		this.sp_id = sp_id;
	}

	public int getPeople() {
		return people;
	}

	public void setPeople(int people) {
		this.people = people;
	}

	public String getMate_code() {
		return mate_code;
	}

	public void setMate_code(String mate_code) {
		this.mate_code = mate_code;
	}

	@Override
	public String toString() {
		return "ApplyBbsDTO [ma_code=" + ma_code + ", b_no=" + b_no + ", sp_id=" + sp_id + ", people=" + people
				+ ", mate_code=" + mate_code + "]";
	}
	
}
