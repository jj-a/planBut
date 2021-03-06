package kr.co.planbut.mateBbs;

import java.util.ArrayList;
import java.util.HashMap;

import kr.co.planbut.applyBbs.ApplyBbsDTO;
import kr.co.planbut.common.CityplanDTO;
import kr.co.planbut.common.PlannerDTO;
import kr.co.planbut.mate.ApplyRecm_DTO;

public interface MateBbsMapper {
   /*
      매퍼(mateBbs.xml)에 등록되어 있는 id를 인터페이스의 메소드에 다시 한번 등록함으로써 
      MyBatis3 에서 호출하기 편리하도록 지원
   */

   // <insert id="applyRecm"> 추천아이디에 동행신청
   public int applyRecm(ApplyRecm_DTO dto);
   
   // <insert id="create">
   public int create(MateBbsDTO dto);
   
   // <select id="list">
   public ArrayList<MateBbsDTO> list();

   // <update id="update">
   public int update(MateBbsDTO dto);
   
   // <delete id="delete">
   public int delete(MateBbsDTO dto);
   
   // <select id="read" parameterType="MateBbsDTO" resultType="MateBbsDTO">
   public MateBbsDTO read(MateBbsDTO dto);
   
   // <select id="recmList" parameterType="CityplanDTO" resultType="CityplanDTO">
   public ArrayList<RecmDTO> recmList(String s_id);
      
   // <select id="recmPeople" parameterType="CityplanDTO" resultType="CityplanDTO">
   public ArrayList<RecmPeopleDTO> recmPeople(RecmDTO recmDTO);
   
   // <insert id="applyBbs">
   public int applyBbs(ApplyBbsDTO dto);
   
   
   /*
   // <select id="search">
   public ArrayList<MateBbsDTO> search(HashMap searchMap);*/
   
} // interface end