package kr.co.planbut.mateBbs;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.mysql.cj.api.Session;

import kr.co.planbut.applyBbs.ApplyBbsDTO;
import kr.co.planbut.applyRecm.ApplyRecmDTO;
import kr.co.planbut.common.CityplanDTO;
import kr.co.planbut.common.PlannerDTO;

@Component
public class MateBbsDAO {
	
	// POJO 방식의 DB 연결
	// DBOpen dbopen;
		
	// MyBatis 기반 스프링빈 방식의 DB 연결
	
	@Autowired
	SqlSession sqlSession;
		
	public MateBbsDAO() {
		System.out.println("●●●●● MateBbsDAO() 객체 생성 ●●●●●");
	}
	
	public int applyRecm(ApplyRecmDTO dto) {
		MateBbsMapper mapper = sqlSession.getMapper(MateBbsMapper.class);
		int count = mapper.applyRecm(dto);
		return count;
	} // applyRecm() end
	
	public int create(MateBbsDTO dto) {
		MateBbsMapper mapper = sqlSession.getMapper(MateBbsMapper.class);
		int count = mapper.create(dto);
		return count;
	} // create() end
	
	public ArrayList<MateBbsDTO> list() {
		MateBbsMapper mapper = sqlSession.getMapper(MateBbsMapper.class);
		ArrayList<MateBbsDTO> list = mapper.list();
		return list;
	} // list() end
	
	public int update(MateBbsDTO dto) {
		MateBbsMapper mapper = sqlSession.getMapper(MateBbsMapper.class);
		int count = mapper.update(dto);
		return count;
	} // create() end
	
	public int delete(MateBbsDTO dto) {
		MateBbsMapper mapper = sqlSession.getMapper(MateBbsMapper.class);
		int count = mapper.delete(dto);
		return count;
	} // delete() end
	
	public MateBbsDTO read(MateBbsDTO dto) {
		MateBbsMapper mapper = sqlSession.getMapper(MateBbsMapper.class);
		dto = mapper.read(dto);
		return dto;
	} // read() end
	
	public ArrayList<RecmDTO> recmList(String s_id) {
	    MateBbsMapper mapper = sqlSession.getMapper(MateBbsMapper.class);
	    ArrayList<RecmDTO> recmList = mapper.recmList(s_id);
	    // System.out.println("recmList 수: "+recmList.size());
	    return recmList;
	} // recmList() end
	
	public ArrayList<RecmPeopleDTO> recmPeople(RecmDTO recmDTO) {
	    MateBbsMapper mapper = sqlSession.getMapper(MateBbsMapper.class);
	    ArrayList<RecmPeopleDTO> recmPeople = mapper.recmPeople(recmDTO);
	    return recmPeople;
	} // recmPeople() end
	
    public int applyBbs(ApplyBbsDTO dto) {
	      MateBbsMapper mapper = sqlSession.getMapper(MateBbsMapper.class);
	      int count = mapper.applyBbs(dto);
	      return count;
	} // create() end
    
    
    //내 동행
    public ArrayList<MateBbsDTO> mymateList() {
		MateBbsMapper mapper = sqlSession.getMapper(MateBbsMapper.class);
		ArrayList<MateBbsDTO> mymateList = mapper.mymateList();
		return mymateList;
	} // list() end
    
	/*
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