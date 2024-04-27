<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<c:if test="${msg != null}">
	<c:set var="msgArray" value="${fn:split(msg, '_')}" />
	<c:forEach var="item" items="${msgArray}">
		<script type="text/javascript">
            alert("${item}");
        </script>
	</c:forEach>
</c:if>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>2SC-Match :: site</title>
<style>
#fileimgs img {
	max-width: 50px;
	max-height: 50px;
	margin: 5px;
}

body {
	margin: 0;
	color: #6a6f8c;
	background:
		url(${pageContext.request.contextPath }/resources/CSS/Image/background.webp),
		linear-gradient(90deg, rgb(255 255 255),
		rgba(255, 154, 0, 0.6306897759103641) 51%, rgb(255, 255, 255))
		no-repeat center;
	font: 600 16px/18px;
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

.login-html .sign-in-htm, .login-html .sign-up-htm {
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	position: absolute;
	transform: rotateY(180deg);
	backface-visibility: hidden;
	transition: all .4s linear;
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
	border-color: #ff5e5e;
}

.login-form {
	min-height: 345px;
	position: relative;
	perspective: 1000px;
	transform-style: preserve-3d;
}
.login-form{
	font-color: black;
}

.login-form .group {
	margin-bottom: 15px;
}

.login-form .group .label, .login-form .group .input, .login-form .group .button
	{
	width: 100%;
	color: white;
	display: block;
	font-weight: bold;
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
	background: rgb(255 255 255/ 41%);
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
	background: #ee111169;
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

#user, #pass, #mbti {
	color: #575757;
}

/* IE */
select::-ms-expand {
	display: none;
}

/* IE */
{
...
}
#mbti { { ...
	
}

width: 150px ;
  height: 45px ;
  background: url( '${pageContext .request.contextPath
	
}

/
resources
/
CSS
/
Image
/
Polygon1
.png
'
)
 
calc
(
100
%
 
-
 
5px
)
 
center
 
no-repeat
;

  
background-size
:
 
16px
;

  
background-repeat
:
 
no-repeat
;

  
padding
:
 
5px
 
30px
 
5px
 
10px
;

  
border-radius
:
 
25px
;

  
outline
:
 
0
 
none
;

  
background-color
:
 
rgb
(
255
 
255
 
255
/
 
42
%
)
;

  
border
:none
;

  
width
:
 
100
%


}
#mbti option {
	background: rgb(255 255 255/ 42%);
	color: black;
	padding: 10px 0;
	font-size: 15px;
	border-radius: 10px;
}

#mbti {
	-o-appearance: none;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
}

.true {
	background-color: blue !important;
}

.representative {
	background-color: red;
}
.color-bk{
	color: black !important;
}
.color-rd{
	color: red !important;
}
</style>
</head>
<body>
	<div class="login-wrap">

		<div class="login-html">

			<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label
				for="tab-1" class="tab" onclick="firstpage()">Sign In</label> <input
				id="tab-2" type="radio" name="tab" class="sign-up"><label
				for="tab-2" class="tab" onclick="firstpage()">Sign Up</label>
			<div class="login-form">
				<div class="sign-in-htm">
					<form action="${pageContext.request.contextPath}/selectLogin"
						method="post" onsubmit="return logincheck()">
						<div class="group">
							<label for="userid" class="label">id</label> <input id="userid"
								type="text" class="input" name="userid">
						</div>
						<div class="group">
							<label for="userpw" class="label">Password</label> <input
								id="userpw" type="password" class="input" data-type="password"
								name="userpw">
						</div>

						<div class="group">
							<button class="button">Sign In</button>
						</div>
						<!-- </form> -->
						<div class="hr"></div>

					</form>
				</div>
				<div class="sign-up-htm">
					<button class="btn " id="btn1" onclick="pagebtn(0)">1</button>
					<button class="btn hiddenbtn btndis" id="btn2" onclick="pagebtn(1)">
						2</button>
					<button class="btn hiddenbtn btndis" id="btn3" onclick="pagebtn(2)">
						3</button>
					<button class="btn hiddenbtn btndis" id="btn4" onclick="pagebtn(3)">
						4</button>
					<form action="${pageContext.request.contextPath}/insertRegist"
						method="post" onsubmit="return datecheck()"
						enctype="multipart/form-data">
						<div class="FirstPage signpage" id="displayfirst">
							<div class="group">
								<label for="user_id" class="label">ID<span
									style="color: red;">필수</span></label> <input id="user_id" type="text"
									class="input" name="user_id"
									style="width: 275px; display: inline-block;"
									onkeyup="checkFalse()">
								<button type="button" id="checkId" onclick="doubleIdcheck()"
									class="btn"
									style="margin-left: 18px; display: inline-block; width: 83px; height: 42px; border-radius: 27px;">중복확인</button>
								<div id="doubleId" style="height: 18px;"></div>
							</div>
							<div class="group">
								<label for="user_name" class="label tab">Username</label> <input
									id="user_name" type="text" class="input" name="user_name">
							</div>
							<div class="group">
								<label for="user_pw" class="label">Password<span
									style="color: red;">필수</span></label> <input id="user_pw"
									type="password" class="input" data-type="password"
									name="user_pw">
							</div>
							<div class="group">
								<label for="user_pwre" class="label">Repeat Password<span
									style="color: red;">필수</span></label> <input id="user_pwre"
									type="password" class="input" name="user_pwre">
							</div>
							<div class="group">
								<label for="user_birth" class="label">BIRTH</label> <input
									id="user_birth" type="date" class="input" name="user_birth">
							</div>
							<div class="group">
								<label for="user_phonenumber" class="label">Phone Number<span
									style="color: red;">필수</span></label> <input id="user_phonenumber"
									type="text" class="input" name="user_phonenumber">
							</div>
						</div>
						<div class="hiddenInput secondPage signpage " id="displaysecond">
							<div class="group">
								<label for="user_address" class="label">Address<span
									style="color: red;">필수</span></label> <input id="user_address"
									type="text" class="input" name="user_address"
									style="width: 275px; display: inline-block;" readonly>
								<button type="button" onclick="findaddress()" class="btn"
									style="margin-left: 18px; display: inline-block; width: 83px; height: 42px; border-radius: 27px;">주소입력</button>
							</div>
							<div class="group">
								<label for="user_career" class="label">Career</label> <input
									id="user_career" type="text" class="input" name="user_career">
							</div>
							<div class="group">
								<label for="user_height" class="label">Height</label> <input
									id="user_height" type="text" class="input" name="user_height">
							</div>
							<div class="group">
								<label for="user_weight" class="label">Weight</label> <input
									id="user_weight" type="text" class="input" name="user_weight">
							</div>
							<div class="group">
								<label for="user_email" class="label">Email<span
									style="color: red;">필수</span></label> <input id="user_email"
									type="text" class="input" name="user_email">
							</div>
							<div class="group">
								<label for="user_nickname" class="label">Nickname<span
									style="color: red;">필수</span></label> <input id="user_nickname"
									type="text" class="input" name="user_nickname">
							</div>

						</div>
						<div class="hiddenInput thirdPage signpage" id="displaythrid">
							<div class="group" style="display: flex; flex-direction: column;">
								<label class="label">profile img</label>
								<div class="nested-group"
									style="display: flex; flex-direction: row; justify-content: space-between; align-items: center;">
									<div id="fileimgs" class="input"
										style="max-width: 290px; height: 110px; display: flex; overflow-x: overlay; overflow-y: hidden; scrollbar-width: thin; scrollbar-color: #e590907a transparent; justify-content: flex-start;align-items: flex-start;"></div>
									<label for="user_img"
										style="background: #ff5858; width: 88px; height: 50px; line-height: 50px; border-radius: 19px; text-align: center; color: white;">사진등록</label>
									<input id="user_img" type="file" class="input" name="user_imgfiles" style="display: none;" multiple onchange="viewimgs(event)" accept="image/*">
								</div>
							</div>
							<div class="group">
								<label for="user_mbti" class="label">MBTI<span style="color: red;">필수</span></label> 
								<select name="user_mbti" id="user_mbti" class="input" name="user_mbti" >
									<option class="color-rd" value="----" disabled selected style="display: none">MBTI를선택해주세요...</option>
									<option class="color-bk" value="INFP">I N F P</option>
									<option class="color-bk" value="INFJ">I N F J</option>
									<option class="color-bk" value="INTP">I N T P</option>
									<option class="color-bk" value="INTJ">I N T J</option>
									<option class="color-bk" value="ENFP">E N F P</option>
									<option class="color-bk" value="ENFJ">E N F J</option>
									<option class="color-bk" value="ENTP">E N T P</option>
									<option class="color-bk" value="ENTJ">E N T J</option>
									<option class="color-bk" value="ISFP">I S F P</option>
									<option class="color-bk" value="ISFJ">I S F J</option>
									<option class="color-bk" value="ISTP">I S T P</option>
									<option class="color-bk" value="ISTJ">I S T J</option>
									<option class="color-bk" value="ESFP">E S F P</option>
									<option class="color-bk" value="ESFJ">E S F J</option>
									<option class="color-bk" value="ESTP">E S T P</option>
									<option class="color-bk" value="ESTJ">E S T J</option>
								</select>
							</div>
							<div class="group">
								<label for="user_style" class="label">MY FASHION</label> <input
									id="user_style" type="text" class="input" name="user_style">
							</div>
							<div class="group">
								<label for="user_hobby" class="label">HOBBY</label> <input
									id="user_hobby" type="text" class="input" name="user_hobby">
							</div>
							<div class="group"
								style="display: flex; justify-content: space-between; align-items: center;">
								<label class="label" style="width: 182px;">GENDER<span
									style="color: red;">필수</span></label> <input type="radio"
									name="user_gender" value="1" id="option1" >
								<label for="option1">남성</label><br> <input type="radio"
									name="user_gender" value="2" id="option2" >
								<label for="option2">여성</label><br>
							</div>
							<div class="group">
								<label for="user_idealtype" class="label">IDEALTYPE</label> <input
									id="user_idealtype" type="text" class="input"
									name="user_idealtype">
							</div>

						</div>
						<div class="hiddenInput foruthPage signpage" id="displayfourth">
							<div class="group">
								<label for="user_pr" class="label">INTRODUCE MYSELF</label>
								<textarea id="user_pr" class="input"
									style="width: 100%; height: 200px; color: indianred; font-size: 16px;"
									name="user_pr"></textarea>
							</div>
							<div class="group">
								<label for="user_ps" class="label">PREFERENCE DATE</label> <input
									id="user_ps" type="text" class="input" name="user_ps">
							</div>
							<div class="group">
								<label for="user_personality" class="label">PERSONALITY</label>
								<input id="user_personality" type="text" class="input"
									name="user_personality">
							</div>
						</div>

						<button class="btn btn-next " onclick="NextPage(event)">NEXT</button>
						<button class="btn btn-signup hiddenbtn">SIgn UP</button>
						<div class="foot-lnk">
							<label for="tab-1"><a>Already Member?</a></label>
						</div>
						<input id="x" type="hidden" name="x"> <input id="y"
							type="hidden" name="y"> <input id="main" type="hidden"
							name="main">
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- 전역변수 -->
<script type="text/javascript">
		var checkId = false;
		var btnEl = document.getElementById('checkId');
		var doubleId = document.getElementById('doubleId');
	    const displayNoneEl1 = document.querySelector('#displayfirst');
	    const displayNoneEl2 = document.querySelector('#displaysecond');
	    const displayNoneEl3 = document.querySelector('#displaythrid');
	    const displayNoneEl4 = document.querySelector('#displayfourth');
	    const signpageList = document.querySelectorAll('.signpage');
	    const btndisList = document.querySelectorAll('.btndis');
	    const btnsignup = document.querySelector('.btn-signup');
	    const btnnext = document.querySelector('.btn-next');
	    var idx = 0;
    </script>
<!-- 페이지 전환버튼 -->
<script type="text/javascript">
        function NextPage(event){
        	event.preventDefault();
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
        
        function firstpage(){
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
            
        displayNoneEl1.querySelectorAll('input').forEach( inputEl => {
            inputEl.value="";
        })
        displayNoneEl2.querySelectorAll('input').forEach( inputEl => {
            
            inputEl.value="";
        })
        displayNoneEl3.querySelectorAll('input').forEach( inputEl => {
            
            inputEl.value="";
        })
        displayNoneEl4.querySelectorAll('input').forEach( inputEl => {
            
            inputEl.value="";
        })
        document.getElementById('option1').value = '1';
        document.getElementById('option2').value = '2';
        var radioButtons = document.getElementsByName("user_gender");
        for (var i = 0; i < radioButtons.length; i++) {
            radioButtons[i].checked = false;
        }
		checkId = false;
        doubleId.innerText = '';
        btnEl.innerText='중복확인';
        if (document.getElementById('user_id').getAttribute('readonly') !== null) {
            document.getElementById('user_id').removeAttribute('readonly');
        }
        if (btnEl.classList.contains('true')) {
            btnEl.classList.remove('true');
        }
    }
    </script>
<!-- 필수입력항목 체크 -->
<script type="text/javascript">
    function datecheck(){
	  
  		if(checkId==false){
			alert('아이디 중복체크를 해주세요.');
			pagebtn(0);
			document.getElementById('user_id').focus();
			return false;
		}  
  		
  		if(document.getElementById('user_pw').value.trim()==''){
			alert('비밀번호는 필수 입력 사항입니다.');
			pagebtn(0);
			document.getElementById('user_pw').focus();
			return false;
		}  
  		
  		if(document.getElementById('user_pwre').value.trim()==''){
			alert('비밀번호 확인은 필수 입력 사항입니다.');
			pagebtn(0);
			document.getElementById('user_pwre').focus();
			return false;
		}  
  		
  		if(document.getElementById('user_pw').value != document.getElementById('user_pwre').value){
  			alert('입력하신 비밀번호와 확인용 비밀번호가 일치하지 않습니다.');
  			document.getElementById('user_pw').value = '';
			document.getElementById('user_pwre').value = '';
  			pagebtn(0);
  			document.getElementById('user_pw').focus();
			return false;
  		}
  		
  		if(document.getElementById('user_phonenumber').value.trim()==''){
			alert('전화번호는 필수 입력 사항입니다.');
			pagebtn(0);
			document.getElementById('user_phonenumber').focus();
			return false;
		}  
  		
  		if(document.getElementById('user_address').value ==''){
			alert('주소는 필수 입력 사항입니다.');
			pagebtn(1);
			document.getElementById('user_email').focus();
			return false;
		}
  		
  		if(document.getElementById('user_email').value.trim()==''){
			alert('이메일은 필수 입력 사항입니다.');
			pagebtn(1);
			document.getElementById('user_email').focus();
			return false;
		}  
  		
  		if(document.getElementById('user_nickname').value.trim()==''){
			alert('닉네임은 필수 입력 사항입니다.');
			pagebtn(1);
			document.getElementById('user_nickname').focus();
			return false;
		}  
  		
  		
  		if(document.getElementById('fileimgs').innerHTML === ''){
  			alert('프로필사진을 하나 이상 등록해 주세요.');
			pagebtn(2);
			return false;
  		}else if(!document.querySelector('.representative')){
  			alert('대표 프로필 사진을 선택해 주세요.');
  			pagebtn(2);
  			return false;
  		}
  		
  		if(checkgender()===''){
  			alert('성별 선택은 필수 입니다.');
  			pagebtn(2);
  			return false;
  		}
  		if(document.getElementById('user_mbti').value==='----'){
			alert('MBTI는 필수 입력 사항입니다.');
			pagebtn(2);
			document.getElementById('user_mbti').focus();
			return false;
		}
  		
  		return true;
    }
    </script>
<!-- 성별 입력확인 -->
<script type="text/javascript">
    function checkgender(){
    	// 모든 라디오 버튼 요소를 가져옵니다.
    	var radioButtons = document.getElementsByName("user_gender");
    	// 모든 라디오 버튼을 반복하면서 선택된 것을 확인합니다.
    	for (var i = 0; i < radioButtons.length; i++) {
    	    if (radioButtons[i].checked) {
    	        // 선택된 라디오 버튼의 값을 변수에 저장합니다.
    	        return radioButtons[i].value;
    	    }
    	}
    	return '';
    }
    </script>
<!-- 중복아이디 체크 -->
<script type="text/javascript">
    function doubleIdcheck(){
    	var mid = document.getElementById('user_id').value;
    	if(checkId==true){
    		checkId=false;
    		doubleId.innerText = '새로운 아이디를 입력해 주세요.';
			document.getElementById('user_id').removeAttribute('readonly');
			document.getElementById('user_id').focus();
			btnEl.classList.remove('true');
			btnEl.innerText='중복확인';
			return false;
    	}
    	if(mid.trim() == ""){
    		console.log(mid)
    		alert('아이디를 입력 후에 중복확인 해주세요!')    		
    		return false;
    	}
    	if(checkConsecutiveChars(mid)){
    		alert('동일한 문자를 4개 이상은 사용 할 수 없습니다.');
    		return false;
    	}
    	$.ajax({
	        url: "checkId", // 서버 URL 지정
	        type: "get", // 요청 방식 지정 (POST 또는 GET)
	        data: {"mid": mid},
	        success: function(res) { // 요청 성공 시 처리할 콜백 함수
				if(res == 'Y'){ //사용중
					console.log(res);
					doubleId.innerText = '사용중인 아이디 입니다.';
				}else{
					document.getElementById('user_id').setAttribute('readonly','');
					btnEl.classList.add('true');	
					btnEl.innerText = '다시설정';
					doubleId.innerText = '사용가능한 아이디 입니다.';
					checkId=true;
				}      	
	        },
	        error: function(xhr, status, error) { // 요청 실패 시 처리할 콜백 함수
	            console.error("AJAX request failed: " + status + ", " + error);
	        }
	    });
    }
    function checkFalse(){
    	var btnEl = document.getElementById('user_id');
    	checkId = false
    	btnEl.classList.remove('true');
    	doubleId.innerText = '중복 확인을 해 주세요.';
    }
	</script>
<!-- 로그인 체크 -->
<script type="text/javascript">
    function logincheck(){
    	var useridEl = document.getElementById('userid');
    	var userpwEl = document.getElementById('userpw');
    	if(useridEl.value.trim()==''){
    		alret('아이디가 입력되지 않았습니다.');
    		return false;
    	}
    	if(userpwEl.value.trim()==''){
    		alret('비밀번호가 입력되지 않았습니다.');
    		return false;
    	}
    	return true;
    }
    </script>
<!-- 주소에 의한 좌표값 -->
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7597f9ac4764ed761e1c845f61753445&libraries=services"></script>
<script type="text/javascript">
	   var ps = new kakao.maps.services.Places();
	   function search() {
	      ps.keywordSearch(document.getElementById("user_address").value,
	            placesSearchCB);
	   };
	   function placesSearchCB(data, status, pagination) {
	      if (status === kakao.maps.services.Status.OK) {
	         var bounds = new kakao.maps.LatLngBounds();
	         document.getElementById("x").value = data[0].x;
	         document.getElementById("y").value = data[0].y; 
	      }
	   };
	</script>
<!-- 주소입력 api -->
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
		function findaddress() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                var roadAddr = data.roadAddress; // 도로명 주소 변수
	                document.getElementById("user_address").value = roadAddr;
	        		search();
	            }
	        }).open();
	    }
	</script>
<!-- 업로드 파일 미리보기 출력 -->
<script type="text/javascript">
	function viewimgs(event){
		var files = event.target.files; // 선택된 파일들을 가져옵니다.
	    var fileimgsDiv = document.getElementById('fileimgs');
	    fileimgsDiv.innerHTML = ''; // 기존에 표시된 이미지를 지웁니다.
	    // 선택된 각 파일에 대해 미리보기 이미지를 생성합니다.
	    for (var i = 0; i < files.length; i++) {
	      var file = files[i];
	      if (file.type.match('image.*')) { // 이미지 파일인지 확인합니다.
    	  	var box = document.createElement('div');
	      	box.setAttribute('style','display: flex;flex-direction: column;align-items: center; width: 50px;');
	      	box.id = i;
	      	box.setAttribute('onclick','select('+i+')');
	      	var img = document.createElement('img');
	        img.src = URL.createObjectURL(file); // 파일의 URL을 생성하여 이미지로 설정합니다.
	        img.name = file.name;
	      	var span = document.createElement('span');
	      	span.setAttribute('class','hiddenInput');
	      	span.innerText = 'main';
	        box.appendChild(img);
	        box.appendChild(span);
	        fileimgsDiv.appendChild(box); // 이미지를 화면에 표시합니다.
	      }
	    }
	}  
	</script>
<!-- 대표이미지 선택 -->
<script type="text/javascript">
		function select(boxId){
			var fileimgsDiv = document.getElementById('fileimgs');
			// 이미 선택한 대표이미지가 있다면,
				if(fileimgsDiv.querySelector('.representative')!==null){
					// main 이라는 텍스트를 가려주기
					fileimgsDiv.querySelector('.representative').querySelector('span').classList.add('hiddenInput');
					// 이미 선택한 이미지의 배경을 원래대로 돌려주기
					fileimgsDiv.querySelector('.representative').classList.remove('representative');
				}
			var el = document.getElementById(boxId); 
			//선택한 이미지의 배경색을 변경
			el.setAttribute('class','representative');
			// main 이라는 텍스트 보여주기
			el.querySelector('span').classList.remove('hiddenInput');
			document.getElementById('main').value = el.querySelector('img').name;
			console.log(document.getElementById('main').value);
		}
	</script>
	
	<script type="text/javascript">
	function checkConsecutiveChars(inputString) {
	    var count = 1; // 연속된 문자의 개수를 세는 변수
	    var prevChar = inputString.charAt(0); // 이전 문자를 저장하는 변수

	    // 문자열을 순회하면서
	    for (var i = 1; i < inputString.length; i++) {
	        var currentChar = inputString.charAt(i); // 현재 문자를 가져옴

	        // 현재 문자가 이전 문자와 같다면
	        if (currentChar === prevChar) {
	            count++; // 연속된 문자의 개수 증가
	            // 연속된 문자의 개수가 4개 이상이면 false 반환
	            if (count >= 4) {
	                return true;
	            }
	        } else {
	            // 현재 문자가 이전 문자와 다르다면 count를 1로 초기화
	            count = 1;
	        }

	        // 이전 문자를 현재 문자로 업데이트
	        prevChar = currentChar;
	    }

	    // 연속된 문자가 4개 이상이 아니면 true 반환
	    return false;
	}
	</script>
</html>