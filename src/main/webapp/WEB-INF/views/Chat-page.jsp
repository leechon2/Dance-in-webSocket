<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html>
  <head>
    <title>${sessionScope.loginId}</title>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
      integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
      crossorigin="anonymous"/>
      <link href="https://bootsnipp.com/snippets/nNg98/maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/CSS/chat.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css"/>
    <script
      type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.js"
    ></script>
  </head>
  <!--Coded With Love By Mutiullah Samim-->
  <body>
    <div class="container-fluid h-100">
      <div class="row justify-content-center h-100">
        <div class="col-md-4 col-xl-3 chat">
          <div class="card mb-sm-3 mb-md-0 contacts_card">
            <div class="card-header">
              <div class="input-group">
                <input
                  type="text"
                  placeholder="Search..."
                  name=""
                  class="form-control search"
                />
                <div class="input-group-prepend">
                  <span class="input-group-text search_btn"
                    ><i class="fas fa-search"></i
                  ></span>
                </div>
              </div>
            </div>
            <div class="card-body contacts_body">
             <!-- 대화상대 목록 -->
			<c:forEach var="member" items="${machingList}">
			    <c:choose>
			        <c:when test="${member.user_id ne sessionScope.loginId}">
			            <div class="contacts" onclick="selectchattarget(event)" id="${member.user_id}">
			                <div class="active">
			                    <div class="d-flex bd-highlight">
			                        <div class="img_cont">
			                            <img src="resources/profileimg/${member.user_img }" class="rounded-circle user_img"/>
			                            <span class="online_icon" style="border: 1px solid white;"></span>
			                        </div>
			                        <div class="user_info" style="display: flex; flex-direction: column; align-items: flex-end;">
			                            <span class="nickname">${ member.user_nickname }</span>
			                            <p>online</p>
			                        </div>
			                    </div>
			                </div>
			            </div>
			        </c:when>
			        <c:otherwise>
			        	<div class="me" id="${member.user_id}" style="display:none;">
			                <div class="active">
			                    <div class="d-flex bd-highlight">
			                        <div class="img_cont">
			                            <img src="resources/profileimg/${member.user_img }" class="rounded-circle user_img"/>
			                            <span class="online_icon" style="border: 1px solid white;"></span>
			                        </div>
			                        <div class="user_info" style="display: flex; flex-direction: column; align-items: flex-end;">
			                            <span class="nickname">${ member.user_nickname }</span>
			                            <p>online</p>
			                        </div>
			                    </div>
			                </div>
			            </div>
			        </c:otherwise>
			    </c:choose>
			</c:forEach>

    			<!-- /대화상대 목록 -->
    			
    			
    		</div>
            <div class="card-footer"></div>
          </div>
        </div>
        <div class="col-md-8 col-xl-6 chat">
          <div id = "card" class="card">
            <div class="card-header msg_head">
            </div>
            <div class="card-body msg_card_body" id="cardbody">
            </div>
            <div class="card-footer">
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
  	<!-- 웹소켓 -->
  	<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
  	<script type="text/javascript">
	var sock = new SockJS('chattingSock'); // 소켓 접속 요청
	sock.onopen = function() {  // 접속이 되면 실행
	     console.log('접속');
    };
	sock.onmessage = function(e) { // 서버에서 메세지를 받으면 실행
		const message = JSON.parse(e.data);
		switch (message.type) {
	 		case 'connect':
	 			/* showloginId(message.loginId); */
	 			break;
	 		case 'message':
	 			console.log(message);
 				toMe(message);
	 	}
	 };
	sock.onclose = function() { // 접속이 해제 되면 실행
	     console.log('close');
	 	 alert('접속이 해제 되었습니다!');
	 	 window.close();
	};
	function sendMessage(msg){
		sock.send(JSON.stringify(msg));
	}
	</script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script type="text/javascript">
	var targetimgPath = '';
	function selectchattarget(event){
		var clickedElement = event.target.closest(".contacts"); 
		var contactsEls = document.querySelectorAll('.contacts');
	    var nickname = clickedElement.querySelector('.nickname').innerText; 
	    var clickedElementId = clickedElement.id;
	    console.log(clickedElementId);
    	document.getElementById('card').innerHTML = '';
    	contactsEls.forEach(function(contactsEl) {
        	contactsEl.removeAttribute('style');
    	});
	    clickedElement.setAttribute('style', 'border: solid 2px #7de47d;background-color: #9df99d;');
	    targetimgPath = clickedElement.querySelector('img').getAttribute("src");
	    console.log(targetimgPath);
	    $.ajax({
	        url: 'chathistory',
	        type: 'POST',
	        dataType: 'json',
	        data: { user_id: clickedElementId },
	        success: function(e) {
	        	document.getElementById('card').innerHTML = 
   				    '<div class="card-header msg_head" id="'+ clickedElementId +'">' +
   				    '  <div class="d-flex bd-highlight">' +
   				    '    <div class="img_cont">' +
   				    '      <img src="'+targetimgPath+'" class="rounded-circle user_img"/>' +
   				    '      <span class="online_icon"></span>' +
   				    '    </div>' +
   				    '    <div class="user_info">' +
   				    '      <span>Chat with ' + nickname + '</span>' +
   				    '    </div>' +
   				    '    <div class="video_cam">' +
   				    '      <span><i class="fas fa-video">1</i></span>' +
   				    '      <span><i class="fas fa-phone">2</i></span>' +
   				    '    </div>' +
   				    '  </div>' +
   				    '  <span id="action_menu_btn"><i class="fas fa-ellipsis-v"></i></span>' +
   				    '  <div class="action_menu">' +
   				    '    <ul>' +
   				    '      <li><i class="fas fa-user-circle"></i> View profile</li>' +
   				    '      <li><i class="fas fa-users"></i> Add to close friends</li>' +
   				    '      <li><i class="fas fa-plus"></i> Add to group</li>' +
   				    '      <li><i class="fas fa-ban"></i> Block</li>' +
   				    '    </ul>' +
   				    '  </div>' +
   				    '</div>' +
   				    '<div class="card-body msg_card_body" id="card_body">' +
   				    '</div>' +
   				    '<div class="card-footer">' +
   				    '  <div class="input-group">' +
   				    '    <div class="input-group-append" >' +
   				    '      <span class="input-group-text attach_btn"><i class="fas fa-paperclip"></i></span>' +
   				    '    </div>' +
   				    '    <textarea id="textArea" onkeydown="inputCheck(event)" class="form-control type_msg" placeholder="Type your message..." style="resize: none;"></textarea>' +
   				    '    <div class="input-group-append" onclick="messageSend()">' +
   				    '      <span class="input-group-text send_btn"><i class="fas fa-location-arrow">보내기</i></span>' +
   				    '    </div>' +
   				    '  </div>' +
   				    '</div>';
	            console.log(e)
   				console.log('요청자: '+'${sessionScope.loginId}')
   					for(let map of e){
   						if(clickedElementId != map.CHATTING_SENDID){
   							console.log(clickedElementId);
   							console.log('내가보낸: '+map);
   							fromMe(map);
   						}else{
   							console.log(clickedElementId);
   							console.log('네가보낸: '+map);
   							toMe(map);
   						}
   				}
	            console.log(e);
	        },
	        error: function(xhr, status, error) {
	            console.error(xhr);
	        }
	    });
	}
	function fromMe(map){
		let contEl = document.createElement('div');
		let msgcontEl = document.createElement('div');
		msgcontEl.setAttribute('class','d-flex justify-content-end mb-4');
		let imgcontEl = document.createElement('div');
		imgcontEl.setAttribute('class','img_cont_msg');
		let imgEl = document.createElement('img');
		imgEl.setAttribute('src',document.querySelector('.me').querySelector('.user_img').getAttribute('src'));
		imgEl.setAttribute('class','rounded-circle user_img_msg');
		imgcontEl.appendChild(imgEl);
		msgcontEl.appendChild(contEl);
		contEl.setAttribute('class','msg_cotainer');
		contEl.setAttribute('style','background-color: #fdf52c; border-radius: 12px; padding: 5px; margin-right: 5px; min-width: 120px; max-width: 285px;')
		contEl.innerText = map.CHATTING_MSG;
		let timeEl = document.createElement('span');
		timeEl.setAttribute('class','msg_time');
		timeEl.innerText = map.CHATTING_REGDATE;
		contEl.appendChild(timeEl);
		msgcontEl.appendChild(contEl);
		msgcontEl.appendChild(imgcontEl);
		document.getElementById('card_body').appendChild(msgcontEl);
		document.getElementById("card_body").scrollTop = document.getElementById("card_body").scrollHeight;
	}
	function toMe(map){
		console.log(map.CHATTING_MSG);
		let msgcontEl = document.createElement('div');
		msgcontEl.setAttribute('class','d-flex justify-content-start mb-4');
		let imgcontEl = document.createElement('div');
		imgcontEl.setAttribute('class','img_cont_msg');
		let imgEl = document.createElement('img');
		imgEl.setAttribute('src',targetimgPath);
		imgEl.setAttribute('class','rounded-circle user_img_msg');
		imgcontEl.appendChild(imgEl);
		msgcontEl.appendChild(imgcontEl);
		let contEl = document.createElement('div');
		contEl.setAttribute('class','msg_cotainer');
		contEl.setAttribute('style','background-color: #fdf52c; border-radius: 12px; padding: 5px; margin-left: 5px; min-width: 120px; max-width: 285px;')
		contEl.innerText = map.CHATTING_MSG;
		let timeEl = document.createElement('span');
		timeEl.setAttribute('class','msg_time');
		timeEl.innerText = map.CHATTING_REGDATE;
		contEl.appendChild(timeEl);
		msgcontEl.appendChild(contEl);
		document.getElementById('card_body').appendChild(msgcontEl);
		document.getElementById("card_body").scrollTop = document.getElementById("card_body").scrollHeight;
	}
	</script>
	<script type="text/javascript">
	function messageSend(){
		let CHATTING_REQID = document.querySelector(".me").id;
		let CHATTING_RESPID = document.querySelector(".msg_head").id;
		let CHATTING_MSG = document.getElementById('textArea').value.trim();
		if( CHATTING_MSG==null ){
			CHATTING_MSG = '';
		}  
		let CHATTING_REGDATE = localdate();
		let msg = {type:'message', CHATTING_REQID, CHATTING_RESPID, CHATTING_MSG, CHATTING_REGDATE};
		fromMe(msg);
		sendMessage(msg);
		document.getElementById('textArea').value = '';
		document.getElementById('textArea').focus();
	}
	function localdate(){
		var now = new Date();
		var options = {
				  year: 'numeric',
				  month: 'short',
				  day: 'numeric',
				  hour: 'numeric',
				  minute: 'numeric',
				  second: 'numeric',
				  hour12: true, // AM/PM 형식 사용
				  timeZone: 'Asia/Seoul' // 서울의 시간대
				};
		var koreanTime = now.toLocaleString('en-US', options);
		return koreanTime;
	}
	</script>
	<script type="text/javascript">
	function inputCheck(event){
		console.log(event.keyCode);
		if(event.keyCode === 13){
			messageSend()
		};
	};
	
	</script>      
</html>
