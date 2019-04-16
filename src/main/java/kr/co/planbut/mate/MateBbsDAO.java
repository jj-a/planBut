package kr.co.planbut.mate;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MateBbsDAO {
	
	// POJO 방식의 DB 연결
	// DBOpen dbopen;
		
	// MyBatis 기반 스프링빈 방식의 DB 연결
	@Autowired
	SqlSession sqlSession;
	
	public MateBbsDAO() {
		System.out.println("����������� MateDAO() 객체 생성 �����������");
	}
	
	/*public int create(NoticeDTO dto) {
		NoticeMapper mapper = sqlSession.getMapper(NoticeMapper.class);
		int count = mapper.create(dto);
		return count;
	} // create() end
	
	public ArrayList<NoticeDTO> list() {
		NoticeMapper mapper = sqlSession.getMapper(NoticeMapper.class);
		ArrayList<NoticeDTO> list = mapper.list();
		return list;
	} // list() end
	
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