package kr.co.planbut.mate;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestParam;

@Component
public class MateDAO {
	
	// POJO 방식의 DB 연결
	// DBOpen dbopen;
		
	// MyBatis 기반 스프링빈 방식의 DB 연결
	@Autowired
	SqlSession sqlSession;
	
	public MateDAO() {
		System.out.println("●●●●● MateDAO() 객체 생성 ●●●●●");
	}
	
	public ArrayList<ApplyBbs_DTO> myMateBbs(String id) {
		MateMapper mapper = sqlSession.getMapper(MateMapper.class);
		ArrayList<ApplyBbs_DTO> myMateBbs = mapper.myMateBbs(id);
		return myMateBbs;
	} // myMateBbs() end
	
	public ArrayList<ApplyRecm_DTO> myMateRecm(String id) {
		MateMapper mapper = sqlSession.getMapper(MateMapper.class);
		ArrayList<ApplyRecm_DTO> myMateRecm = mapper.myMateRecm(id);
		return myMateRecm;
	} // myMateRecm() end
	
	public ArrayList<ApplyBbs_DTO> myMateApplyBbs(String id) {
		MateMapper mapper = sqlSession.getMapper(MateMapper.class);
		ArrayList<ApplyBbs_DTO> myMateApplyBbs = mapper.myMateApplyBbs(id);
		return myMateApplyBbs;
	} // myMateBbs() end
	
	public ArrayList<ApplyRecm_DTO> myMateApplyRecm(String id) {
		MateMapper mapper = sqlSession.getMapper(MateMapper.class);
		ArrayList<ApplyRecm_DTO> myMateApplyRecm = mapper.myMateApplyRecm(id);
		return myMateApplyRecm;
	} // myMateRecm() end
	
	public ArrayList<MateDTO> mateOk(String id) {
		MateMapper mapper = sqlSession.getMapper(MateMapper.class);
		ArrayList<MateDTO> mateOk = mapper.mateOk(id);
		return mateOk;
	} // mateOk() end
	
	public int recBbsChange(ApplyBbs_DTO dto) {
		MateMapper mapper = sqlSession.getMapper(MateMapper.class);
		int count = mapper.recBbsChange(dto);
		return count;
	} //recBbsChange() end

	public int recRecmChange(ApplyRecm_DTO dto) {
		MateMapper mapper = sqlSession.getMapper(MateMapper.class);
		int count = mapper.recRecmChange(dto);
		return count;
	} // recRecmChange() end

	public int applyBbsMate(MateDTO dto) {
		MateMapper mapper = sqlSession.getMapper(MateMapper.class);
		int count = mapper.applyBbsMate(dto);
		return count;
	} //applyBbsMate() end

	public int applyBbs(ApplyBbs_DTO dto) {
		MateMapper mapper = sqlSession.getMapper(MateMapper.class);
		int count = mapper.applyBbs(dto);
		return count;
	} //applyBbsMate() end

	public int applyRecm(ApplyRecm_DTO dto) {
		MateMapper mapper = sqlSession.getMapper(MateMapper.class);
		int count = mapper.applyRecm(dto);
		return count;
	} //applyBbsMate() end
	
	public int delete(MateDTO dto) {
		MateMapper mapper = sqlSession.getMapper(MateMapper.class);
		int count = mapper.delete(dto);
		return count;
	} //applyBbsMate() end
	
	public ArrayList<ChatDTO> mateChat(String nowTime) {
		MateMapper mapper = sqlSession.getMapper(MateMapper.class);
		ArrayList<ChatDTO> mateChat = mapper.mateChat(nowTime);
		return mateChat;
	} // mateChat() end
	
	public int submit(ChatDTO dto) {
		MateMapper mapper = sqlSession.getMapper(MateMapper.class);	
		int count = mapper.submit(dto);
		return count;

	} // submit() end
	
	/*
	public NoticeDTO read(NoticeDTO dto) {
		NoticeMapper mapper = sqlSession.getMapper(NoticeMapper.class);
		dto = mapper.read(dto);
		return dto;
	} // create() end
	
	public int delete(NoticeDTO dto) {
		NoticeMapper mapper = sqlSession.getMapper(NoticeMapper.class);
		int count = mapper.delete(dto);
		return count;
	} // create() end
	
	public int update(NoticeDTO dto) {
		NoticeMapper mapper = sqlSession.getMapper(NoticeMapper.class);
		int count = mapper.update(dto);
		return count;
	} // create() end
	
	public ArrayList<NoticeDTO> search(String col, String word) {
		NoticeMapper mapper = sqlSession.getMapper(NoticeMapper.class);
		HashMap searchMap = new HashMap();
		searchMap.put("col", col);
		searchMap.put("word", word);
		ArrayList<NoticeDTO> list = mapper.search(searchMap);
		return list;
	}//search() end
*/	
} // class end 