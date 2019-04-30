package kr.co.planbut.member;

import kr.co.planbut.common.MemberDTO;

public interface MemberMapper {

	/*
	 * Mapper(notice.xml)에 등록되어있는 id를 interface의 메소드에 다시 한번 등록함으로써 myBatis3에서 호출하기 편리하도록 지원
	 */

	//<select id="login">
	public MemberDTO login(MemberDTO dto);
	
	public MemberDTO profile(String m_id);

}
