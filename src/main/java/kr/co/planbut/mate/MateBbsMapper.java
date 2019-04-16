package kr.co.planbut.mate;

import java.util.ArrayList;
import java.util.HashMap;

public interface MateBbsMapper {
	/*
		매퍼(notice.xml)에 등록되어 있는 id를 인터페이스의 메소드에 다시 한번 등록함으로써 
		MyBatis3 에서 호출하기 편리하도록 지원
	*/
	
	// <insert id="create">
	/*public int create(NoticeDTO dto);
	
	// <select id="list">
	public ArrayList<NoticeDTO> list();
	
	// <delete id="delete">
	public int delete(NoticeDTO dto);
	
	// <select id="read" parameterType="NoticeDTO" resultType="NoticeDTO">
	public NoticeDTO read(NoticeDTO dto);
	
	// <update id="update">
	public int update(NoticeDTO dto);

	// <select id="search">
	public ArrayList<NoticeDTO> search(HashMap searchMap);*/
	
} // interface end
