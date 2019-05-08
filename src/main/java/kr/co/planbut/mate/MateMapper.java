package kr.co.planbut.mate;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.web.bind.annotation.RequestParam;

import kr.co.planbut.mateBbs.MateBbsDTO;

public interface MateMapper {
	/*
		매퍼(notice.xml)에 등록되어 있는 id를 인터페이스의 메소드에 다시 한번 등록함으로써 
		MyBatis3 에서 호출하기 편리하도록 지원
	*/
	
	// <select id="myMateBbs">
	public ArrayList<ApplyBbs_DTO> myMateBbs(String id);
	
	// <select id="myMateRecm">
	public ArrayList<ApplyRecm_DTO> myMateRecm(String id);
	
	// <select id="myMateBbs">
	public ArrayList<ApplyBbs_DTO> myMateApplyBbs(String id);
	
	// <select id="myMateRecm">
	public ArrayList<ApplyRecm_DTO> myMateApplyRecm(String id);
	
	// <select id="mateOk">
	public ArrayList<MateDTO> mateOk(String id);
	
	// <update id="update">
	public int recBbsChange(ApplyBbs_DTO dto);
	
	// <select id="mateOk">
	public ArrayList<ChatDTO> mateChat(String nowTime);
	
	// <update id="update">
	public int submit(ChatDTO dto);
	/*
	// <delete id="delete">
	public int delete(NoticeDTO dto);
	
	// <select id="read" parameterType="NoticeDTO" resultType="NoticeDTO">
	public NoticeDTO read(NoticeDTO dto);
	
	// <update id="update">
	public int update(NoticeDTO dto);

	// <select id="search">
	public ArrayList<NoticeDTO> search(HashMap searchMap);*/
	
} // interface end
