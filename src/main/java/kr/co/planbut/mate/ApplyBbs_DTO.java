package kr.co.planbut.mate;

public class ApplyBbs_DTO {
	
	private String ma_code;
	private int b_no;
	private String mate_code;
	private String sp_id;
	private int people;
	private String mp_id;
	
	public ApplyBbs_DTO() {}

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

	public String getMate_code() {
		return mate_code;
	}

	public void setMate_code(String mate_code) {
		this.mate_code = mate_code;
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
	
	public String getMp_id() {
		return mp_id;
	}

	public void setMp_id(String mp_id) {
		this.mp_id = mp_id;
	}

	@Override
	public String toString() {
		return "ApplyBbs_DTO [ma_code=" + ma_code + ", b_no=" + b_no + ", mate_code=" + mate_code + ", sp_id=" + sp_id
				+ ", people=" + people + ", mp_id=" + mp_id + "]";
	}
	

}//class end
