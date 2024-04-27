<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${msg != null }">
	<script type="text/javascript">
		alert('${msg}');
	</script>
</c:if>

<!doctype html>
<html lang="en-US">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="https://gmpg.org/xfn/11">
<meta name="author" content="W3Layouts.com" />

<link
	href="${pageContext.request.contextPath }/resources/CSS/style-liberty.css"
	rel="stylesheet" />
<title>Dress Up WordPress Theme &#8211; Just another W3Layouts
	free WordPress Demo Sites site</title>
<meta name='robots' content='max-image-preview:large' />
<link rel="alternate" type="application/rss+xml"
	title="Dress Up WordPress Theme &raquo; Feed"
	href="https://wp.w3layouts.com/dressup/feed/" />
<link rel="alternate" type="application/rss+xml"
	title="Dress Up WordPress Theme &raquo; Comments Feed"
	href="https://wp.w3layouts.com/dressup/comments/feed/" />
<style>
img.wp-smiley, img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 0.07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}

form {
	width: 80%;
	margin: auto;
}

.btn_container {
	width: 50%;
	margin: auto;
	background-color: rgb(0 0 0/ 4%);
	display: flex;
	flex-wrap: wrap;
	margin-bottom: 30px;
	display: flex;
	justify-content: center;
	align-items: center;
	border-radius: 16px;
}

.select {
	border: 1px solid black;
	background-color: coral;
	width: 100px;
	height: 30px;
	border-radius: 10%;
	padding-top: 4px;
	text-align: center;
	margin-right: 5px;
	margin-bottom: 5px;
}

.file-input {
	visibility: hidden;
	position: absolute;
}

.custom-button {
	background-color: #4CAF50; /* ë¹ì ë°°ê²½ */
	color: white; /* í°ì íì¤í¸ */
	padding: 10px 20px; /* í¨ë© */
	border: none; /* íëë¦¬ ìì */
	cursor: pointer; /* ì»¤ì ì¤íì¼ */
}

.custom-button:hover {
	background-color: #45a049; /* í¸ë² ì ìì ë³ê²½ */
}

.nondisplay {
	display: none;
}

.btn-primary {
	border: none;
}

.btn-primary.btnselect {
	background-color: var(- -secondary-color);
}

div.btn-primary.btn {
	/* margin: 3px; */
	margin-top: 10px;
	margin-left: 5px;
	margin-bottom: 10px;
	border-radius: 10px;
}

.row { --bs-gutter-x: 1.5rem; 
	--bs-gutter-y: 0;
	display: flex;
	flex-wrap: wrap;
	margin-top: calc(var(- -bs-gutter-y)* -1);
	margin-right: calc(var(- -bs-gutter-x)/-2);
	margin-left: calc(var(- -bs-gutter-x)/-2);
	justify-content: space-around;
}

.displaynone {
	display: none !important;
}
input{
	border-radius: 15px;
}
/* 셀렉트 요소의 드롭다운 목록 스타일 지정 */
select {
  border-radius: 10px; /* 곡선 테두리 반경 설정 */
}

div::-webkit-scrollbar {
  scrollbar-gutter: transparent; /* 스크롤바와 컨텐츠 사이의 공간을 투명하게 설정 */
}
</style>
<!-- <link rel="https://api.w.org/" href="https://wp.w3layouts.com/dressup/wp-json/" /><link rel="alternate" type="application/json" href="https://wp.w3layouts.com/dressup/wp-json/wp/v2/pages/7" /><link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://wp.w3layouts.com/dressup/xmlrpc.php?rsd" /> -->
<!-- <link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://wp.w3layouts.com/dressup/wp-includes/wlwmanifest.xml" />
<meta name="generator" content="WordPress 6.2.4" /> -->
<link rel="canonical" href="www.naver.com" />
<link rel='shortlink' href='https://wp.w3layouts.com/dressup/' />
<link rel="alternate" type="application/json+oembed"
	href="https://wp.w3layouts.com/dressup/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwp.w3layouts.com%2Fdressup%2F" />
<link rel="alternate" type="text/xml+oembed"
	href="https://wp.w3layouts.com/dressup/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwp.w3layouts.com%2Fdressup%2F&#038;format=xml" />
<style>
.recentcomments a {
	display: inline !important;
	padding: 0 !important;
	margin: 0 !important;
}
</style>
</head>

<body id="top-gap-fixed-header "
	class="home page-template page-template-page-templates page-template-template-homepage page-template-page-templatestemplate-homepage-php page page-id-7">

	<header id="site-header" class="main-header fixed-top">
		<div class="container w3HeaderLogoEd">
			<div id="navbar"></div>
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
			<!-- 네비바 자리 -->
		</div>
	</header>

	<!-- Hero slider Start -->
	<section class="inner-banner py-5">
		<style>
.inner-banner {
	background-image:
		url(https://wp.w3layouts.com/dressup/wp-content/themes/Dress-Up/assets/images/b3.jpg);
}
</style>
		<div class="w3l-breadcrumb py-lg-5">
			<div class="container pt-4 pb-sm-4 BlogPageBanner">

				<h4 class="inner-text-title font-weight-bold pt-sm-5 pt-4">Blog
					Posts</h4>

				<ul class="breadcrumbs-custom-path AllBreadcrumbs">
					<a href="https://wp.w3layouts.com/dressup" rel="nofollow">Home</a>
				</ul>
			</div>
		</div>
	</section>

	<div class="w3l-servicesblock2" id="services" style="padding-top: 20px;">
		<div class="btn_container">
			<!-- <div class="container2"> -->
			<div class="btn btn-primary" onclick="add(this)" name="img">프로필 사진</div>
			<div class="btn btn-primary" onclick="add(this)" name="pw">비밀번호</div>
			<div class="btn btn-primary" onclick="add(this)" name="mbti">MBTI</div>
			<div class="btn btn-primary" onclick="add(this)" name="style">옷 스타일</div>
			<div class="btn btn-primary" onclick="add(this)" name="address">집 주소</div>
			<div class="btn btn-primary" onclick="add(this)" name="career">직업</div>
			<div class="btn btn-primary" onclick="add(this)" name="height">키</div>
			<div class="btn btn-primary" onclick="add(this)" name="weight">몸무게</div>
			<div class="btn btn-primary" onclick="add(this)" name="hobby">취미</div>
			<div class="btn btn-primary" onclick="add(this)" name="email">이메일</div>
			<div class="btn btn-primary" onclick="add(this)" name="nickname">닉네임</div>
			<div class="btn btn-primary" onclick="add(this)" name="phonenumber">전화번호</div>
			<div class="btn btn-primary" onclick="add(this)" name="gender">성전환</div>
			<div class="btn btn-primary" onclick="add(this)" name="idealtype">선호 취향</div>
			<div class="btn btn-primary" onclick="add(this)" name="pr">자기소개</div>
			<div class="btn btn-primary" onclick="add(this)" name="ps">추신</div>
			<div class="btn btn-primary" onclick="add(this)" name="personality">나의 성격</div>
			<!-- </div> -->
		</div>
	</div>

	<div class="w3l-news" id="homeblog" style="display: flex; justify-content: center;">
		<form class="row g-2" action="${pageContext.request.contextPath}/updateProfile" method="post" onsubmit="return isformOk22a()" enctype="multipart/form-data">
			<div class="container"style="display: grid; grid-template-columns: repeat(2, 1fr); gap: 20px;">
				<!-- 프로필 사진 -->
				<!-- 제거할 파일 선택 -->
				<div class="item displaynone" id="display_img" style="background-color: var(--primary-color); border-radius: 50px; display: flex; flex-direction: row; justify-content: space-between; align-items: center; padding-left:41px;">
					<div id="fileimgs" class="input" style="width:100%;max-width: 440px;height: 90px;display: flex;overflow-x: overlay;overflow-y: hidden;scrollbar-width: thin;scrollbar-color: #841e1e36 transparent;"></div>
				    <!-- 파일 추가 버튼 -->
				    <label for="user_imgfiles" style="background: #ff5858; width: 88px; height: 50px; line-height: 50px; border-radius: 20px; text-align: center; color: white;">사진등록</label>
					<input id="user_imgfiles" type="file" class="input" name="user_imgfiles" style="display:none;" multiple accept="image/*">
			        <!-- 원본 파일에서 제거할 파일 이름 -->
				    <input id="user_oriimg" type="hidden" class="input" name="user_oriimg" >
           		</div>
				<!-- 비밀번호 -->
				<div class="item displaynone" id="display_pw" style="background-color: var(--primary-color);padding: 20px;border-radius: 50px;font-weight: bolder; display: flex; justify-content: space-evenly;">
					<div style="display: flex; flex-direction: column;"><label for="user_pw">비밀번호</label> <input type="password" id="user_pw" name="user_pw" placeholder="새 비밀번호를 입력해주세요." style="width: 250px;"></div>
					<div style="display: flex; flex-direction: column;"><label for="user_pwre">비밀번호 확인</label> <input type="password" id="user_pwre" placeholder="새 비밀번호를 확인해주세요." style="width: 250px;"></div>
				</div>
				<!-- MBTI -->
				<div class="item displaynone" id="display_mbti" style="background-color: var(--primary-color);padding: 20px;border-radius: 50px;font-weight: bolder;display: flex;flex-direction: column;justify-content: center;">
					<label for="user_mbti" class="label">MBTI</label>
                    <select name="user_mbti" id="mbti" class="input">
                    	<option value=""disabled selected style="display:none">MBTI를선택해주세요...</option>
                    	<option value="INFP">I N F P</option>
                    	<option value="INFJ">I N F J</option>
                    	<option value="INTP">I N T P</option>
                    	<option value="INTJ">I N T J</option>
                    	<option value="ENFP">E N F P</option>
                    	<option value="ENFJ">E N F J</option>
                    	<option value="ENTP">E N T P</option>
                    	<option value="ENTJ">E N T J</option>
                    	<option value="ISFP">I S F P</option>
                    	<option value="ISFJ">I S F J</option>
                    	<option value="ISTP">I S T P</option>
                    	<option value="ISTJ">I S T J</option>
                    	<option value="ESFP">E S F P</option>
                    	<option value="ESFJ">E S F J</option>
                    	<option value="ESTP">E S T P</option>
                    	<option value="ESTJ">E S T J</option>
				</select>
				</div>
				<!-- 옷 스타일 -->
				<div class="item displaynone" id="display_style" style="background-color: var(--primary-color);padding: 20px;border-radius: 50px;font-weight: bolder;display: flex;flex-direction: column;justify-content: center;">
					<label for="user_style">옷스타일</label> <input type="text" id="user_style" name="user_style" placeholder="옷 스타일을 입력해주세요">
				</div>
				<!-- 집 주소 -->
				<div class="item displaynone" id="display_address" style="background-color: var(--primary-color); padding: 20px; border-radius: 50px; font-weight: bolder;">
					<label for="user_address">집주소</label> <input id="user_address" type="text" class="input" name="user_address" style="width: 282px; display: inline-block;" readonly><button type = "button" onclick="findaddress()"  style="margin-left: 18px; display: inline-block;">주소입력</button>
				</div>
				<!-- 직업 -->
				<div class="item displaynone" id="display_career" style="background-color: var(--primary-color);padding: 20px;border-radius: 50px;font-weight: bolder;display: flex;flex-direction: column;justify-content: center;">
					<label for="user_career">직업</label> <input type="text" id="user_career" name="user_career" placeholder="직업을 입력해주세요">
				</div>
				<!-- 키 -->
				<div class="item displaynone" id="display_height" style="background-color: var(--primary-color);padding: 20px;border-radius: 50px;font-weight: bolder;display: flex;flex-direction: column;justify-content: center;">
					<label for="user_height">키</label> <input type="text" id="user_height" name="user_height" placeholder="키를 입력해주세요">
				</div>
				<!-- 몸무게 -->
				<div class="item displaynone" id="display_weight" style="background-color: var(--primary-color);padding: 20px;border-radius: 50px;font-weight: bolder;display: flex;flex-direction: column;justify-content: center;">
					<label for="user_weight">몸무게</label> <input type="text" id="user_weight" name="user_weight" placeholder="몸무게를 입력해주세요">
				</div>
				<!-- 취미 -->
				<div class="item displaynone" id="display_hobby" style="background-color: var(--primary-color);padding: 20px;border-radius: 50px;font-weight: bolder;display: flex;flex-direction: column;justify-content: center;">
					<label for="user_hobby">취미</label> <input type="text" id="user_hobby" name="user_hobby" placeholder="취미를 입력해주세요">
				</div>
				<!-- 이메일 -->
				<div class="item displaynone" id="display_email" style="background-color: var(--primary-color);padding: 20px;border-radius: 50px;font-weight: bolder;display: flex;flex-direction: column;justify-content: center;">
					<label for="user_email">이메일</label> <input type="text" id="user_email" name="user_email" placeholder="이메일 주소를 입력해주세요">
				</div>
				<!-- 닉네임 -->
				<div class="item displaynone" id="display_nickname" style="background-color: var(--primary-color);padding: 20px;border-radius: 50px;font-weight: bolder;display: flex;flex-direction: column;justify-content: center;">
					<label for="user_nickname">닉네임</label> <input type="text" id="user_nickname" name="user_nickname" placeholder="닉네임을 입력해주세요">
				</div>
				<!-- 전화번호 -->
				<div class="item displaynone" id="display_phonenumber" style="background-color: var(--primary-color);padding: 20px;border-radius: 50px;font-weight: bolder;display: flex;flex-direction: column;justify-content: center;">
					<label for="user_phonenumber">전화번호</label> <input type="text" id="user_phonenumber" name="user_phonenumber" placeholder="전화번호를 입력해주세요">
				</div>
				<!-- 성별 -->
				<div class="item displaynone" id="display_gender" style="background-color: var(--primary-color);padding: 20px;border-radius: 50px;font-weight: bolder;display: flex;flex-direction: column;justify-content: center;">
					<label for="user_gender">성별</label> <input type="text" id="user_gender" name="user_gender" placeholder="성별을 입력해주세요">
				</div>
				<!-- 선호 취향 -->
				<div class="item displaynone" id="display_idealtype" style="background-color: var(--primary-color);padding: 20px;border-radius: 50px;font-weight: bolder;display: flex;flex-direction: column;justify-content: center;">
					<label for="user_idealtype">선호취향</label> <input type="text" id="user_idealtype" name="user_idealtype" placeholder="선호취향을 입력해주세요">
				</div>
				<!-- 자기소개 -->
				<div class="item displaynone" id="display_pr" style="background-color: var(--primary-color);padding: 20px;border-radius: 50px;font-weight: bolder;display: flex;flex-direction: column;justify-content: center;">
					<label for="user_pr">자기소개</label> <input type="text" id="user_pr" name="user_pr" placeholder="자기소개를 입력해주세요">
				</div>
				<!-- 추신 -->
				<div class="item displaynone" id="display_ps" style="background-color: var(--primary-color);padding: 20px;border-radius: 50px;font-weight: bolder;display: flex;flex-direction: column;justify-content: center;">
					<label for="user_ps">추신</label> <input type="text" id="user_ps" name="user_ps" placeholder="추신을 입력해주세요">
				</div>
				<!-- 나의 성격 -->
				<div class="item displaynone" id="display_personality" style="background-color: var(--primary-color);padding: 20px;border-radius: 50px;font-weight: bolder;display: flex;flex-direction: column;justify-content: center;">
					<label for="user_personality">나의 성격</label> <input type="text" id="user_personality" name="user_personality" placeholder="성격을 입력해주세요">
				</div>
				<input id="x"type="hidden" name="x">
                <input id="y"type="hidden" name="y">
                <input id="main"type="hidden" name="main">
                <input id="dontUpload" type="hidden" name="dontUpload">
                <input id="user_img" type="hidden" name="user_img">
                
                
			</div>
			<div class="text-center mb-md-5  pt-lg-4">
				<button class="btn btn-style">입력 완료</button>
			</div>
		</form>
	</div>
	<!-- footer -->

	<!-- //footer -->


	<!-- Js scripts -->
	<!-- move top -->
	<button onclick="topFunction()" id="movetop" title="Go to top">
		<span  aria-hidden="true">T</span>
		<!-- class="fas fa-level-up-alt" -->
	</button>
	<script src="https://wp.w3layouts.com/dressup/wp-content/themes/Dress-Up/assets/js/jquery-3.3.1.min.js"></script>
	<script src="https://wp.w3layouts.com/dressup/wp-content/themes/Dress-Up/assets/js/slick.js"></script>
	<script src="https://wp.w3layouts.com/dressup/wp-content/themes/Dress-Up/assets/js/script.js"></script>
	<script src="https://wp.w3layouts.com/dressup/wp-content/themes/Dress-Up/assets/js/jquery.magnific-popup.min.js"></script>
	<!-- 전역변수 -->
	<script type="text/javascript">
	let imgs = ${imgs};
	</script>
	<script>
    window.onscroll = function () {
        scrollFunction()
    };
    
    function scrollFunction() {
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
            document.getElementById("movetop").style.display = "block";
        } else {
            document.getElementById("movetop").style.display = "none";
        }
    }
    // When the user clicks on the button, scroll to the top of the document
    function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
    }
    $(document).ready(function () {
        $('.popup-with-zoom-anim').magnificPopup({
            type: 'inline',

            fixedContentPos: false,
            fixedBgPos: true,

            overflowY: 'auto',

            closeBtnInside: true,
            preloader: false,

            midClick: true,
            removalDelay: 300,
            mainClass: 'my-mfp-zoom-in'
        });
        
        $('.popup-with-move-anim').magnificPopup({
            type: 'inline',

            fixedContentPos: false,
            fixedBgPos: true,
            
            overflowY: 'auto',
            
            closeBtnInside: true,
            preloader: false,

            midClick: true,
            removalDelay: 300,
            mainClass: 'my-mfp-slide-bottom'
        });
    });
    $(window).on("scroll", function () {
        var scroll = $(window).scrollTop();
        
        if (scroll >= 80) {
            $("#site-header").addClass("nav-fixed");
        } else {
            $("#site-header").removeClass("nav-fixed");
        }
    });
    
    //Main navigation Active Class Add Remove
    $(".navbar-toggler").on("click", function () {
        $("header").toggleClass("active");
    });
    $(document).on("ready", function () {
        if ($(window).width() > 991) {
            $("header").removeClass("active");
        }
        $(window).on("resize", function () {
            if ($(window).width() > 991) {
                $("header").removeClass("active");
            }
        });
    });
    <!-- disable body scroll which navbar is in active -->
    $(function () {
        $('.navbar-toggler').click(function () {
            $('body').toggleClass('noscroll');
        })
    });
	</script>

	<!-- bootstrap -->
	<script src="https://wp.w3layouts.com/dressup/wp-content/themes/Dress-Up/assets/js/bootstrap.min.js"></script>
	<!-- 주소에 의한 좌표값 -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7597f9ac4764ed761e1c845f61753445&libraries=services"></script>
	<script type="text/javascript">
	   var ps = new kakao.maps.services.Places();
	   function search(addr) {
		   console.log(addr);
	      ps.keywordSearch(addr,
	            placesSearchCB);
	   };
	   function placesSearchCB(data, status, pagination) {
	      if (status === kakao.maps.services.Status.OK) {
	         var bounds = new kakao.maps.LatLngBounds();
	         console.log(data[0].x+"++++"+data[0].y);
	         document.getElementById("x").value = data[0].x;
	         document.getElementById("y").value = data[0].y; 
	      }
	   };
	</script>
	<!-- 주소입력 api -->
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript">
		function findaddress() {
			console.log("findaddress");
	        new daum.Postcode({
	            oncomplete: function(data) {
	                var roadAddr = data.roadAddress; // 도로명 주소 변수
	                console.log(roadAddr);
	                document.getElementById("user_address").value = roadAddr;
	        		search( document.getElementById("user_address").value);
	            }
	        }).open();
	    }
	</script>
	<script src='https://wp.w3layouts.com/dressup/wp-content/themes/Dress-Up/js/navigation.js?ver=1.0.0' id='w3layouts-navigation-js'></script>
	<!-- input tag insert/remove -->
	<!-- 인풋태그 활성화 -->
	<script type="text/javascript">
	function add(element) {
		// 버튼의 name 속성으로 연관된 input의 id를 찾습니다.
		var targetId = 'display_' + element.getAttribute('name');
		// 해당 id를 가진 요소를 찾습니다.
		var target = document.getElementById(targetId);
		// 해당 요소가 존재하면 displaynone 클래스를 토글합니다.
		console.log(imgs);
		// 프로필 사진일 경우
		if (targetId === 'display_img'){
			target.classList.toggle('displaynone');
			if( target.classList.contains('displaynone')){
				document.getElementById('fileimgs').innerHTML = '';
				target.querySelector('input').value = '';
				document.getElementById('dontUpload').value= '';
				document.getElementById('main').value = '';
			}else{
				let imgsdiv = document.getElementById('fileimgs');
				for(let img of imgs){
					let imgbox = document.createElement('div');
					let imgEl = document.createElement('img');
					imgEl.setAttribute('src','resources/profileimg/'+img);
					imgEl.setAttribute('style','height: auto;width: 72px;max-height: 52px;');
				// 클릭하여 파일이름을 가져오고, 그 값을 인풋태그에 밸류값으로 "_" 로 연결하여 입력 // 서버에서 split 하여 파일이름 비교하여 삭제
					imgEl.addEventListener('click', function(){
						let elements = document.querySelectorAll('.main');
						elements.forEach(function(element) {
							element.style.color = 'black';
						});
						document.getElementById('user_oriimg').value = document.getElementById('user_oriimg').value + img +"_";
						console.log(document.getElementById('user_oriimg').value);
						imgbox.remove();
						});
					
					imgbox.appendChild(imgEl);
					imgbox.setAttribute('style','display: flex;flex-direction: column;');
					imgbox.setAttribute('class','imgbox');
					let mainbtn = document.createElement('div');
					mainbtn.setAttribute('class','btn main');
					mainbtn.innerText='Main';
					mainbtn.setAttribute('style','padding: 0px 0px 0px 0px;');
					mainbtn.addEventListener('click', function(){
						var elements = document.querySelectorAll('.main');
						elements.forEach(function(element) {
							element.style.color = 'black';
						});
						mainbtn.style.color = 'rgb(0 0 0 / 0%)';
						document.getElementById('main').value = img;
						console.log(document.getElementById('main').value);
					});
					imgbox.appendChild(mainbtn);
					imgsdiv.appendChild(imgbox);
				}
				let uploadfilesdiv = document.createElement('div');
				uploadfilesdiv.setAttribute('style','display: flex; flex-direction: row;')
				uploadfilesdiv.setAttribute('id','uploadfilesdiv')
				imgsdiv.appendChild(uploadfilesdiv);	
			}
		}else{
			target.classList.toggle('displaynone');
			if( target.classList.contains('displaynone')){
				target.querySelector('input').value= '';  
			}
		}
	}
	</script>
	<!-- 프로필 파일 사진 관리 -->
	<script type="text/javascript">
	document.getElementById('user_imgfiles').addEventListener('change', function(event) {
		console.log("업로드 실행");
		/* 메인프로필 선택 초기화 */
		let mainbtns = document.querySelectorAll('.main');
		mainbtns.forEach(function(mainbtn) {
			mainbtn.style.color = 'black';
			document.getElementById('main').value = '';
			document.getElementById('dontUpload').value = "";
		});
		let uploadfilesdiv = document.getElementById('uploadfilesdiv');
		uploadfilesdiv.innerHTML = '';
        let files = event.target.files; // 선택된 파일들을 가져옵니다.
        // 선택된 각 파일에 대해 미리보기 이미지를 생성합니다.
        console.log("새로 업로드 하는 파일들: "+files);
        for (let i = 0; i < files.length; i++) {
            let file = files[i];
           	let imgbox = document.createElement('div');
            let imgEl = document.createElement('img');
            imgEl.src = URL.createObjectURL(file); // 파일의 URL을 생성하여 이미지로 설정합니다.
            imgEl.setAttribute('style','height: auto;width: 72px;max-height: 52px;');
            imgEl.addEventListener('click', function(){
         	    imgbox.remove(); // 부모 요소를 삭제하여 이미지와 버튼을 함께 삭제합니다.
         	    document.getElementById('dontUpload').value = document.getElementById('dontUpload').value + file.name + "_";
                console.log("업로드 하지 않을 파일들: "+document.getElementById('dontUpload').value) // 업로드 한 파일을 서버로 전달한 뒤, 서버에 저장하지 않을 파일들 지정
                document.getElementById('main').value = '';
                let elements = document.querySelectorAll('.main');
				elements.forEach(function(element) {
					element.style.color = 'black';
				});
            });
            imgbox.appendChild(imgEl);
			imgbox.setAttribute('style','display: flex;flex-direction: column;');
			imgbox.setAttribute('class','imgbox');
			let mainbtn = document.createElement('div');
			mainbtn.setAttribute('class','btn main');
			mainbtn.innerText='Main';
			mainbtn.setAttribute('style','padding: 0px 0px 0px 0px;');
			mainbtn.addEventListener('click', function(){
				let elements = document.querySelectorAll('.main');
				elements.forEach(function(element) {
					element.style.color = 'black';
				});
				mainbtn.style.color = 'rgb(0 0 0 / 0%)';
				document.getElementById('main').value = file.name;
				console.log(document.getElementById('main').value); // 프로필사진으로 사용할 사진 저장 
			});
			imgbox.appendChild(mainbtn);
			uploadfilesdiv.appendChild(imgbox);
        }// files 반복 종료
    });
</script>
<script type="text/javascript">
	function isformOk22a(){
		// 입력한 비밀번호와 입력한 비밀번호가 다를경우 
		if (document.getElementById('user_pw').value !== document.getElementById('user_pwre').value) {
	        alert('입력하신 비밀번호가 확인 비밀번호와 다릅니다.');
	        document.getElementById('user_pw').focus();
	        return false; // 비밀번호가 일치하지 않으므로 서브밋 중단 되어야 하지만 중단 되지 않음
	    }
		/* 프로필 사진을 지정하지 않았을 경우 */
		if (document.getElementById('fileimgs').innerHTML !== '' && document.getElementById('main').value === '') {
		    alert('메인 프로필 사진을 지정해 하거나, 프로필 수정 버튼을 다시 눌러주세요.'); // 프로필 수정 버튼을 누르면 
			return false;
		}
		
		document.getElementById('user_img').value =  imgs.join('_');
		
		return true; 
	}
</script>
	
</body>

</html>
<!-- Cache served by breeze CACHE - Last modified: Tue, 12 Mar 2024 04:12:10 GMT -->
