<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2SC-Match :: site</title>
<style>
body {
	margin: 0;
	color: #6a6f8c;
	background:
		url(${pageContext.request.contextPath }/resources/CSS/Image/background.webp),
		linear-gradient(90deg, rgb(255 255 255),
		rgba(255, 154, 0, 0.6306897759103641) 51%, rgb(255, 255, 255))
		no-repeat center;
	font: 600 16px/18px 'Open Sans', sans-serif;
	background-repeat: no-repeat; /* 배경 이미지 반복 없음 */
	background-attachment: fixed; /* 배경 이미지 고정 */
	background-position: center; /* 배경 이미지 가운데 정렬 */
	background-opacity: 0.5;
}

body::before {
	content: '';
	position: fixed; /* 배경 이미지 고정과 동일하게 설정 */
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-image:
		url(${pageContext.request.contextPath}/resources/CSS/Image/background.webp);
	background-repeat: no-repeat; /* 배경 이미지 반복 없음 */
	background-position: center; /* 배경 이미지 가운데 정렬 */
	opacity: 0.8; /* 투명도 조절 */
	z-index: -1; /* 콘텐츠 뒤로 배치 */
}

*, :after, :before {
	box-sizing: border-box
}

.clearfix:after, .clearfix:before {
	content: '';
	display: table
}

.clearfix:after {
	clear: both;
	display: block
}

a {
	color: inherit;
	text-decoration: none
}

.login-wrap {
	width: 100%;
	margin: auto;
	max-width: 525px;
	min-height: 800px;
	position: relative;
	box-shadow: 0 12px 15px 0 rgba(0, 0, 0, .24), 0 17px 50px 0
		rgba(0, 0, 0, .19);
}

.login-html {
	width: 100%;
	height: 100%;
	position: absolute;
	padding: 90px 70px 50px 70px;
	background: linear-gradient(90deg, rgb(255 192 192/ 95%),
		rgb(255 192 192/ 95%), rgb(255 192 192/ 95%));
}

.login-html .sign-in, .login-html .sign-up, .login-form .group .check {
	display: none;
}

.login-html .tab, .login-form .group .label, .login-form .group .button
	{
	text-transform: uppercase;
}

.login-html .tab {
	font-size: 22px;
	margin-right: 15px;
	padding-bottom: 5px;
	margin: 0 15px 10px 0;
	display: inline-block;
	border-bottom: 2px solid transparent;
}

.login-html .sign-in:checked+.tab, .login-html .sign-up:checked+.tab {
	color: #fff;
	border-color: #1161ee;
}

.login-form {
	min-height: 345px;
	position: relative;
	perspective: 1000px;
	transform-style: preserve-3d;
}

.login-form .group {
	margin-bottom: 15px;
}

.login-form .group .label, .login-form .group .input, .login-form .group .button
	{
	width: 100%;
	color: #fff;
	display: block;
}

.login-form .group .input, .login-form .group .button {
	border: none;
	padding: 15px 20px;
	border-radius: 25px;
	background: rgb(255 255 255/ 42%);
}

.login-form .group input[data-type="password"] {
	text-security: circle;
	-webkit-text-security: circle;
}

.login-form .group .label {
	color: #5d5d5d;
	font-size: 12px;
}

.login-form .group .button {
	background: #1161ee;
}

.login-form .group label .icon {
	width: 15px;
	height: 15px;
	border-radius: 2px;
	position: relative;
	display: inline-block;
	background: rgba(255, 255, 255, .1);
}

.login-form .group label .icon:before, .login-form .group label .icon:after
	{
	content: '';
	width: 10px;
	height: 2px;
	background: #fff;
	position: absolute;
	transition: all .2s ease-in-out 0s;
}

.login-form .group label .icon:before {
	left: 3px;
	width: 5px;
	bottom: 6px;
	transform: scale(0) rotate(0);
}

.login-form .group label .icon:after {
	top: 6px;
	right: 0;
	transform: scale(0) rotate(0);
}

.login-form .group .check:checked+label {
	color: #fff;
}

.login-form .group .check:checked+label .icon {
	background: #1161ee;
}

.login-form .group .check:checked+label .icon:before {
	transform: scale(1) rotate(45deg);
}

.login-form .group .check:checked+label .icon:after {
	transform: scale(1) rotate(-45deg);
}

.login-html .sign-in:checked+.tab+.sign-up+.tab+.login-form .sign-in-htm
	{
	transform: rotate(0);
}

.login-html .sign-up:checked+.tab+.login-form .sign-up-htm {
	transform: rotate(0);
}

.login-html .FirstPage {
	transform: rotate(0);
}

.hiddenInput {
	display: none !important;
}

.foot-lnk {
	text-align: center;
}

.btn {
	border: none;
	border-radius: 50%;
	width: 30px;
	height: 30px;
	color: white;
	background-color: #ff5858;
}

.btn-next {
	border-radius: 25px;
	height: 30px;
	border: none;
	display: block;
	width: 100%;
	text-transform: uppercase;
}

.btn-signup {
	border-radius: 25px;
	height: 30px;
	border: none;
	display: block;
	width: 100%;
	text-transform: uppercase;
}

.transaction {
	transform: translate(10px, 50px);
}

.translate:hover {
	transition: transform 1s linear;
	transform: translate(0px, 0px);
}

.hiddenbtn {
	display: none;
}

.registerImg {
	font-size: 0px;
	height: 100px;
	width: 100px;
	border-radius: 20%;
	padding: 0px;
}

.user-select {
	  -webkit-user-select: none; /* Chrome, Safari, and Opera */
    user-select: none; /* Standard */
}
.btn-req{

border-radius: 25px;
	height: 30px;
	border: none;
	display: block;
	width: 30%;
	text-transform: uppercase;
	background-color: green;
}
</style>
</head>
<body>



	<div class="login-wrap">
		<div class="login-html">
			<div class="login-form">
				<button class="btn btn-req" onclick="agreedClick('${sessionScope.loginId}','${userInfoList.user_id}')">매칭 요청</button>

				<c:forEach items="${imgList}" var="imgList">
					<img class="registerImg" alt=""
						src="resources/profileimg/${imgList}">
					<!-- 프로필 이미지를 넣어주세요 -->
					
					</c:forEach>
					<div>${userInfoList.user_nickname }님의
					Profile 
				</div>
				<button class="btn " id="btn1" onclick="pagebtn(0)">1</button>
				<button class="btn hiddenbtn btndis" id="btn2" onclick="pagebtn(1)">
					2</button>
				<button class="btn hiddenbtn btndis" id="btn3" onclick="pagebtn(2)">
					3</button>
				<button class="btn hiddenbtn btndis" id="btn4" onclick="pagebtn(3)">
					4</button>
				<%-- <form action="${pageContext.request.contextPath}/registmember" method="post"> --%>
				<div class="FirstPage signpage" id="displayfirst">
					<div class="group">
						<label for="user" class="label tab">Nickname</label> <input
							 class="input user-select" readonly
							value="${userInfoList.user_nickname }">
					</div>
					<div class="group">
						<label for="pass" class="label">나이</label> <input
							 class="input user-select" readonly
							value="${todayAge }">
					</div>
					<div class="group">
						<label for="pass" class="label">BIRTH</label> <input
							 class="input user-select" readonly
							value="${userInfoList.user_birth }">
					</div>
					<div class="group">
						<label for="pass" class="label">MBTI</label> <input
							 class="input user-select" readonly
							value="${userInfoList.user_mbti }">
					</div>
				</div>
				<div class="hiddenInput secondPage signpage " id="displaysecond">
					<div class="group">
						<label for="pass" class="label">Career</label> <input
							 class="input user-select" readonly
							value="${userInfoList.user_career }">
					</div>
					<div class="group">
						<label for="pass" class="label">Height</label> <input
							 class="input user-select" readonly
							value="${userInfoList.user_height }">
					</div>
					<div class="group">
						<label for="pass" class="label">Weight</label> <input
							 class="input user-select" readonly
							value="${userInfoList.user_weight }">
					</div>
					<div class="group">
						<label for="pass" class="label">Nickname</label> <input
							 class="input user-select" readonly
							value="${userInfoList.user_nickname }">
					</div>

				</div>
				<div class="hiddenInput thirdPage signpage" id="displaythrid">
					<div class="group">
						<label for="pass" class="label">STYLE</label> <input
							 class="input user-select" readonly
							value="${userInfoList.user_style }">
					</div>
					<div class="group">
						<label for="pass" class="label">HOBBY</label> <input
							 class="input user-select" readonly
							value="${userInfoList.user_hobby }">
					</div>
					<div class="group">
						<label for="pass" class="label">GENDER</label> <input
							 class="input user-select" readonly
							value="${gender }">
					</div>
					<div class="group">
						<label for="pass" class="label">IDEALTYPE</label> <input
							 class="input user-select" readonly
							value="${userInfoList.user_idealtype }">
					</div>

				</div>
				<div class="hiddenInput foruthPage signpage" id="displayfourth">
					<div class="group">
						<label for="pass" class="label">INTRODUCE MYSELF</label> <input
							id="pass" type="text" class="input" readonly
							style="width: 100%; height: 200px;" value="${userInfoList.user_pr }">
					</div>
					<div class="group">
						<label for="pass" class="label">REG DATE</label> <input
							 class="input user-select" readonly
							value="${userInfoList.user_regdate }">
					</div>
					<div class="group">
						<label for="pass" class="label">PERSONALITY</label> <input
							 class="input user-select" readonly
							value="${userInfoList.user_ps }">
					</div>
				</div>
				<button type=" button" class="btn btn-next " onclick="NextPage()">NEXT</button>
				<button type=" button" class="btn btn-signup hiddenbtn "
					onclick="firstPage()">BACK</button>
			</div>
		</div>

	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

	<script>
        const displayNoneEl1 = document.querySelector('#displayfirst');
        const displayNoneEl2 = document.querySelector('#displaysecond');
        const displayNoneEl3 = document.querySelector('#displaythrid');
        const displayNoneEl4 = document.querySelector('#displayfourth');
        const signpageList = document.querySelectorAll('.signpage');
        const btndisList = document.querySelectorAll('.btndis');
        const btnsignup = document.querySelector('.btn-signup');
        const btnnext = document.querySelector('.btn-next');

        
        var idx = 0;
        function NextPage(){
           
            idx++

            if(idx >= signpageList.length){

                idx =0;
            }
            if(idx ==3 ){
                btnsignup.classList.remove('hiddenbtn');
                btnnext.classList.add('hiddenbtn');
            }

            signpageList.forEach(function(obj){
                obj.classList.add('hiddenInput');
            });
            $(signpageList[idx]).removeClass('hiddenInput').hide().slideDown(1000, 'swing');
            
            btndisList[idx-1].classList.remove('hiddenbtn');
            console.log(idx);
            console.log(signpageList.length);
           // displayNoneEl1.className="hiddenInput"
            //displayNoneEl2.classList.remove("hiddenInput");
            
    
         
            console.log(signpageList.length);
           // displayNoneEl1.className="hiddenInput"
            //displayNoneEl2.classList.remove("hiddenInput");
          
            
        }
        
        function pagebtn(Num){
            signpageList.forEach(function(obj){
                obj.classList.add('hiddenInput');
            });
            if(Num == 0){
                $(signpageList[Num]).removeClass('hiddenInput').hide().slideDown(1000, 'swing');
            }
            else  if(Num == 1){
                $(signpageList[Num]).removeClass('hiddenInput').hide().slideDown(1000, 'swing');
            }
            else  if(Num == 2){
                $(signpageList[Num]).removeClass('hiddenInput').hide().slideDown(1000, 'swing');
            }
            else  if(Num == 3){
                $(signpageList[Num]).removeClass('hiddenInput').hide().slideDown(1000, 'swing');
             
            }
        }
        
        
        function firstPage() {
        	
        	   idx=0;
               btnsignup.classList.add('hiddenbtn');
                   btnnext.classList.remove('hiddenbtn');
               
               displayNoneEl1.classList.remove('hiddenInput');
               displayNoneEl2.classList.add('hiddenInput');
               displayNoneEl3.classList.add('hiddenInput');
               displayNoneEl4.classList.add('hiddenInput');
               btndisList[0].classList.add('hiddenbtn');
               btndisList[1].classList.add('hiddenbtn');
               btndisList[2].classList.add('hiddenbtn');
               
        
           $(signpageList[idx]).removeClass('hiddenInput').hide().slideDown(1000, 'swing');
		}
        function agreedClick(startId,userId) {
    		console.log('수락');
    		
    		$.ajax({
        		url: 'agreedClick',
        		type :'post',
        	/* 	dataType:'json',  */
        			data : {
        				
        				'startId' :startId,
        				'userId' :userId,
        			},
        			async:false,
        			success: function(res) {
        				console.log(res);
        				if(res == "Y"){
        				alert("수락하셨습니다");
          				//location.reload();
        				elObj.remove();
    						}else{
          					
          				}
        			}
        			
    		});
    		
    	}
      </script>
</body>
</html>