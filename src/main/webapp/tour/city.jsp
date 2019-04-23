<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file='../header.jsp'%>

<!-- 투어예약 -> 도시 -->
<H1>도시</H1>
<table>
<tr>
<td><input type="button" value="투어홈" onclick="location.href='./tour.do'"></td>
<td><input type="button" value="투어정보" onclick="location.href='./tourinfo.do'"></td>
</tr>
</table>

<style>
	.citylist{
		text-align : center;
		margin : auto;
	}

</style>

<section class="citylist">
<div style="margin-bottom: 15px; padding-left: 12px"
	class="main-carousel flickity-enabled is-draggable" tabindex="0">
	<div class="flickity-viewport" style="height: 367px; touch-action: pan-y;">
		<div class="flickity-slider" style="left: 0px; transform: translateX(0%);">
			<div style="float: left; margin-bottom: 17px; margin-top: 0px; width: 190px; cursor: pointer; position: absolute; left: 0%;"	class="carousel-cell is-selected" aria-selected="true">
				<div style="margin-left: 5px; margin-right: 5px;">
					<div style="height: 350px; overflow: hidden">


						<div style="position: relative;">
							<a href="./tourinfo.do?tour_code=${dto.tour.code }"><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/e107699cd80fe918c3a4072fa4f141ee.jpg" style="border-radius: 5px; width: 100%;" onerror="this.src='/img_v12/img_er.gif'"></a>

							<div style="border-radius: 5px; position: absolute; bottom: 0px; right: 0px; width: 100%; height: 30px; background: linear-gradient(to bottom, rgba(0, 0, 0, 0), rgba(0, 0, 0, 5));">&nbsp;</div>
							<div style="position: absolute; bottom: 3px; right: 10px;">
								<font style="color: #fff; font-size: 12pt;"><i class="fa fa-star" aria-hidden="true"></i> 15147</font>
							</div>
						</div>
						<div style="position: relative; top: 0px; height: 60px; background: #fff; border: 0px solid #e8e8e8;"></div>
						<div style="position: relative; top: -65px; padding-top: 7px">


							<div style="padding-top: 3px; padding-bottom: 0px;">
								<p style="padding-bottom: 0px; margin-bottom: 2px; padding-left: 3px; margin-top: 5px; font-size: 8pt; text-align: left">
									<a href="index_city.asp?region=111011004"><font	style="line-height: 100%; padding-bottom: 0px; margin-bottom: 0px; color: #696969; font-size: 12pt; font-weight: 600">파리</font>
										<br> <font style="color: #a9a9a9; font-size: 10pt">꾸준히 사랑받는 유럽여행 n..</font></a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div style="float: left; margin-bottom: 17px; margin-top: 0px; width: 190px; cursor: pointer; position: absolute; left: 16.41%;" class="carousel-cell" aria-selected="false">
				<div style="margin-left: 5px; margin-right: 5px;">
					<div style="height: 350px; overflow: hidden">
						<div style="position: relative;">
							<a href="exp_detail.asp?expserial=78"><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/f183b5399ca4329728d14a05b4e09fe7.jpg" style="border-radius: 5px; width: 100%;" onerror="this.src='/img_v12/img_er.gif'"></a>
							<div style="border-radius: 5px; position: absolute; bottom: 0px; right: 0px; width: 100%; height: 30px; background: linear-gradient(to bottom, rgba(0, 0, 0, 0), rgba(0, 0, 0, 5));">&nbsp;</div>
							<div style="position: absolute; bottom: 3px; right: 10px;">
								<font style="color: #fff; font-size: 12pt;"><i class="fa fa-star" aria-hidden="true"></i> 5137</font>
							</div>
						</div>
						<div style="position: relative; top: 0px; height: 60px; background: #fff; border: 0px solid #e8e8e8"></div>
						<div style="position: relative; top: -65px; padding-top: 7px">
							<div style="padding-top: 3px; padding-bottom: 0px;">
								<p style="padding-bottom: 0px; margin-bottom: 2px; padding-left: 3px; margin-top: 5px; font-size: 8pt; text-align: left">
									<a href="exp_detail.asp?expserial=78"><font	style="line-height: 100%; padding-bottom: 0px; margin-bottom: 0px; color: #696969; font-size: 12pt; font-weight: 600">몽생미셸</font>
										<br> <font style="color: #a9a9a9; font-size: 10pt">매혹적인 신비의 수도원</font></a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div style="float: left; margin-bottom: 17px; margin-top: 0px; width: 190px; cursor: pointer; position: absolute; left: 32.82%;" class="carousel-cell" aria-selected="false">
				<div style="margin-left: 5px; margin-right: 5px;">
					<div style="height: 350px; overflow: hidden">

						<div style="position: relative;">
							<a href="exp_detail.asp?expserial=31"><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/334f3b7dfa643495567e86d448bb2549.jpg"
								style="border-radius: 5px; width: 100%;" onerror="this.src='/img_v12/img_er.gif'"></a>

							<div style="border-radius: 5px; position: absolute; bottom: 0px; right: 0px; width: 100%; height: 30px; background: linear-gradient(to bottom, rgba(0, 0, 0, 0), rgba(0, 0, 0, 5));">&nbsp;</div>
							<div style="position: absolute; bottom: 3px; right: 10px;">
								<font style="color: #fff; font-size: 12pt;"><i class="fa fa-star" aria-hidden="true"></i> 1678</font>
							</div>
						</div>
						<div style="position: relative; top: 0px; height: 60px; background: #fff; border: 0px solid #e8e8e8"></div>
						<div style="position: relative; top: -65px; padding-top: 7px">


							<div style="padding-top: 3px; padding-bottom: 0px;">
								<p style="padding-bottom: 0px; margin-bottom: 2px; padding-left: 3px; margin-top: 5px; font-size: 8pt; text-align: left">
									<a href="exp_detail.asp?expserial=31"><font	style="line-height: 100%; padding-bottom: 0px; margin-bottom: 0px; color: #696969; font-size: 12pt; font-weight: 600">지베르니</font>
										<br> <font style="color: #a9a9a9; font-size: 10pt">모네의	명작,&lt;수련&gt;의 배경</font></a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div style="float: left; margin-bottom: 17px; margin-top: 0px; width: 190px; cursor: pointer; position: absolute; left: 49.22%;" class="carousel-cell" aria-selected="false">
				<div style="margin-left: 5px; margin-right: 5px;">
					<div style="height: 350px; overflow: hidden">

						<div style="position: relative;">
							<a href="exp_detail.asp?expserial=32"><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/e7f22c23b4aad29705d17d64d9064709.jpg"
								style="border-radius: 5px; width: 100%;" onerror="this.src='/img_v12/img_er.gif'"></a>
							<div style="border-radius: 5px; position: absolute; bottom: 0px; right: 0px; width: 100%; height: 30px; background: linear-gradient(to bottom, rgba(0, 0, 0, 0), rgba(0, 0, 0, 5));">&nbsp;</div>
							<div style="position: absolute; bottom: 3px; right: 10px;">
								<font style="color: #fff; font-size: 12pt;"><i class="fa fa-star" aria-hidden="true"></i> 608</font>
							</div>
						</div>
						<div style="position: relative; top: 0px; height: 60px; background: #fff; border: 0px solid #e8e8e8"></div>
						<div style="position: relative; top: -65px; padding-top: 7px">
							<div style="padding-top: 3px; padding-bottom: 0px;">
								<p style="padding-bottom: 0px; margin-bottom: 2px; padding-left: 3px; margin-top: 5px; font-size: 8pt; text-align: left">
									<a href="exp_detail.asp?expserial=32"><font	style="line-height: 100%; padding-bottom: 0px; margin-bottom: 0px; color: #696969; font-size: 12pt; font-weight: 600">오베르
											쉬르 우아즈</font> <br> <font style="color: #a9a9a9; font-size: 10pt">빈센트 반 고흐가 잠든 곳</font></a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div style="float: left; margin-bottom: 17px; margin-top: 0px; width: 190px; cursor: pointer; position: absolute; left: 65.63%;" class="carousel-cell" aria-selected="false">
				<div style="margin-left: 5px; margin-right: 5px;">
					<div style="height: 350px; overflow: hidden">

						<div style="position: relative;">
							<a href="exp_detail.asp?expserial=33"><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/f2152f3f5c9275ae6bfa2be517737597.jpg"
								style="border-radius: 5px; width: 100%;" onerror="this.src='/img_v12/img_er.gif'"></a>
							<div style="border-radius: 5px; position: absolute; bottom: 0px; right: 0px; width: 100%; height: 30px; background: linear-gradient(to bottom, rgba(0, 0, 0, 0), rgba(0, 0, 0, 5));">&nbsp;</div>
							<div style="position: absolute; bottom: 3px; right: 10px;">
								<font style="color: #fff; font-size: 12pt;"><i class="fa fa-star" aria-hidden="true"></i> 794</font>
							</div>
						</div>
						<div style="position: relative; top: 0px; height: 60px; background: #fff; border: 0px solid #e8e8e8"></div>
						<div style="position: relative; top: -65px; padding-top: 7px">
							<div style="padding-top: 3px; padding-bottom: 0px;">
								<p style="padding-bottom: 0px; margin-bottom: 2px; padding-left: 3px; margin-top: 5px; font-size: 8pt; text-align: left">
									<a href="exp_detail.asp?expserial=33"><font style="line-height: 100%; padding-bottom: 0px; margin-bottom: 0px; color: #696969; font-size: 12pt; font-weight: 600">퐁텐블로</font>
										<br> <font style="color: #a9a9a9; font-size: 10pt">숲속의	작은 베르사유 궁전</font></a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div style="float: left; margin-bottom: 17px; margin-top: 0px; width: 190px; cursor: pointer; position: absolute; left: 82.04%;" class="carousel-cell" aria-selected="false">
				<div style="margin-left: 5px; margin-right: 5px;">
					<div style="height: 350px; overflow: hidden">

						<div style="position: relative;">
							<a href="exp_detail.asp?expserial=34"><img src="https://d3b39vpyptsv01.cloudfront.net/photo/1/2/a23ba652973fbac8874a62804f02716a.jpg"
								style="border-radius: 5px; width: 100%;" onerror="this.src='/img_v12/img_er.gif'"></a>
							<div style="border-radius: 5px; position: absolute; bottom: 0px; right: 0px; width: 100%; height: 30px; background: linear-gradient(to bottom, rgba(0, 0, 0, 0), rgba(0, 0, 0, 5));">&nbsp;</div>
							<div style="position: absolute; bottom: 3px; right: 10px;">
								<font style="color: #fff; font-size: 12pt;"><i class="fa fa-star" aria-hidden="true"></i> 176</font>
							</div>
						</div>
						<div style="position: relative; top: 0px; height: 60px; background: #fff; border: 0px solid #e8e8e8"></div>
						<div style="position: relative; top: -65px; padding-top: 7px">


							<div style="padding-top: 3px; padding-bottom: 0px;">
								<p style="padding-bottom: 0px; margin-bottom: 2px; padding-left: 3px; margin-top: 5px; font-size: 8pt; text-align: left">
									<a href="exp_detail.asp?expserial=34"><font	style="line-height: 100%; padding-bottom: 0px; margin-bottom: 0px; color: #696969; font-size: 12pt; font-weight: 600">바르비종</font>
										<br> <font style="color: #a9a9a9; font-size: 10pt">밀레의&lt;이삭줍는사람들&gt; 배경</font></a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div style="clear: both; position: absolute; left: 98.45%;"	aria-selected="false"></div>
		</div>
	</div>
	<button class="flickity-prev-next-button previous" type="button" disabled="" aria-label="previous">
		<svg viewBox="0 0 100 100">
			<path d="M 10,50 L 60,100 L 70,90 L 30,50  L 70,10 L 60,0 Z" class="arrow"></path></svg>
	</button>
	<button class="flickity-prev-next-button next" type="button" aria-label="next">
		<svg viewBox="0 0 100 100">
			<path d="M 10,50 L 60,100 L 70,90 L 30,50  L 70,10 L 60,0 Z" class="arrow" transform="translate(100, 100) rotate(180) "></path></svg>
	</button>
</div>
</section>

<%@ include file='../footer.jsp'%>