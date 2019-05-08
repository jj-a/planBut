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
    		chatName:chatName,
    		chatContent:chatContent
    	},
    	success: autoAlert("#successMessage", 2000)
    });
    $('#chatContent').val('');
}

function autoAlert(selector, delay) {
	var alert = $(selector).alert();
	alert.show();
	window.setTimeout(function() {alert.hide()}, delay);
}

function chatList(type) {
	$.ajax({
        type: "POST",
        url: "./mateChat.do",
        dataType: "json",
        data: {
            listType: type,
        },
        success: function(data) {
        	var parsed = JSON.parse(data);
        	var result = parsed.result;
        	for(var i = 0; i < result.length; i++) {
        		addChat(result[i][0].value, result[i][1].value, result[i][2].value);   	
        	}
        }
    });
}

function addChat(chatName, chatContent, chatTime) {
	$('#mateChat').append('<div class="row">' + 
			'<div class="col-lg-12">' +
			'<div class="media">' +
			'<a class="pull-left" href="#">' +
			'<img class="media-object img-circle" src="../images/man.jpg" style="width:50px; height:50px;">' +
		    '</a>' +
		    '<div class="media-body">' +
		    '<h4 class="media-heading">' +
		    chatName +
		    '<span class="small pull-right">' +
		    chatTime +
		    '</span>' +
		    '</h4>' +
		    '<p>' +
		    chatContent +
		    '</p>' +
		    '</div>' +
		    '</div>' +
		    '</div>' +
		    '</div>' +
		    '<hr>');
}

function mach() {
    $('#mateChat').css("display","block");
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
                        <div id="mateChat" class="portlet-body chat-widget" style="overflow-y:auto; width:auto; height:500px; display: none;">
                            <c:forEach var="dto" items="${mateChat }">
                                <div class="row">
                                    <div class="col-lg-12">
							            <div class="media">
							             <a class="pull-left" href="#">
							                 <img class="media-object img-circle" src="../images/man.jpg" style="width:50px; height:50px;">
							             </a>
							             <div class="media-body">
							                 <h4 class="media-heading">
							                     ${dto.chatName }
							                 <span class="small pull-right">
							                     ${dto.chatTime } 
							                 </span>
							                 </h4>
							                 <p>
							                     ${dto.chatContent }
							                 </p>
								            </div>
							            </div>
						            </div>
					            </div>
				            <hr>
				            </c:forEach>
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
						      <button type="button" class="btn btn-default pull-right" onclick="mach()">채팅기록</button>
						    </div>
						</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="alert alert-success" id="successMessage" style="display:none;">
        <strong>메시지 전송에 성공하였습니다.</strong>
    </div>
</div>
<!-- 본문 끝 -->
<%@ include file="../footer.jsp"%> 