<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Date" %>
<%@include file="../header.jsp"%>

<script src="${pageContext.request.contextPath}/js/moment.js"></script>	<!-- 날짜/시간 라이브러리 -->

<style>
/* Set the size of the div element that contains the map */
#map {
	/* 지도 크기 지정 */
	height: 88vh;	/* 뷰포트 - 화면 높이의 88% 비율 */
	width: 100%;
}

.root-info {
	height: 88vh;
}

#legend {
	font-family: Arial, sans-serif;
	background: #fff;
	padding: 10px;
	margin: 10px;
	border: 3px solid #000;
}

#legend h3 {
	margin-top: 0;
}

#legend img {
	vertical-align: middle;
}

div.row div {
padding-left: 0px  !important;
padding-right: 0px !important;
}


</style>

<!-- Contents -->

<div class="container-fluid non-scrollable-menu">
	<div class="row">


		<!-- 좌측 메뉴 -->
		<div class="sub-menu col-xs-4 col-md-3">
		
			<!-- 플래너 정보 출력 -->
			<ul class="plan-info list-group" style="margin-bottom: 0;">
				<li class="list-group-item">
					<h3>${article.subject }</h3>
					<span>여행 시작일: ${fn:substring(article.s_date, 0,10)}</span> 
					<span>인원: ${article.people }</span>
					<span>아이디: ${article.m_id }</span>
					<span>플래너코드: ${article.plan_code }</span>
				</li>
			</ul>
					
			
			<!-- 플래너 루트 리스트 -->
			<div class="scrollable-menu">
				<ul class="root-info list-group"  id="ul">
					<!-- 저장된 도시계획 리스트 -->
					<c:forEach var="cp" items="${cplist }">
					<li class="list-group-item" id="cityli">
						
						<%-- <!-- 이동일 계산 -->
						
						<!-- 하루 단위 숫자 -->
						<fmt:parseNumber var="dayUnit" value="${1000*60*60*24 }" /> 
						<!-- 시작일 -->
						<c:set var="s_date" value="${fn:substring(cp.s_date, 0,10)}" property="time" />
						<fmt:parseDate var="s_date" value="${s_date}" pattern="yyyy-MM-dd" /> <!-- String to Date -->
						<!-- 최종 포맷 -->
						<fmt:formatDate var="s_date" value="${s_date}" pattern="yyyy-MM-dd"  /> <!-- Date to String -->
						<fmt:formatDate var="e_date" value="${e_date}" pattern="yyyy-MM-dd" /> <!-- Date to String -->
						
						<!-- 이동일 계산 --> --%>
						
						<h3 class="root-city" id="ct_name">${cp.city.ct_name }</h3> 
						<span class="root-day">
						<select id="day" class="daySelector" onchange="changeCP()">
							<c:forEach var="i" begin="1" end="10" step="1">
						        <c:choose>
									<c:when test="${i eq cp.day }">
								        <option value="${i}" selected>${i}</option>
									</c:when>						
									<c:otherwise>									
								        <option value="${i}">${i}</option>
									</c:otherwise>
								</c:choose>
							</c:forEach>
			    		</select>박&nbsp;
						</span>
				   <%-- <span class="root-date">${fn:substring(s_date, 5,10)} ~ </span>  --%>
						<span class="root-date">${fn:substring(cp.s_date,0,10)} ~ </span><br />
						<span class="root-transport">
						<select id="trans">
							<c:set var="array">기차,항공,버스,페리,기타</c:set>
							
							<c:forEach var="item" items="${array}" varStatus="idx">
								<c:choose>
									<c:when test="${cp.trans eq item  }">
							        	<option value="${item}" selected>${item}</option>
									</c:when>
									<c:otherwise>									
								        <option value="${item }">${item }</option>
									</c:otherwise>
								</c:choose>							 
							</c:forEach> 
					    </select>						
						</span>
						<span id="ct_code" style="display: none;">${cp.ct_code }</span>
						
						<c:choose>
							<c:when test="${cp.rm_ok eq 'Y'  }">
								<span>동행추천허용<input type="checkbox" id="rm_ok" checked></span>						
							</c:when>
							<c:otherwise>									
								<span>동행추천허용<input type="checkbox" id="rm_ok"></span>												
							</c:otherwise>
						</c:choose>&nbsp;
						<span id="lat" style="display: none;">${cp.city.lat }</span>
						<span id="lng" style="display: none;">${cp.city.lng }</span>
						<span id="cp_code" style="display: none;" value="${cp.cp_code }">${cp.cp_code }</span>
						<button onclick="delCP(this)">제거</button>
					</li>
					</c:forEach>
					
					<!-- 샘플 -->

<!--
						<span class="root-transport"></span>
					</li>
					<li class="list-group-item">
						<h3 class="root-city">파리</h3> 
						<span class="root-day">3박</span> 
						<span class="root-date">MM-DD ~ MM-DD</span> 
						<span class="root-transport">[기차 이동]</span>
					</li>
					<li class="list-group-item">
						<h3 class="root-city">뮌헨</h3> 
						<span class="root-day">3박</span> 
						<span class="root-date">MM-DD ~ MM-DD</span> 
						<span class="root-transport">[항공 이동]</span>
					</li>
					<li class="list-group-item">
						<h3 class="root-city">베를린</h3> 
						<span class="root-day">3박</span> 
						<span class="root-date">MM-DD ~ MM-DD</span> 
						<span class="root-transport">[버스 이동]</span>
					</li>
					<li class="list-group-item">
						<h3 class="root-city">프라하</h3> 
						<span class="root-day">3박</span> 
						<span class="root-date">MM-DD ~ MM-DD</span> 
						<span class="root-transport">[기차 이동]</span>
					</li>
					-->
				</ul>
			</div>


			<!-- 경로 부분 sample -->
			<div id="cityblock1" class="cityblock" style="position: relative; top: 0px; left: 0px;">
				<p class="trsinfo">
				<div style="padding-top: 0px; padding-bottom: 0px">
					<div style="float: left; width: 29px; height: 40px; border-right: 3px solid #3ad195;">&nbsp;</div>
					<div style="float: left; width: 150px; height: 40px; padding-top: 10px; margin-left: -25px;">
						<div
							style="border-radius: 3px; display: inline-block; text-align: center; padding-top: 2px; padding-bottom: 2px; margin-right: 3px; width: 50px; background: #3ad195; cursor: pointer;"
							class="div_btnTrsTool" onclick="showTrsTool('181071004','181071001','2019-05-22',1)">
							<font style="font-size: 9pt; color: #fff" id="trstype_txt_1">버스 <i class="fa fa-chevron-circle-down"></i></font>
						</div>
						&nbsp;<font style="font-size: 8pt; color: #c0c0c0"></font>
					</div>
					<div style="clear: both"></div>
				</div>
				</p>
				<div class="cityinfo">
					<div style="width: 29px; border-right: 3px solid #3ad195; height: 7px;"></div>
					<input type="hidden" class="cityserial" value="181071001">
					<div width="100%;overflow-x:hidden">
						<div
							style="float: left; width: 53px; height: 53px; padding-left: 7px; background: #fff; padding-top: 13px; border-radius: 100px; border: 3px solid #3ad195; cursor: pointer"
							class="div_mngSlp" onclick="mngSlp('아부다비','181071001',0,1)">
							<a class="a_mngSlp" href="javascript:mngSlp('아부다비','181071001',0,1)"><font style="color: #696969; font-size: 10pt; font-weight: bold"
								class="nights">1박 <i class="fa fa-angle-down"></i></font></a>
						</div>
						<div style="float: left; width: 215px; padding-left: 10px; padding-top: 7px;">
							<div style="float: left; width: 148px">
								<div>
									<font class="stubby_s_black"> 아부다비</font>&nbsp;<a class="btnDel" href="javascript:delCity(1)"><font
										style="font-size: 9pt; color: #c0c0c0"><i class="fa fa-times-circle"></i></font></a>
								</div>
								<div class="date_in_out">5월23일(목)~24일(금)</div>
							</div>
							<div style="float: left; padding-right: 5px; width: 57px;">
								<div id="cp_0"
									style="height: 52px; margin-top: -8px; text-align: center; padding-top: 3px; padding-bottom: 3px; border: 1px solid #efefef; background: #fff; border-radius: 8px;"
									onclick="showBucketList('0','아부다비','181071001',0)">
									<div>
										<font style="font-size: 19pt; color: #3ad195" id="cp_heart_0"><i class="fa fa-info-circle" aria-hidden="true"></i></font>
									</div>
									<div style="margin-top: -8px;">
										<span id="span_schd_cnt_0" style="font-size: 8pt; display: none;">0</span>
									</div>
								</div>
							</div>
						</div>
						<div style="clear: both"></div>
					</div>
					<div style="width: 29px; border-right: 3px solid #3ad195; height: 7px;"></div>
				</div>
			</div>


		</div>	<!-- 좌측메뉴 end -->

		<!-- 우측 컨텐츠 -->
		<div class="row-fluid col-xs-8 col-md-9">
		
			<!-- 상단 메뉴 -->
			<div class="btn-group btn-group-justified" role="group" aria-label="Justified button group">
				<a href="${pageContext.request.contextPath}/plan/plan.do?plan_code=${article.plan_code}" class="btn btn-primary" role="button">루트</a>
				<a href="${pageContext.request.contextPath}/plan/calendar.do?plan_code=${article.plan_code}" class="btn btn-default" role="button">일정</a> 
				<a class="btn btn-default" role="button"></a>
				<c:choose>
					<c:when test="${session_m_id!=null}">	<!-- 로그인 시 -->
					<a href="javascript:creatcp('${article.plan_code}');" class="btn btn-success" role="button">저장</a>

					<%-- ${pageContext.request.contextPath}/plan/create.do?plan_code=${article.plan_code} --%>
					<a href="${pageContext.request.contextPath}/plan/course.do?plan_code=${article.plan_code}" class="btn btn-info" role="button">다음단계로</a>
<%-- 					<a href="${pageContext.request.contextPath}/plan/course.do?plan_code=${article.plan_code}" class="btn btn-info" role="button" onclick="creatcp('${article.plan_code}');">다음단계로</a> --%>
					</c:when>
					<c:when test="${empty session_m_id}">	<!-- 비회원일 시 -->
					<a class="btn btn-default" role="button"></a>
					<a href="#loginmodal" class="btn btn-danger" role="button">
						<span class="glyphicon glyphicon-lock"></span>&nbsp;비회원으로 작업중
					</a>
					</c:when>
				</c:choose>
			</div>


			<!-- 컨텐츠 -->
			<div class="contents">

				<!-- Maps -->

				<div id="map"></div>
				<!-- 맵 -->
				<div id="floating-panel">
					<input onclick="removeLine();" type="button" value="Remove line">
					<input onclick="addLine();" type="button" value="Restore line">
				</div>
				<!-- <div id="legend">
					<h3>Legend</h3>
				</div>  범례 달꺼면 푸세요-->

				<!-- Maps end -->

			</div>
		</div>
	</div>
</div>



<!-- 플래너 생성 창 -->
<div id="newplanner" class="modalDialog">
	<div>
		<h2>새 플래너 생성</h2>
		<form name="planFrm" method="post" action="${pageContext.request.contextPath}/plan/plan.do" onsubmit="">
			<input type="hidden" name="m_id" value="${session_m_id }">
			<div>
				<label for="">플래너 명</label>&nbsp;<input type="text" name="subject" id="subject" placeholder="ex) 나의 여행 플래너" required>
			</div>
			<div>
				<label for="">여행 시작일</label>&nbsp;<input type="text" name="s_date" id="s_date" placeholder="ex) 2019-05-01" required>
			</div>
			<div>
				<label for="">인원</label>&nbsp;<input type="text" name="people" id="people" placeholder="ex) 1" required>
			</div>
			<p>
				<input type="submit" value="플래너 생성">
				<input type="button" value="취소" onclick="javascript:history.go(-2)">
			</p>
		</form>
	</div>
</div>


<!-- Script 스크립트 (map, etc)-->

<script>
	//http://localhost:9090/planbut/plan/planTest.do
	var map;
	var linePath = new Array();//polyline 그릴 좌표 배열
	var flightPath; //polyline
	var cityDTOs = new Array(); //JSON 형식받을 Array (도시들 의 정보)
	var infowindowCons = new Array();
	
	<c:forEach var="cityDTO" items="${CityDTOs }">//마커찍을 전체 도시들 정보 Array에 저장
	var cityDTO = new Object();
	cityDTO.ct_name = "${cityDTO.ct_name}";
	cityDTO.ct_code = "${cityDTO.ct_code}";
	cityDTO.c_code = "${cityDTO.c_code}";
	cityDTO.lat = "${cityDTO.lat}";
	cityDTO.lng = "${cityDTO.lng}";
	cityDTOs.push(cityDTO);
	</c:forEach>
	//CityDTOs.lastindexOf();
	//alert(typeof(cityDTOs)); 
	//alert(cityDTOs[1].ct_name ); 
	//alert(cityDTOs[1].lat ); 
	//alert(cityDTOs[1].lng ); 
	
	

	function initMap() {
		map = new google.maps.Map(document.getElementById('map'), {//지도에 띄우기
			zoom : 4,
			/* 줌옵션 
			1 : 세계
			5 : 대륙 / 대륙
			10 : 도시
			15 : 거리
			20 : 건물 
			 */
			center : new google.maps.LatLng(48.138082, 16.363455), //유럽 중앙쯤인 어딘가 48.138082, 16.363455
			mapTypeId : 'roadmap' //roadmap 기본값 생략 가능 roadmap,satellite,satellite,terrain  
		});//map 옵션 끝 ----------------------------

		
		var icon = './pic/icon.png';
		cityDTOs.forEach(function(cityDTO) {
			/* xy=  {
					lat : cityDTO.lat,
					lng : cityDTO.lng
				}; */
			
			var marker = new google.maps.Marker({
				position : new google.maps.LatLng(cityDTO.lat,
						cityDTO.lng), //이형식으로도 가능
				//position : feature.position,// 위치 좌표
				//position : xy, //이형식으로도 가능
				icon : icon, //아이콘 경로
				map : map, //어느 지도에 띄울지 지정
				info : cityDTO.ct_name
			});
	
			var content = cityDTO.ct_name
					+ '<br /> <input type="button" value="추가" onclick="addCity(\''
					+ infowindowCons.length + '\',\'' +  cityDTO.ct_code + '\',\''+ cityDTO.ct_name + '\',\'' + cityDTO.lat
					+ '\',\'' + cityDTO.lng+ '\');" />';
			var infowindowCon = new google.maps.InfoWindow({
				content : content
			});
			infowindowCons.push(infowindowCon);
			//infowindowCons.lastIndexOf();
			//alert(infowindowCons.length);
			
			marker.addListener('click', function() {//마커마다 클릭이벤트
				map.setCenter(marker.getPosition());
				infowindowCon.open(map, marker);
			});

			// linePath.push(new google.maps.LatLng(cityDTO.lat,cityDTO.lng));
		});// CITY들 마커 띄우기 끝
		
		//플래너 에 입력되어있는 도시경로 가져와서 지도에 띄우기
		<c:forEach var="cp" items="${cplist }"> 
		linePath.push(new google.maps.LatLng(${cp.city.lat}, ${cp.city.lng}));
		addLine();
		</c:forEach>
	}//initMap 끝
	
	

	function addLine() {
		if (linePath.length>=2) {
			removeLine();
		}//if end
		
		var lineSymbol = {
			path: google.maps.SymbolPath.FORWARD_CLOSED_ARROW
		};
			
		flightPath = new google.maps.Polyline({
			path : linePath,
			strokeColor : "red",//"#000000", 
			strokeOpacity : 0.8,  // 선의 불투명도 
			strokeWeight : 2, // 선의 두께 
			//fillColor : "#0000FF",
			//fillOpacity : 0.4,
			icons: [{
			    icon: lineSymbol,
			    offset: '100%'
			}]
		});

		flightPath.setMap(map);
	}//addLine end

	function removeLine() {
		flightPath.setMap(null);
		//flightPath = null;
	}//removeLine end

	 
	//마커에서 추가버튼눌렀을떄 여행지 리스트에 추가
	function addCity(idx, ct_code, ct_name, lat, lng) {
    	/* var sd = '${fn:substring(article.s_date, 0,10)}';
    	var mo = moment("${article.s_date}").format("YYYY-MM-DD").toString() ;
    	var ad = moment("${article.s_date}").add('days', 5).format("YYYY-MM-DD").toString() ;
    	//alert(sd+"\n"+mo+"\n"+ad);
    	*/
		var lis =  $('#ul').children();		
		var daytoadd = 0;
		var s_date;
		var e_date;
		//alert(lis.length);
    	if (lis.length==0) {
	    	s_date= '${fn:substring(article.s_date, 0,10)}';
	    	e_date= moment("${article.s_date}").add('days', 1).format("YYYY-MM-DD").toString();
			//alert("s_date = "+ s_date);
		} else {			
			lis.each(function(idx,li) {
					//alert( $(this).find("#day option:selected").val());
					daytoadd+=parseInt($(this).find("#day option:selected").val());
					s_date=moment("${article.s_date}").add('days', daytoadd).format("YYYY-MM-DD").toString();
					e_date=moment(s_date).add('days', 1).format("YYYY-MM-DD").toString();
			});	//lis.each end

		}
    	
		var $li = $('<li class="list-group-item" id="cityli">\n'+
			    '<h3 class="root-city" id="ct_name">'+ct_name+'</h3>\n'+
			    '<span class="root-day">\n'+
			    '<select id="day" class="daySelector" onchange="changeCP()">\n'+
			        '<option value="1">1</option>\n'+
			        '<option value="2">2</option>\n'+
			        '<option value="3">3</option>\n'+
			        '<option value="4">4</option>\n'+
			        '<option value="5">5</option>\n'+
			        '<option value="6">6</option>\n'+
			        '<option value="7">7</option>\n'+
			        '<option value="8">8</option>\n'+
			        '<option value="9">9</option>\n'+
			        '<option value="10">10</option>\n'+
			    '</select>\n'+
			    '박 &nbsp; \n '+	
			    '</span>\n'+
			    '<span class="root-date">'+s_date+' ~ '+e_date+'</span><br />\n'+
			    '<span class="root-transport">\n'+
			    '<select id="trans">\n'+
			        '<option value="tr">기차</option>\n'+
			        '<option value="ap">항공</option>\n'+
			        '<option value="bs">버스</option>\n'+
			        '<option value="fr">페리</option>\n'+
			        '<option value="et">기타</option>\n'+
			    '</select>\n'+
			    '</span>\n'+
			    '<span id="ct_code" style="display: none;">'+ct_code+'</span>\n'+
			    '<span>동행추천허용<input type="checkbox" id="rm_ok"></span>&nbsp;\n'+	
			    '<span id="lat" style="display: none;">'+lat+'</span>\n'+	
			    '<span id="lng" style="display: none;">'+lng+'</span>\n'+   
			    '<button onclick="delCP(this)">제거</button>'+			    
			'</li>'); 
		//alert(lat);
		//alert(lng);
		
		
		$("#ul").append($li);
		
		linePath.push(new google.maps.LatLng(lat, lng));
		//alert(linePath);
		addLine();
		
	}//addCity() end
	
	
	//제거버튼 눌렀을 때
	function delCP(btn) {// list에서 CP 하나 제거
		//alert(btn.parentElement.children.length);
		//alert(btn.parentElement.children);
		//alert(btn.parentElement.childNodes);
		/* 
		for (i = 0; i <btn.parentElement.children.length; i++) {
			//alert(btn.parentElement.children[i]);
		  }
		
		 alert(btn.parentElement.children[8]);
		 alert(btn.parentElement.children[9]);
		 alert(btn.parentElement.children[10]);
		  */
		
		/* valu.forEach(function(element, index, array) {
			 console.log(element);
			 alert(element);
		}); */
		
		if (btn.parentElement.children[9].childNodes[0].nodeValue=="제거") {
				alert("목록에서 제거했습니다."); //저장 안한거 지울때	
				btn.parentElement.remove();
		}else{//저장되어있던거 지울때
			var cp_code = btn.parentElement.children[9].childNodes[0].nodeValue;
				var con = confirm("제거를 진행하시면 저장되어있는 세부일정이 함께 제거됩니다. \n제거를 진행하시겠습니까?");
				if (con==true) {
					$.ajax({
					       url: "${pageContext.request.contextPath}/plan/delCP.do",
					       type:'POST',
					       //dataType:"JSON",
					       data: {cp_code:cp_code},
					       success:function(result){
					       	if (result==1) {
					            alert("제거 되었습니다.");	
							}else{
					            alert("제거에 실패 하였습니다.");						
							}
					       },
					       error:function(jqXHR, textStatus, errorThrown){
					           alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
					           //self.close();
					       }
						 });
						
						btn.parentElement.remove();
				}//if end
				
			
		}//if end
		
		/* 
			  console.log(btn.parentElement.childNodes[31].nodeValue);
		//alert(btn.parentElement.childNodes[31].nodeValue);
		//alert(btn.parentElement.childen);
		
		console.log(btn.parentElement.childNodes[0].nodeValue);
		console.log(btn.parentElement.childNodes[1].nodeValue);
		console.log(btn.parentElement.childNodes[2].nodeValue);
		console.log(btn.parentElement.childNodes[3].nodeValue);
		console.log(btn.parentElement.childNodes[4].nodeValue);
		console.log(btn.parentElement.lastChild.previousSibling.previousSibling.previousSibling.nodeValue);
		 */ 
		changeCP();
	}//delCP() end
	
	function changeCP() {// list 바뀌면 폴리라인 다시호출		
		
		
		removeLine();//폴리라인 지우기
		linePath = new Array();//폴리라인그릴 경로Array초기화
		var s_date;
		var e_date;
		var endcnt=0;
		var day;
		
		var lis =  $('#ul').children();		
		lis.each(function(idx,li) {
			linePath.push(new google.maps.LatLng($(this).children().eq(7).text(), $(this).children().eq(8).text()));	
			day= parseInt($(this).find("#day option:selected").val());
			//alert(day);
			if (idx==0) {
				s_date= '${fn:substring(article.s_date, 0,10)}';
		    	e_date= moment("${article.s_date}").add('days', day).format("YYYY-MM-DD").toString();
				endcnt+=day;
		    	$(this).children().eq(2).text(s_date+' ~ '+e_date);
				
			}else{
				s_date=moment("${article.s_date}").add('days', endcnt).format("YYYY-MM-DD").toString();
				e_date=moment("${article.s_date}").add('days', endcnt+day).format("YYYY-MM-DD").toString();
				
				endcnt += day
		    	$(this).children().eq(2).text(s_date+' ~ '+e_date);
				
			}		
				
		});	//lis.each end
		
        addLine();//폴리라인 그리기
	}//delCP() end초뭏
	
	/* 저장버튼눌렀을떄 1단계 계획 저장 */	
	function creatcp(plan_code) {//추가버튼 눌렀을
		
		var params= new Array;
		var jsonData;
	
		//alert(plan_code);
		
		var lis =  $('#ul').children();
		//alert(lis.length);
		
		lis.each(function(idx,li) {
			//alert($(this).children().eq(0).text());//베를린
			//alert($(this).find("#day option:selected").val());//123456박
			//alert($(this).children().eq(2).text());//MM-DD ~ MM-DD
			//alert($(this).find("#trans option:selected").val());//이동수단 code
			//alert($(this).children().eq(4).text());//ct_code
			//alert($(this).find("#rm_ok ").is(":checked")? 'Y': 'N');//동행

			var param =  new Object();
			param.plan_code  = plan_code;
			param.ct_code    = $(this).children("#ct_code").text();//
			param.order_code = idx; 
			param.day        = $(this).find("#day option:selected").val(); 
			param.trans      = $(this).find("#trans option:selected").text(); 
			param.s_date     = $(this).children().eq(2).text().substring(0,10);
			param.rm_ok      = $(this).find("#rm_ok ").is(":checked")? 'Y': 'N';
			param.cp_code    = $(this).children().eq(9).text();
			
			//alert($(this).children().eq(2).text().substring(0,10));
			
			
			params.push(param);
			//alert($(this).children().eq(7).text());
			//alert($(this).children().eq(8).text());
			jsonData = JSON.stringify(params) ;
			//alert(jsonData);
			//alert(JSON.parse(jsonData));
			/* 
			[{"plan_code":"P002","ct_code":"AM","order_code":0,"day":"1","trans":"tr","s_date":"2016-05-20","rm_ok":"N"},
			{"plan_code":"P002","ct_code":"PR","order_code":1,"day":"1","trans":"tr","s_date":"2016-05-20","rm_ok":"N"}]
			*/
		});	//lis.each end
		
		$.ajax({
	        url: "${pageContext.request.contextPath}/plan/create.do",
	        type:'POST',
	        //dataType:"JSON",
	        data: {json:jsonData},
	        success:function(result){
	        	if (result==1) {
		            alert("저장되었습니다.");	
				}else{
		            alert("저장에 실패 하였습니다.\n 최소한 하나는 도시를 추가해 주세요");						
				}
	        },
	        error:function(jqXHR, textStatus, errorThrown){
	            alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
	            //self.close();
	        }
	    });
		
	}//creatcp() end
	

	
	
</script>

<!-- google maps api -->
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA4ezotcovgaCtiKJnCsW5dGuXUYsLm8wo&callback=initMap&region=KR" >
</script>


<script> 
//////////////////// 부가 기능 Script ////////////////////

/* 플래너 추가 폼 (newplan) 동작 제어 */
$(function(){
	var plancode='${article.plan_code}';
	var m_id='${session_m_id}';
	if(plancode==""&&m_id!=""){
		location.href="#newplanner";
	}
});

/* 화면 스크롤 제거 */
$(function(){
	//$("body").css("overflow", 'hidden');
});

</script>

<!-- Cityplan Soctable ----------------------->
<script src="../js/jquery-ui.min.js"></script>
<script src="../js/moment.js"></script>
<script>
$( function() {
  $( "#ul" ).sortable({
	  update: function(event, ui) {
		  changeCP();
      }
  });
  $( "#ul" ).disableSelection();
})
/* 
$( ".daySelector" ).change(function() {
  changeCP();
  alert( "Handler for .change() called." );
});
 */
</script>
<!-- Cityplan Soctable end-------------------->

<!-- end Contents -->


<%@include file="../footer.jsp"%>
