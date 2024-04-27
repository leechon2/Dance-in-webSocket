<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html>
  <head>
    <title>${sessionScope.nickName}</title>
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
  <script type="text/javascript">
  var myImgPath = "";
  var targetimgPath = "";
	function fromMe(map){
		let contEl = document.createElement('div');
		let msgcontEl = document.createElement('div');
		msgcontEl.setAttribute('class','d-flex justify-content-end mb-4');
		let imgcontEl = document.createElement('div');
		imgcontEl.setAttribute('class','img_cont_msg');
		let imgEl = document.createElement('img');
		imgEl.setAttribute('src', myImgPath);
		imgEl.setAttribute('class','rounded-circle user_img_msg');
		imgcontEl.appendChild(imgEl);
		msgcontEl.appendChild(contEl);
		contEl.setAttribute('class','msg_cotainer');
		contEl.setAttribute('style','background-color: #fdf52c; border-radius: 12px; padding: 5px; margin-right: 5px; min-width: 120px; max-width: 285px;')
		contEl.innerText = map.message;
		let timeEl = document.createElement('span');
		timeEl.setAttribute('class','msg_time');
		timeEl.innerText = map.regdate;
		contEl.appendChild(timeEl);
		msgcontEl.appendChild(contEl);
		msgcontEl.appendChild(imgcontEl);
		document.getElementById('card_body').appendChild(msgcontEl);
		document.getElementById("card_body").scrollTop = document.getElementById("card_body").scrollHeight;
	}
	function toMe(map){
		console.log(map);
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
		contEl.innerText = map.message;
		let timeEl = document.createElement('span');
		timeEl.setAttribute('class','msg_time');
		timeEl.innerText = map.regdate;
		contEl.appendChild(timeEl);
		msgcontEl.appendChild(contEl);
		document.getElementById('card_body').appendChild(msgcontEl);
		document.getElementById("card_body").scrollTop = document.getElementById("card_body").scrollHeight;
	}
	</script>
	<script type="text/javascript">
	function messageSend(){
		let userId = document.querySelector(".msg_head").id;
		if( userId === ""){
			alert('대화상대가 없습니다.')
			document.getElementById('textArea').value = '';
			return false;
		}
		let message = document.getElementById('textArea').value.trim();
		if( message == '' ){
			return false;
		}  
		let regdate = localdate();
		let msg = {type:'message', userId, message, regdate};
		console.log("sendMessage"+msg);
		fromMe(msg);
		sendMessage(msg);
		document.getElementById('textArea').value = '';
		document.getElementById('textArea').innerText = '';
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
	/* 방을 생성할때 */
	function createRoom(msg){
		myImgPath = msg.myimg;
		console.log('방만들기');
		var nickname = '참여자 대기중';
		targetimgPath = "resources/profileimg/men.webp";
	    document.getElementById('card').innerHTML = 
			    '<div class="card-header msg_head">' +
			    '  <div class="d-flex bd-highlight" style="justify-content: space-between;">' +
			    '    <div class="img_cont">' +
			    '      <img src="'+targetimgPath+'" class="rounded-circle user_img"/>' +
			    '      <span class="offline"></span>' +
			    '    </div>' +
			    '    <div class="user_info">' +
			    '      <span> ' + nickname + '</span>' +
			    '    </div>' +
			    '    <div class="video_cam" style="display: flex; align-items: center">' +
			    '      <span><i class="fas fa-video" onclick="closeChat()">채팅 종료</i></span>' +
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
			    '    <textarea id="textArea" onkeyup="inputCheck(event)" class="form-control type_msg" placeholder="Type your message..." style="resize: none;"></textarea>' +
			    '    <div class="input-group-append" onclick="messageSend()">' +
			    '      <span class="input-group-text send_btn"><i class="fas fa-location-arrow">보내기</i></span>' +
			    '    </div>' +
			    '  </div>' +
			    '</div>';
	}
	/* 대기중인 방에 입장할때 */
	function enterRoom(msg){
		myImgPath = msg.myimg;
		let targetimgPath = "resources/profileimg/"+msg.img;
		let nickname = msg.userNickName;
		let userId = msg.userId;
	        	document.getElementById('card').innerHTML = 
   				    '<div class="card-header msg_head" id="'+ userId +'">' +
   				    '  <div class="d-flex bd-highlight">' +
   				    '    <div class="img_cont">' +
   				    '      <img src="'+targetimgPath+'" class="rounded-circle user_img"/>' +
   				    '      <span class="online_icon"></span>' +
   				    '    </div>' +
   				    '    <div class="user_info">' +
   				    '      <span>Chat with </span>' +
   				    '      <span id="nickName">'+ nickname + '</span>' +		
   				    '    </div>' +
   				    '    <div class="video_cam" style="display: flex; align-items: center">' +
 	  	 			'		<span><i class="fas fa-video" onclick="awayFromChat(\'' + userId + '\')">채팅 종료</i></span>' +
   					'		<span><i class="fas fa-video" onclick="findChat(\'' + userId + '\')">대화상대 찾기</i></span>' +
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
   				    '    <textarea id="textArea" onkeyup="inputCheck(event)" class="form-control type_msg" placeholder="Type your message..." style="resize: none;"></textarea>' +
   				    '    <div class="input-group-append" onclick="messageSend()">' +
   				    '      <span class="input-group-text send_btn"><i class="fas fa-location-arrow">보내기</i></span>' +
   				    '    </div>' +
   				    '  </div>' +
   				    '</div>';
	    		let message = {type:'enter', userId};
	    		sendMessage(message);
	}
	/* 대화상대가 방에 입장했을때  */
	function guestEnter(msg){
		targetimgPath = "resources/profileimg/"+msg.img;
		let nickname = msg.userNickName;
		let userId = msg.userId;
	        	document.getElementById('card').innerHTML = 
   				    '<div class="card-header msg_head" id="'+ userId +'">' +
   				    '  <div class="d-flex bd-highlight">' +
   				    '    <div class="img_cont">' +
   				    '      <img src="'+targetimgPath+'" class="rounded-circle user_img"/>' +
   				    '      <span class="online_icon"></span>' +
   				    '    </div>' +
   				    '    <div class="user_info">' +
   				    '      <span>Chat with </span>' +
   				    '      <span id="nickName">'+ nickname + '</span>' +		
   				    '    </div>' +
   				    '    <div class="video_cam" style="display: flex; align-items: center">' +
 	  	 			'		<span><i class="fas fa-video" onclick="awayFromChat(\'' + userId + '\')">채팅 종료</i></span>' +
   					'		<span><i class="fas fa-video" onclick="findChat(\'' + userId + '\')">대화상대 찾기</i></span>' +
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
   				    '    <textarea id="textArea" onkeyup="inputCheck(event)" class="form-control type_msg" placeholder="Type your message..." style="resize: none;"></textarea>' +
   				    '    <div class="input-group-append" onclick="messageSend()">' +
   				    '      <span class="input-group-text send_btn"><i class="fas fa-location-arrow">보내기</i></span>' +
   				    '    </div>' +
   				    '  </div>' +
   				    '</div>';
	}
	</script>
	<!-- 채팅창 Enter 입력 -->
	<script type="text/javascript">
	function inputCheck(event){
		console.log(event.keyCode);
		if(event.keyCode === 13){
			messageSend()
			document.getElementById('textArea').value = '';
		};
	};
	</script>
	<!-- 채팅 상대 찾기 -->
	<script type="text/javascript">
	function findChat(userId){
		let msg = {type:'findChat', userId , userimg : myImgPath };
		sendMessage(msg);
		createRoom(msg);
		console.log(msg);
		
	}
	</script>
	<script type="text/javascript">
	function closeChat(){
		window.close();	
		
	}
	</script>
	<script type="text/javascript">
	function awayFromChat(userId){
		let msg = {type:'awayFromChat', userId };
		sendMessage(msg);
		console.log(msg);
		window.close();
	}
	</script>
	
	<!-- 웹소켓 -->
	<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
  	<script type="text/javascript">
	var sock = new SockJS('randomSock'); // 소켓 접속 요청
	sock.onopen = function() {  // 접속이 되면 실행
	     console.log('접속');
    };
	sock.onmessage = function(e) { // 서버에서 메세지를 받으면 실행
		const msg = JSON.parse(e.data);
		console.log(msg);
		switch (msg.type) {
	 		case 'message':
	 			console.log(msg);
 				toMe(msg);
 				break;
	 		case 'createRoom':
	 			createRoom(msg);
	 			break;
	 		case 'enterRoom':
	 			enterRoom(msg);
	 			break;
	 		case 'findChat':
	 			alert(msg.message);
	 			createRoom(msg);
	 			break;
	 		case 'awayFromChat':
	 			alert(msg.message);
	 			createRoom(msg);
	 			break;
	 		case 'enter':
	 			guestEnter(msg);
	 			break;
	 	}
	 };
	sock.onclose = function(event) { // 접속이 해제 되면 실행
	     alert('접속이 해제 되었습니다!');
	 	 window.close();
	};
	function sendMessage(msg){
		sock.send(JSON.stringify(msg));
	}
	</script>
</html>
