package kr.co.planbut.mate;

public class ChatDTO {
	String chatName;
	String chatContent;
	String chatTime;
	
	public ChatDTO() {}

	public String getChatName() {
		return chatName;
	}

	public void setChatName(String chatName) {
		this.chatName = chatName;
	}

	public String getChatContent() {
		return chatContent;
	}

	public void setChatContent(String chatContent) {
		this.chatContent = chatContent;
	}

	public String getChatTime() {
		return chatTime;
	}

	public void setChatTime(String chatTime) {
		this.chatTime = chatTime;
	}

	@Override
	public String toString() {
		return "ChatDTO [chatName=" + chatName + ", chatContent=" + chatContent + ", chatTime=" + chatTime + "]";
	}

}
