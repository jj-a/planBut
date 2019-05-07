<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="../header.jsp"%>
<!-- 본문시작 mateBbsList.jsp -->
<script type="text/javascript">
function submitFunction() {
	var chatName = $("#chatName").val();
	var chatContent = $("#chatContent").val();
    $.ajax({
    	type: "POST",
    	url: "./submit.do",
    	data: {
    		chatName: chatName,
    		chatContent: chatContent
    	},
    	success: alert("전송 성공")
    });
    $('#chatContent').val('');
}
</script>
<div class="container">
    <div class="container bootstrap snippet">
        <div class="row">
            <div class="col-xs-12">
                <div class="portlet portlet-default">
                    <div class="portlet-heading">
                        <div class="portlet-title">
                            <h4 style="text-align: center;"><i class="fa fa-circle text-green"></i>채팅방</h4>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div id="chat" class="panel-collapse collapse in">
                        <div class="portlet-body chat-widget" style="overflow-y:auto; width:auto; height:300px;">
                            <div class="row">
                                <div class="col-lg-12">
                                    <p class="text-center text-muted small">채팅합시다</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="media">
                                        <a class="pull-left" href="#">
                                            <img class="media-object img-circle" src="../images/man.jpg" style="width:50px; height:50px;">
                                        </a>
                                        <div class="media-body">
                                            <h4 class="media-heading">장민수
                                                <span class="small pull-right">오후10시20분</span>
                                            </h4>
                                        </div>
                                        <p>안녕하세요 장민수에요</p>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="media">
                                        <a class="pull-left" href="#">
                                            <img class="media-object img-circle" src="../images/man.jpg" style="width:50px; height:50px;">
                                        </a>
                                        <div class="media-body">
                                            <h4 class="media-heading">이누리
                                                <span class="small pull-right">오후10시28분</span>
                                            </h4>
                                        </div>
                                        <p>안녕하세요 이누리에요</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="portlet-footer">
						    <div class="row">
						        <div class="form-group col-xs-4">
						            <input style="height: 40px;" type="text" id="chatName" class="form-control" placeholder="이름" maxlength="20">
						        </div>
						    </div>
						    <div class="row" style="height: 90px;">
						      <div class="form-group col-xs-10">
						          <textarea style="height: 80px;" id="chatContent" class="form-control" placeholder="메시지를 입력하세요" maxlength="100"></textarea>
						      </div>
						      <div class="form-group col-xs-2">
						          <button type="button" class="btn btn-default pull-right" onclick="submitFunction()">전송</button>
						          <div class="clearfix"></div>
						      </div>
						    </div>
						</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 본문 끝 -->
<%@ include file="../footer.jsp"%> 