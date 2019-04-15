package net.utility;

import java.awt.Image;
import java.awt.image.BufferedImage;
import java.awt.image.PixelGrabber;
import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Random;
import java.util.StringTokenizer;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.ImageIcon;

public class Utility {
  // 서비스시에는 도메인으로 변경됨.
  private static final String root = "/planbut";

  public static synchronized String getRoot() {
    return root;
  }

  /**
   * 2048 -> 2가 리턴됨
   * 
   * @param filesize
   * @return
   */
  public static synchronized long toUnit(long filesize) {
    long size = 0;

    if (filesize > 1024) {
      size = filesize / 1024; // KB
    } else {
      size = filesize / (1024 * 1024); // MB
    }

    return size;
  }

  /**
   * 2048 -> 2 KB가 리턴됨
   * 
   * @param filesize
   * @return
   */
  public static synchronized String toUnitStr(long filesize) {
    String size = "";

    if (filesize > 1024) {
      size = filesize / 1024 + " KB"; // KB
    } else {
      size = filesize / (1024 * 1024) + " MB"; // MB
    }

    return size;
  }

  /**
   * 오늘 날짜를 문자열로 리턴합니다.
   * 
   * @return
   */
  public static synchronized String getCalendarDay() {
    String str = "";
    Calendar cal = Calendar.getInstance();
    str = "" + cal.get(Calendar.DATE); // 날짜

    return str;
  }

  /**
   * 2010-12-14 형식의 날짜를 리턴합니다.
   * 
   * @return 2008-01-30 형식의 문자열 리턴
   */
  public static synchronized String getDate() {
    SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");

    String date = sd.format(new Date());

    // System.out.println(date);
    return date;
  }

  /**
   * 20101214 형식의 날짜를 리턴합니다.
   * 
   * @return 20101214 형식의 문자열 리턴
   */
  public static synchronized String getDate2() {
    SimpleDateFormat sd = new SimpleDateFormat("yyyyMMdd");

    String date = sd.format(new Date());

    // System.out.println(date);
    return date;
  }

  /**
   * yyyyMMdd_hhmiss 형식의 날짜를 리턴합니다.
   * @return 20110601_121003 형식의 문자열 리턴
   */
  public static String getDate3(){
      SimpleDateFormat sd = new SimpleDateFormat("yyyyMMdd_hhmmss");
      
      String date = sd.format(new Date());

      // System.out.println(date);        
      return date;
  }
  /**
   * 20101214 형식의 날짜를 리턴합니다.
   * 
   * @param _date
   * @return
   */
  public static synchronized String getDate3(Date _date) {
    SimpleDateFormat sd = new SimpleDateFormat("yyyyMMdd");
    String date = sd.format(_date);

    // System.out.println(date);
    return date;
  }

  /**
   * 2010년 12월 14일 형식의 날짜를 리턴합니다.
   * 
   * @return
   */
  public static synchronized String getDate4() {
    SimpleDateFormat sd = new SimpleDateFormat("yyyy년 MM월 dd일");
    String date = sd.format(new Date());

    // System.out.println(date);
    return date;
  }

  /**
   * 20101214일 형식의 날짜를 리턴합니다.
   * 
   * @param _date
   * @return
   */
  public static synchronized String getDate5(Date _date) {
    SimpleDateFormat sd = new SimpleDateFormat("yyyyMMdd");
    String date = sd.format(_date);

    // System.out.println(date);
    return date;
  }

  /**
   * 2010-12-14 형식의 날짜를 리턴합니다.
   * 
   * @return 2008-01-30 형식의 문자열 리턴
   */
  public static synchronized String getDate6(int year, int month, int day) {
    SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");

    new Date();
    String date = sd.format(new Date(year - 1900, month, day));

    // System.out.println(date);
    return date;
  }

  /**
   * 내용중에 특수문자 표현을 위해 HTML 특수문자로 변환합니다. 
   * 예) 테이블 태그
   *     <TABLE> -> &lt;TABLE&gt;
   */
  public static synchronized String convertChar(String str) {

    str = str.replaceAll("<", "&lt;");
    str = str.replaceAll(">", "&gt;");
    str = str.replaceAll("'", "&apos;");   // '
    str = str.replaceAll("\"", "&quot;"); // "
    str = str.replaceAll("\r\n", "<BR>");  // 라인 변경
    
    return str;
  }
  
  public static synchronized String convertCharTA(String str) {

    str = str.replaceAll("<", "&lt;");
    str = str.replaceAll(">", "&gt;");
    str = str.replaceAll("'", "&apos;");   // '
    str = str.replaceAll("\"", "&quots;"); // "
    
    return str;
  }
  
  public static synchronized String getString(HttpServletRequest request, String variable) {
    String value = "";

    variable = request.getParameter(variable);
    if (variable != null) {
      variable = variable.trim();
      if (variable.length() > 0) {
        value = variable;
      }

    } else {
      value = variable;
    }

    return value;
  }

  public static synchronized int getInt(HttpServletRequest request, String variable) {
    int value = 0;

    variable = request.getParameter(variable);
    if (variable != null) {
      variable = variable.trim();
      if (variable.length() > 0) {
        value = Integer.parseInt(variable);
      }
    } else {
      value = 0;
    }

    return value;
  }

  // 줄 바꾸기
  public static synchronized String getConvertCharTextArea(String str) {
    for (int i = 0; i < str.length(); i++) {
      if (str.charAt(i) == '&') {
        str = str.substring(0, i) + "&" + str.substring(i + 1, str.length());
      }
    }
    return str;
  }

  public static synchronized String convertToDBMSforTextArea(String str) {
    for (int i = 0; i < str.length(); i++) {
      if (str.charAt(i) == '<') {
        str = str.substring(0, i) + "<" + str.substring(i + 1, str.length());
      } else if (str.charAt(i) == '>') {
        str = str.substring(0, i) + ">" + str.substring(i + 1, str.length());
      }
    }
    return str;
  }

  public static synchronized String convertToHTMLforTextArea(String str) {
    str.replaceAll("<", "<");
    str.replaceAll(">", ">");

    return str;
  }

  /**
   * 로그인한 관리자 인지 검사
   * 
   * @param session
   * @return
   */
  public static synchronized boolean isAdmin(HttpServletRequest request) {
    boolean sw = false;

    HttpSession session = request.getSession();
    String s_id = Utility.checkNull((String) session.getAttribute("s_id"));
    // System.out.println("현재 로그인 관리자 s_id: " + s_id);
    if (s_id.equals("") == true) { // 로그인하지 않은 경우
      sw = false;
    } else {
      sw = true;
    }

    return sw;
  }

  /**
   * 로그인한 사용자인지 검사
   * 
   * @param request
   * @return
   */
  public static synchronized boolean isMember(HttpServletRequest request) {
    boolean sw = false;

    HttpSession session = request.getSession();
    String s_member_id = Utility.checkNull((String) session
        .getAttribute("s_member_id"));
    // System.out.println("현재 로그인 사용자 s_member_id: " + s_member_id);
    if (s_member_id.equals("") == true) { // 로그인하지 않은 경우
      sw = false;
    } else {
      sw = true;
    }

    return sw;
  }

  /**
   * 로그인한 사용자 인지 검사
   * 
   * @param session
   * @return
   */
  public static synchronized boolean isUser(HttpServletRequest request) {
    boolean sw = false;

    HttpSession session = request.getSession();
    String s_member_id = Utility.checkNull((String) session
        .getAttribute("s_member_id"));
    if (s_member_id.length() > 1) { // 로그인하지 않은 경우
      sw = true;
    } else {
      sw = false;
    }

    return sw;
  }

  public static synchronized boolean checkImageFile(String filename) {
    boolean sw = false;

    if (filename != null) {
      sw = filename.endsWith(".jpg") || filename.endsWith(".jpeg")
          || filename.endsWith(".gif") || filename.endsWith(".png")
          || filename.endsWith(".bmp");
    }

    return sw;
  }

  public static synchronized String getBrowser(HttpServletRequest request) {
    String header = request.getHeader("User-Agent");
    if (header.indexOf("MSIE") > -1) {
      return "MSIE";
    } else if (header.indexOf("Chrome") > -1) {
      return "Chrome";
    } else if (header.indexOf("Opera") > -1) {
      return "Opera";
    }
    return "Firefox";
  }

  public static synchronized String getDisposition(String filename, String browser) {
    String dispositionPrefix = "attachment;filename=";
    String encodedFilename = null;
    try {
      if (browser.equals("MSIE")) {
        encodedFilename = URLEncoder.encode(filename, "UTF-8").replaceAll(
            "\\+", "%20");
      } else if (browser.equals("Firefox")) {
        encodedFilename =

        "\"" + new String(filename.getBytes("UTF-8"), "8859_1") + "\"";
      } else if (browser.equals("Opera")) {
        encodedFilename =

        "\"" + new String(filename.getBytes("UTF-8"), "8859_1") + "\"";
      } else if (browser.equals("Chrome")) {
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < filename.length(); i++) {
          char c = filename.charAt(i);
          if (c > '~') {
            sb.append(URLEncoder.encode("" + c, "UTF-8"));
          } else {
            sb.append(c);
          }
        }
        encodedFilename = sb.toString();
      } else {
        System.out.println("Not supported browser");
      }
    } catch (Exception e) {

    }

    return dispositionPrefix + encodedFilename;
  }

  /**
   * 임의의 정수를 리턴합니다.
   * 
   * @param range
   *          정수범위 0 ~ 범위-1
   * @return 난수 리턴
   */
  public static synchronized int random(int range) {
    // 0 ~ range-1까지 산출됨.
    int rnd = 0;
    Random random = new Random();
    rnd = random.nextInt(range);

    return rnd;
  }

  public static synchronized Date getDate(String date) {
    Date currentTime = new Date();
    SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
    try {
      currentTime = sd.parse(date);
    } catch (Exception e) {
    }
    // System.out.println(date);
    return currentTime;
  }

  public static synchronized String progress(String enddate) {
    java.util.Date nowtime = new java.util.Date();
    java.util.Date endtime = getDate(enddate);

    // System.out.println("nowtime: " + nowtime.toLocaleString());
    // System.out.println("endtime: " + nowtime.toLocaleString());
    String progress = null;

    if (nowtime.after(endtime) == true) {
      progress = "종료";
    } else {
      progress = "진행";
    }

    return progress;
  }

  /**
   * 천단위마다 컴마를 출력합니다.
   * 
   * @param price
   *          금액
   * @return 컴마가 포함된 문자열
   */
  public static synchronized String comma(int price) {
    DecimalFormat comma = new DecimalFormat("###,##0");
    String cs = comma.format(price);

    return cs;
  }

  public static synchronized String comma(long price) {
    DecimalFormat comma = new DecimalFormat("###,##0");
    String cs = comma.format(price);

    return cs;
  }

  /**
   * null 문자를 공백 문자로 변경합니다.
   * 
   * @param str
   *          검사할 문자열
   * @return null 값을 가지고 있는 객체는 공백 문자열로 리턴됨
   */
  public static synchronized String checkNull(String str) {
    if (str == null) {
      return "";  // null 이면 빈공백으로 리턴
    } else {
      return str; // 원래의 문자열 리턴
    }
  }

  /**
   * request 객체에서 문자열을 추출합니다.
   * 
   * @param request
   * @param str
   *          추출할 변수
   * @return 변환된 문자열
   */
  public static synchronized String checkNull(HttpServletRequest request, String str) {
    String rstr = "";

    if (request.getParameter(str) != null) {
      rstr = request.getParameter(str);
    } else {
      rstr = "";
    }

    return rstr;
  }

  /**
   * 문자열이 Object 타입으로 전송된 것을 null 처리
   * 
   * @param str
   * @return
   */
  public static String checkNull(Object str) {
    if ((String) str == null) {
      return "";
    } else {
      return (String) str;
    }
  }

  /**
   * FileUpload 1.2 한글 변환
   * 
   * @param str
   * @return
   */
  public static synchronized String getEncodFileUpload12(String str) {
    String corean = null;
    try {
      corean = new String(str.getBytes("ISO-8859-1"), "UTF-8");
      // corean= new String(str.getBytes("ISO-8859-1"), "KSC5601");
    } catch (Exception e) {
      return corean;
    }
    return corean;
  }

  /**
   * MVC, Tomcat 7.0기반 JSP 페이지 한글 변환
   * 
   * @param str
   * @return
   */
  public static synchronized String getEncodeMVC(String str) {
    String corean = null;
    try {
      corean = new String(str.getBytes("ISO-8859-1"), "UTF-8");
      // corean= new String(str.getBytes("ISO-8859-1"), "KSC5601");
    } catch (Exception e) {
      return corean;
    }
    return corean;
  }

  /**
   * fileupload 1.2.2 한글 처리
   * 
   * @param ko
   * @return
   */
  public static synchronized String fileupload122Enc(String ko) {
    String corean = null;
    try {
      // corean= new String(ko.getBytes("8859_1"), "euc-kr");
      corean = new String(ko.getBytes("ISO-8859-1"), "utf-8");
      // corean= new String(ko.getBytes("8859_1"), "iso-8859-1");
      // corean= new String(ko.getBytes("utf-8"), "8859_1");
      // corean= new String(ko.getBytes("8859_1"), "KSC5601");
    } catch (Exception e) {
      return corean;
    }
    return corean;
  }

  /**
   * fileupload 1.2.2 한글 처리
   * 
   * @param ko
   * @return
   */
  public static synchronized String fileupload122DownEnc(String ko) {
    // charsetTest(ko);

    String corean = null;
    try {
      // corean= new String(ko.getBytes("iso-8859-1"), "euc-kr");
      // corean= new String(ko.getBytes("iso-8859-1"), "utf-8");
      // corean= new String(ko.getBytes("8859_1"), "iso-8859-1");
      // corean= new String(ko.getBytes("utf-8"), "8859_1");
      // corean= new String(ko.getBytes("iso-8859-1"), "KSC5601");
      corean = new String(ko.getBytes("KSC5601"), "EUC-KR");
    } catch (Exception e) {
      return corean;
    }
    return corean;
  }

  public static synchronized String getType(String fileUrl) {
    String type = "";
    fileUrl = "file:" + fileUrl;
    try {
      URL u = new URL(fileUrl);
      URLConnection uc = u.openConnection();
      type = uc.getContentType();

    } catch (Exception e) {
      System.out.println(e.toString());
    }

    return type;
  }

  /**
   * 주어진 문자셋의 문자코드를 변환합니다.
   * 
   * @param ko
   * @return
   */
  public static synchronized String ko(String ko) {
    String str = null;
    try {
      // corean= new String(ko.getBytes("8859_1"), "euc-kr");
      // corean= new String(ko.getBytes("8859_1"), "utf-8");
      // corean= new String(ko.getBytes("8859_1"), "iso-8859-1");
      // corean= new String(ko.getBytes("8859_1"), "utf-8");
      str = new String(ko.getBytes("8859_1"), "KSC5601");
      for (int i = 0; i < str.length(); i++) {
        if (str.charAt(i) == ' ') {
          str = str.substring(0, i) + "%20"
              + str.substring(i + 1, str.length());
          i = i + 3;
        }
      }

    } catch (Exception e) {

    }
    return str;
  }

  /**
   * 내용중에 특수문자 표현을 위해 HTML 특수문자로 변환합니다.
   */
  public static synchronized String getConvertBR(String str) {
    return str.replace("\n", "<BR>");
  }

  /**
   * 파일 Download시 한글 파일 인코딩
   * 
   * @param str
   * @return
   */
  public static synchronized String getEncod(String str) {
    try {
      // resin UTF-8 로 지정
      // str = java.net.URLEncoder.encode(str, "EUC-KR");
      // str = java.net.URLEncoder.encode(str, "UTF-8");
      str = java.net.URLEncoder.encode(str, "KSC5601");
    } catch (Exception e) {

    }

    // System.out.println(str);

    for (int i = 0; i < str.length(); i++) {
      if (str.charAt(i) == '+') {
        str = str.substring(0, i) + "%20" + str.substring(i + 1, str.length());
        i = i + 3;
      }
    }
    // System.out.println("최종변환 형태: "+str);
    return str;
  }

  /**
   * Struts2 GET방식 한글 문자셋 인코딩
   * 
   * @param str
   * @return
   */
  public static synchronized String getEncodGet(String str) {
    try {

      str = java.net.URLEncoder.encode(str, "EUC-KR");
      // str = java.net.URLEncoder.encode(str, "UTF-8");
      // str = java.net.URLEncoder.encode(str, "KSC5601");

      for (int i = 0; i < str.length(); i++) {
        if (str.charAt(i) == '+') {
          str = str.substring(0, i) + "%20"
              + str.substring(i + 1, str.length());
          i = i + 3;
        }
      }
    } catch (Exception e) {

    }

    return str;
  }

  /**
   * 스트럿츠 자료실 한글 출력 메소드
   * 
   * @param str
   * @return
   */
  public static synchronized String encodStruts2(String str) {
    try {
      // str = java.net.URLEncoder.encode(str, "EUC-KR");
      // str = java.net.URLEncoder.encode(str, "UTF-8");
      str = java.net.URLEncoder.encode(str, "KSC5601");

      for (int i = 0; i < str.length(); i++) {
        if (str.charAt(i) == '+') {
          str = str.substring(0, i) + "%20"
              + str.substring(i + 1, str.length());
          i = i + 3;
        }
      }
    } catch (Exception e) {

    }

    return str;
  }

  /**
   * FCKEditor 2.6.8 한글 변환
   * 
   * @param str
   * @return
   */
  public static synchronized String encodFCK268(String str) {
    String corean = null;
    try {
      corean = new String(str.getBytes("ISO-8859-1"), "UTF-8");
      // corean= new String(str.getBytes("ISO-8859-1"), "KSC5601");
    } catch (Exception e) {
      return corean;
    }
    return corean;
  }

  /**
   * 파일을 삭제합니다.
   * 
   * @param folder
   *          파일이 저장된 폴더
   * @param filename
   *          삭제할 파일명
   * @return true-삭제 성공, false-삭제 실패
   */
  public static synchronized boolean deleteFile(String folder, String filename) {
    boolean ret = false;

    try {
      if (filename != null) { // 기존에 파일이 존재하는 경우 삭제
        File file = new File(folder + "/" + filename);
        // 파일이 존재하는지 확인 후 삭제
        if (file.exists()) {
          ret = file.delete();
        }
      }
    } catch (Exception e) {
      e.printStackTrace();
    }

    return ret;
  }

  /**
   * application이름을 입력받아 절대 경로를 산출합니다. 예) getRealPath(request, "WEB-INF/config")
   * 
   * @param request
   * @param dir
   *          application 이름
   * @return 절대 경로 리턴
   * @throws IOException
   */
  public static synchronized String getRealPath(HttpServletRequest request, String dir) {
    // ByteArrayOutputStream baos = new ByteArrayOutputStream();
    String path = "";
    
    try{
      path = request.getRealPath(dir) + "/";  
      System.out.println("Upload path: " + path);
    }catch(Exception e){
      System.out.println(e.toString());
    }

    return path;
  }

  /**
   * 한글 변환 코드를 찾는 기능을 지원
   * 
   * @param s
   */
  public static synchronized void charsetTest(String s) {
    try {
      String[] charset = { "EUC-KR", "KSC5601", "ISO-8859-1", "8859_1",
          "ASCII", "UTF-8" };
      for (int i = 0; i < charset.length; i++) {
        for (int j = 0; j < charset.length; j++) {
          if (i == j)
            continue;
          System.out.print(charset[i] + " -> " + charset[j] + " : ");
          System.out.println(new String(s.getBytes(charset[i]), charset[j]));
        }
      }
    } catch (Exception e) {
      e.printStackTrace();
    }
  }

  /**
   * null 문자를 숫자 0으로 변경합니다.
   * 
   * @param request
   *          request 객체
   * @param str
   *          검사할 문자열
   * @return 숫자를 리턴
   */
  public static synchronized int checkInt(HttpServletRequest request, String str) {
    int su = 0;
    if (request.getParameter(str) != null) {
      su = Integer.parseInt(request.getParameter(str));
    }

    return su;
  }

  public static int checkInt(String str) {
    int su = 0;
    if (str != null) {
      su = Integer.parseInt(str);
    }

    return su;
  }

  /**
   * null 문자를 숫자 0으로 변경합니다.
   * 
   * @param request
   *          request 객체
   * @param str
   *          검사할 문자열
   * @return 숫자를 리턴
   */
  public static synchronized int checkAttrInt(HttpServletRequest request, String str) {
    int su = 0;
    if (request.getAttribute(str) != null) {
      Integer itg = (Integer) (request.getAttribute(str));
      su = itg.intValue();
    }

    return su;
  }

  /**
   * Ajax 한글 변환
   * 
   * @param ko
   * @return
   */
  public static synchronized String koAjax(String ko) {
    String corean = null;
    try {
      // corean= new String(ko.getBytes("ISO-8859-1"), "UTF-8");
      corean = new String(ko.getBytes("KSC5601"), "EUC-KR");
    } catch (Exception e) {
      return corean;
    }
    return corean;
  }

  /**
   * 자바스크립트 특수문자, 줄바꿈 문자 변환
   * 
   * @param str
   * @return
   */
  public static synchronized String toJS(String str) {
    if (str != null) {
      return str.replace("\\", "\\\\").replace("\'", "\\\'")
          .replace("\"", "\\\"").replace("\r\n", "\\n").replace("\n", "\\n");

    } else {
      return "";
    }
  }

  /**
   * Ajax 한글 변환
   * 
   * @param ko
   * @return
   */
  public static synchronized String koAndroid(String ko) {
    String corean = null;
    try {
      // corean= new String(ko.getBytes("UTF-8"), "EUC-KR");
      // corean= new String(ko.getBytes("ISO-8859-1"), "UTF-8");
      // corean= new String(ko.getBytes("KSC5601"), "EUC-KR");
      corean = new String(ko.getBytes("8859_1"), "UTF-8");
    } catch (Exception e) {
      return corean;
    }
    return corean;
  }

  /**
   * 문자열 경로를 받아 모든 파일 목록을 리턴
   * 
   * @param dir
   * @return
   */
  public static synchronized String[] fileNameList(String dir) {
    File sdDir = null;
    String[] str = null;

    try {
      // Check SD Card mount.
      sdDir = new File("."); // /sdcard
      // 존재/쓰기 여부 확인
      if (sdDir.exists() && sdDir.canWrite()) {
        File _dir = new File(dir);
        if (_dir.exists() && _dir.canRead()) {
          str = _dir.list();
        }
      }
    } catch (Exception e) {
      e.printStackTrace();
    }

    return str;
  }

  /**
   * 파일 객체를 받아 파일 목록을 리턴
   * 
   * @param dir
   * @return
   */
  public static synchronized String[] fileNameList(File dir) {
    String[] str = null;

    try {
      str = dir.list();
    } catch (Exception e) {
      e.printStackTrace();
    }

    return str;
  }

  /**
   * 파일 목록에서 확장자를 제거함
   * 
   * @param str
   * @return
   */
  public static synchronized ArrayList convertFilenameNotExtend(String[] str) {
    ArrayList retVal = new ArrayList();
    ;

    for (int i = 0; i < str.length; i++) {
      int point = str[i].indexOf(".");
      retVal.add(str[i].substring(0, point));
    }

    return retVal;
  }

  /**
   * 파일에서 확장자를 제거함. 예) data.txt --> data
   * 
   * @param str
   * @return
   */
  public static synchronized String convertFilenameNotExtend(String str) {
    String noExt = "";
    int point = str.indexOf(".");
    noExt = str.substring(0, point);

    return noExt;
  }

  // 폴더를 생성
  public static synchronized void makeFolder(String _dir) {
    File sdDir = null; // 폴더명
    File dir = null;

    sdDir = new File(".");
    dir = new File(sdDir.toString() + "/" + _dir);

    if (sdDir.exists() && sdDir.canWrite()) {
      if (dir.exists() == false) {
        dir.mkdir();
      }
    }

  }

  public static synchronized String onlyFilename(String _str) {
    // /sdcard/smartalbum/20101201_090101.jpg
    int ps = _str.lastIndexOf("/");
    // System.out.println("ps: " + ps);

    String str = _str.substring(ps + 1); // 20101201_090101.jpg

    int pd = str.lastIndexOf(".");
    System.out.println("pd: " + pd);

    str = str.substring(0, pd);

    return str;
  }

  public static synchronized String convertFilename(String str) {
    // 20101201_090101
    // 012345678901234
    // 2010년 12월 1일 09시 01분 01초
    String year = str.substring(0, 4);
    String month = str.substring(4, 6);
    String day = str.substring(6, 8);
    String hour = str.substring(9, 11);
    String minute = str.substring(11, 13);
    String second = str.substring(13);

    String _str = year + "년 " + month + "월 " + day + "일 " + hour + "시 "
        + minute + "분 " + second + "초 ";

    return _str;
  }

  /**
   * 파일 삭제
   * @param fname
   * @return
   */
  public static synchronized boolean deleteFile(String fname) {
    File file = new File(fname);
    boolean ret = false;
    
    if (file.exists()){
      ret = file.delete();
    }
    
    return ret;
  }

  /**
   * 바이트배열로 되어 있는 문자열을 받아 원래의 문자열로 변환
   * 
   * @param str
   * @return
   */
  public static synchronized String byteToString(String str) {
    String retVal = "";

    try {
      StringTokenizer st = new StringTokenizer(str, ",");
      byte[] _str = new byte[st.countTokens()];
      int i = -1;

      while (st.hasMoreTokens()) {
        i++;
        _str[i] = Byte.parseByte(st.nextToken());
      }
      retVal = new String(_str, 0, _str.length, "UTF-8");
    } catch (Exception e) {

    }

    return retVal;
  }

  /**
   * 문자열을 바이트 배열 문자열로 변환
   * 
   * @param str
   * @return
   */
  public static synchronized String stringToByte(String str) {
    String deli = ","; // 구분자
    String retVal = "";
    try {
      byte[] bstr = str.getBytes("UTF-8");

      for (int i = 0; i < bstr.length; i++) {
        retVal = retVal + deli + bstr[i];
      }
    } catch (Exception e) {

    }
    return retVal;

  }

  /**
   * 현재 시간을 1970년 1월 1일부터 수치형식으로 리턴
   * 
   * @return
   */
  public static synchronized long getTimeNumber() {
    long time = System.currentTimeMillis();

    return time;
  }

  /**
   * 주어진 시간을 1970년 1월 1일부터 수치형식으로 리턴
   * 
   * @return
   */
  public static synchronized long getTimeNumber(String date) {
    Date _date = new Date();
    SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
    try {
      _date = sd.parse(date);
    } catch (Exception e) {
    }
    // System.out.println(date);
    long time = _date.getTime();

    return time;
  }

  /**
   * 주어진 날짜와 기간을 계산하여 새글 여부 판단 현재 날짜가 2013-02-04 글을 등록날짜 2013-02-02
   * getTimeNew("2013-02-04", 2) : 새글 처리, true getTimeNew("2013-02-04", 3) : 새글
   * 처리, false
   * 
   * @param date
   *          문자열로 된 날짜
   * @param period
   *          새글로 지정할 기간
   * @return
   */
  public static synchronized boolean getTimeNew(String date, int period) {
    boolean sw = false;

    Date _date = new Date();
    SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
    try {
      _date = sd.parse(date);
    } catch (Exception e) {
    }
    // System.out.println(date);
    // 1970년1월1일부터 시간을 1000을 1초로하여 계산하여 리턴
    long time = _date.getTime(); // 글을 작성한 시간

    // 현재 시간을 1970년 1월 1일부터 수치형식으로 리턴
    long currentTime = System.currentTimeMillis();

    // 현재 시간과 글 등록시간의 차이를 계산
    long diff = currentTime - time;

    // 1일 86,400,000: 1초를 1000으로 하루를 계산
    // 0.0001 --> 1: 오늘 날짜
    // 1.00002 --> 2: 어제 날짜
    int day = (int) Math.ceil(((double) diff / 86400000));

    if (day <= period) {
      sw = true; // 최신글 처리
    }
    return sw;
  }

  /**
   * 이미지 사이즈를 변경하여 새로운 이미지를 생성합니다. 원본 이미지는 축소후 삭제합니다.
   * 
   * @param dir
   *          기준 폴더
   * @param _src
   *          원본 이미지
   * @param width
   *          생성될 이미지 너비
   * @param height
   *          생성될 이미지 높이, ImageUtil.RATIO는 자동 비례 비율
   * @throws IOException
   */
  public static synchronized String imgResize(String dir, String filename, int width,
      int height) throws IOException {

    File src = new File(dir + "/" + filename);
    File dest = new File(dir + "/" + Utility.convertFilenameNotExtend(filename)
        + "_s.jpg");

    int RATIO = 0;
    int SAME = -1;

    Image srcImg = null;
    // 파일의 확장자 추출
    String suffix = src.getName().substring(src.getName().lastIndexOf('.') + 1)
        .toLowerCase();
    // 이미지의 확장자를 검색하여 이미지 파일인지 검사
    if (suffix.equals("jpg") || suffix.equals("bmp") || suffix.equals("png")
        || suffix.equals("gif")) {
      srcImg = ImageIO.read(src); // 메모리에 이미지 생성
    } else {
      srcImg = new ImageIcon(src.getAbsolutePath()).getImage();
    }

    int srcWidth = srcImg.getWidth(null); // 원본 이미지 너비 추출
    int srcHeight = srcImg.getHeight(null); // 원본 이미지 높이 추출

    int destWidth = -1, destHeight = -1; // 대상 이미지 크기 초기화

    if (width == SAME) { // 너비가 같은 경우
      destWidth = srcWidth;
    } else if (width > 0) {
      destWidth = width;
    }

    if (height == SAME) { // 높이가 같은 경우
      destHeight = srcHeight;
    } else if (height > 0) {
      destHeight = height;
    }

    // 비율에 따른 크기 계산
    if (width == RATIO && height == RATIO) {
      destWidth = srcWidth;
      destHeight = srcHeight;
    } else if (width == RATIO) {
      double ratio = ((double) destHeight) / ((double) srcHeight);
      destWidth = (int) ((double) srcWidth * ratio);
    } else if (height == RATIO) {
      double ratio = ((double) destWidth) / ((double) srcWidth);
      destHeight = (int) ((double) srcHeight * ratio);
    }

    // 메모리에 대상 이미지 생성
    Image imgTarget = srcImg.getScaledInstance(destWidth, destHeight,
        Image.SCALE_SMOOTH);
    int pixels[] = new int[destWidth * destHeight];
    PixelGrabber pg = new PixelGrabber(imgTarget, 0, 0, destWidth, destHeight,
        pixels, 0, destWidth);
    try {
      pg.grabPixels();
    } catch (InterruptedException e) {
      throw new IOException(e.getMessage());
    }
    BufferedImage destImg = new BufferedImage(destWidth, destHeight,
        BufferedImage.TYPE_INT_RGB);
    destImg.setRGB(0, 0, destWidth, destHeight, pixels, 0, destWidth);

    // 파일에 기록
    ImageIO.write(destImg, "jpg", dest);

    System.out.println(dest.getName() + " 이미지를 생성했습니다.");

    // 원본 파일 삭제
    boolean ret = Utility.deleteFile(dir + "/" + filename);
    if (ret == true) {
      System.out.println("파일을 삭제 했습니다.: " + filename);
    }

    return dest.getName();
  }

  /**
   * 이미지 사이즈를 변경하여 새로운 이미지를 생성합니다.
   * 
   * @param src
   *          원본 이미지
   * @param dest
   *          생성되는 이미지
   * @param width
   *          생성될 이미지 너비
   * @param height
   *          생성될 이미지 높이, ImageUtil.RATIO는 자동 비례 비율
   * @throws IOException
   */
  public static synchronized String imgResize(File src, File dest, int width, int height)
      throws IOException {
    int RATIO = 0;
    int SAME = -1;

    Image srcImg = null;
    // 파일의 확장자 추출
    String suffix = src.getName().substring(src.getName().lastIndexOf('.') + 1)
        .toLowerCase();
    // 이미지의 확장자를 검색하여 이미지 파일인지 검사
    if (suffix.equals("jpg") || suffix.equals("bmp") || suffix.equals("png")
        || suffix.equals("gif")) {
      srcImg = ImageIO.read(src); // 메모리에 이미지 생성
    } else {
      srcImg = new ImageIcon(src.getAbsolutePath()).getImage();
    }

    int srcWidth = srcImg.getWidth(null); // 원본 이미지 너비 추출
    int srcHeight = srcImg.getHeight(null); // 원본 이미지 높이 추출

    int destWidth = -1, destHeight = -1; // 대상 이미지 크기 초기화

    if (width == SAME) { // 너비가 같은 경우
      destWidth = srcWidth;
    } else if (width > 0) {
      destWidth = width;
    }

    if (height == SAME) { // 높이가 같은 경우
      destHeight = srcHeight;
    } else if (height > 0) {
      destHeight = height;
    }

    // 비율에 따른 크기 계산
    if (width == RATIO && height == RATIO) {
      destWidth = srcWidth;
      destHeight = srcHeight;
    } else if (width == RATIO) {
      double ratio = ((double) destHeight) / ((double) srcHeight);
      destWidth = (int) ((double) srcWidth * ratio);
    } else if (height == RATIO) {
      double ratio = ((double) destWidth) / ((double) srcWidth);
      destHeight = (int) ((double) srcHeight * ratio);
    }

    // 메모리에 대상 이미지 생성
    Image imgTarget = srcImg.getScaledInstance(destWidth, destHeight,
        Image.SCALE_SMOOTH);
    int pixels[] = new int[destWidth * destHeight];
    PixelGrabber pg = new PixelGrabber(imgTarget, 0, 0, destWidth, destHeight,
        pixels, 0, destWidth);
    try {
      pg.grabPixels();
    } catch (InterruptedException e) {
      throw new IOException(e.getMessage());
    }
    BufferedImage destImg = new BufferedImage(destWidth, destHeight,
        BufferedImage.TYPE_INT_RGB);
    destImg.setRGB(0, 0, destWidth, destHeight, pixels, 0, destWidth);

    // 파일에 기록
    ImageIO.write(destImg, "jpg", dest);

    System.out.println(dest.getName() + " 이미지를 생성했습니다.");

    return dest.getName();
  }

  /**
   * FileUpload 1.2 한글 변환
   * 
   * @param str
   * @return
   */
  public static synchronized String encodFileUpload12(String str) {
    String corean = null;
    try {
      corean = new String(str.getBytes("ISO-8859-1"), "UTF-8");
      // corean= new String(str.getBytes("ISO-8859-1"), "KSC5601");
    } catch (Exception e) {
      return corean;
    }
    return corean;
  }

  /**
   * 이미지인지 검사
   * @param filename
   * @return
   */
  public static synchronized boolean isImage(String filename) {
    boolean sw = false;

    if (filename != null) {
      filename = filename.toLowerCase();
      sw = filename.endsWith(".jpg") || filename.endsWith(".jpeg")
          || filename.endsWith(".gif") || filename.endsWith(".png")
          || filename.endsWith(".bmp");
    }

    return sw;
  }

  public static synchronized String trim(String str, int length) {
    String _str = "";
    if (str.length() > length) {
      _str = str.substring(0, length);
    } else {
      _str = str;
    }

    return _str;
  }

  /**
   * 새로운 이미지 파일을 생성합니다.
   * @return 20110601_121003_1 형식의 문자열 리턴
   */
  public static String getNewPDSFilename(String extention){
      String filename = "";
      Random rnd = new Random();
      
      // filename = ""+rnd.nextInt(10)+1;
      String rndStr = String.valueOf((rnd.nextInt(10))+1);
      
      filename = getDate3() + "_" + rndStr + extention;
      
      return filename;
  }
  
}//class end 
