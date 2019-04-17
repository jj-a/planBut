package kr.co.planbut.tour;

public class ReplyDTO {
	private String reply_code;
	private String tq_code;
	private String content;
	private String regdt;
	
	public ReplyDTO() {}

	public String getReply_code() {
		return reply_code;
	}

	public void setReply_code(String reply_code) {
		this.reply_code = reply_code;
	}

	public String getTq_code() {
		return tq_code;
	}

	public void setTq_code(String tq_code) {
		this.tq_code = tq_code;
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
		return "ReplyDTO [reply_code=" + reply_code + ", tq_code=" + tq_code + ", content=" + content + ", regdt=" + regdt + "]";
	}
	
	
	
	
}
