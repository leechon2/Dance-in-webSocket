<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:if test="${msg != null }">
	<script type="text/javascript">
		alert('${msg}');
	</script>
</c:if>
<!DOCTYPE html>
<html lang="en-US">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="profile" href="https://gmpg.org/xfn/11" />
<meta name="author" content="W3Layouts.com" />

<link
	href="${pageContext.request.contextPath }/resources/CSS/style-liberty.css"
	rel="stylesheet" />
<title>2SC-Match :: site</title>
<meta name="robots" content="max-image-preview:large" />
<link rel="alternate" type="application/rss+xml"
	title="Dress Up WordPress Theme &raquo; Feed"
	href="https://wp.w3layouts.com/dressup/feed/" />
<link rel="alternate" type="application/rss+xml"
	title="Dress Up WordPress Theme &raquo; Comments Feed"
	href="https://wp.w3layouts.com/dressup/comments/feed/" />
<%@  include file="/WEB-INF/views/includes/head-resources.jsp"%>
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
</style>
<link rel="stylesheet" id="wp-block-library-css"
	href="${pageContext.request.contextPath }/resources/CSS/block-libarary.css?ver=6.2.4"
	media="all" />
<link rel="stylesheet" id="classic-theme-styles-css"
	href="${pageContext.request.contextPath }/resources/CSS/classic-themes.css?ver=6.2.4"
	media="all" />

<link rel="stylesheet" id="w3layouts-style-css"
	href="${pageContext.request.contextPath }/resources/CSS/wp-content-style.css?ver=1.0.0"
	media="all" />
<link rel="stylesheet" id="fm-frontend-css"
	href="${pageContext.request.contextPath }/resources/CSS/wp-content-foodmenu.css?ver=5.0.5"
	media="all" />
<link rel="stylesheet"
	id="recent-posts-widget-with-thumbnails-public-style-css"
	href="${pageContext.request.contextPath }/resources/CSS/wp-content-public.css?ver=7.1.1"
	media="all" />
<link rel="https://api.w.org/"
	href="https://wp.w3layouts.com/dressup/wp-json/" />
<link rel="alternate" type="application/json"
	href="https://wp.w3layouts.com/dressup/wp-json/wp/v2/pages/9" />
<link rel="EditURI" type="application/rsd+xml" title="RSD"
	href="https://wp.w3layouts.com/dressup/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml"
	href="https://wp.w3layouts.com/dressup/wp-includes/wlwmanifest.xml" />
<meta name="generator" content="WordPress 6.2.4" />
<link rel="canonical"
	href="https://wp.w3layouts.com/dressup/services-page/" />
<link rel="shortlink" href="https://wp.w3layouts.com/dressup/?p=9" />
<link rel="alternate" type="application/json+oembed"
	href="https://wp.w3layouts.com/dressup/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwp.w3layouts.com%2Fdressup%2Fservices-page%2F" />
<link rel="alternate" type="text/xml+oembed"
	href="https://wp.w3layouts.com/dressup/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwp.w3layouts.com%2Fdressup%2Fservices-page%2F&#038;format=xml" />

<style>
select, input[type="date"] {
	font-size: 14px;
	padding: 8px;
	margin-top: 5px;
	margin-bottom: 20px;
	width: 200px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

select:focus, input[type="date"]:focus {
	border-color: #007bff;
}
</style>
</head>

<body id="top-gap-fixed-header"
	class="page-template page-template-page-templates page-template-template-servicespage page-template-page-templatestemplate-servicespage-php page page-id-9">
	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0"
		height="0" focusable="false" role="none"
		style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;">
      <defs>
        <filter id="wp-duotone-dark-grayscale">
          <feColorMatrix color-interpolation-filters="sRGB"
			type="matrix"
			values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " />
          <feComponentTransfer color-interpolation-filters="sRGB">
            <feFuncR type="table" tableValues="0 0.49803921568627" />
            <feFuncG type="table" tableValues="0 0.49803921568627" />
            <feFuncB type="table" tableValues="0 0.49803921568627" />
            <feFuncA type="table" tableValues="1 1" />
          </feComponentTransfer>
          <feComposite in2="SourceGraphic" operator="in" />
        </filter>
      </defs></svg>
	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0"
		height="0" focusable="false" role="none"
		style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;">
      <defs>
        <filter id="wp-duotone-grayscale">
          <feColorMatrix color-interpolation-filters="sRGB"
			type="matrix"
			values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " />
          <feComponentTransfer color-interpolation-filters="sRGB">
            <feFuncR type="table" tableValues="0 1" />
            <feFuncG type="table" tableValues="0 1" />
            <feFuncB type="table" tableValues="0 1" />
            <feFuncA type="table" tableValues="1 1" />
          </feComponentTransfer>
          <feComposite in2="SourceGraphic" operator="in" />
        </filter>
      </defs></svg>
	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0"
		height="0" focusable="false" role="none"
		style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;">
      <defs>
        <filter id="wp-duotone-purple-yellow">
          <feColorMatrix color-interpolation-filters="sRGB"
			type="matrix"
			values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " />
          <feComponentTransfer color-interpolation-filters="sRGB">
            <feFuncR type="table"
			tableValues="0.54901960784314 0.98823529411765" />
            <feFuncG type="table" tableValues="0 1" />
            <feFuncB type="table"
			tableValues="0.71764705882353 0.25490196078431" />
            <feFuncA type="table" tableValues="1 1" />
          </feComponentTransfer>
          <feComposite in2="SourceGraphic" operator="in" />
        </filter>
      </defs></svg>
	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0"
		height="0" focusable="false" role="none"
		style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;">
      <defs>
        <filter id="wp-duotone-blue-red">
          <feColorMatrix color-interpolation-filters="sRGB"
			type="matrix"
			values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " />
          <feComponentTransfer color-interpolation-filters="sRGB">
            <feFuncR type="table" tableValues="0 1" />
            <feFuncG type="table" tableValues="0 0.27843137254902" />
            <feFuncB type="table"
			tableValues="0.5921568627451 0.27843137254902" />
            <feFuncA type="table" tableValues="1 1" />
          </feComponentTransfer>
          <feComposite in2="SourceGraphic" operator="in" />
        </filter>
      </defs></svg>
	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0"
		height="0" focusable="false" role="none"
		style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;">
      <defs>
        <filter id="wp-duotone-midnight">
          <feColorMatrix color-interpolation-filters="sRGB"
			type="matrix"
			values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " />
          <feComponentTransfer color-interpolation-filters="sRGB">
            <feFuncR type="table" tableValues="0 0" />
            <feFuncG type="table" tableValues="0 0.64705882352941" />
            <feFuncB type="table" tableValues="0 1" />
            <feFuncA type="table" tableValues="1 1" />
          </feComponentTransfer>
          <feComposite in2="SourceGraphic" operator="in" />
        </filter>
      </defs></svg>
	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0"
		height="0" focusable="false" role="none"
		style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;">
      <defs>
        <filter id="wp-duotone-magenta-yellow">
          <feColorMatrix color-interpolation-filters="sRGB"
			type="matrix"
			values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " />
          <feComponentTransfer color-interpolation-filters="sRGB">
            <feFuncR type="table" tableValues="0.78039215686275 1" />
            <feFuncG type="table" tableValues="0 0.94901960784314" />
            <feFuncB type="table"
			tableValues="0.35294117647059 0.47058823529412" />
            <feFuncA type="table" tableValues="1 1" />
          </feComponentTransfer>
          <feComposite in2="SourceGraphic" operator="in" />
        </filter>
      </defs></svg>
	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0"
		height="0" focusable="false" role="none"
		style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;">
      <defs>
        <filter id="wp-duotone-purple-green">
          <feColorMatrix color-interpolation-filters="sRGB"
			type="matrix"
			values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " />
          <feComponentTransfer color-interpolation-filters="sRGB">
            <feFuncR type="table"
			tableValues="0.65098039215686 0.40392156862745" />
            <feFuncG type="table" tableValues="0 1" />
            <feFuncB type="table" tableValues="0.44705882352941 0.4" />
            <feFuncA type="table" tableValues="1 1" />
          </feComponentTransfer>
          <feComposite in2="SourceGraphic" operator="in" />
        </filter>
      </defs></svg>
	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0"
		height="0" focusable="false" role="none"
		style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;">
      <defs>
        <filter id="wp-duotone-blue-orange">
          <feColorMatrix color-interpolation-filters="sRGB"
			type="matrix"
			values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " />
          <feComponentTransfer color-interpolation-filters="sRGB">
            <feFuncR type="table" tableValues="0.098039215686275 1" />
            <feFuncG type="table" tableValues="0 0.66274509803922" />
            <feFuncB type="table"
			tableValues="0.84705882352941 0.41960784313725" />
            <feFuncA type="table" tableValues="1 1" />
          </feComponentTransfer>
          <feComposite in2="SourceGraphic" operator="in" />
        </filter>
      </defs>
    </svg>
	<header id="site-header" class="main-header fixed-top">
		<div class="container w3HeaderLogoEd">
			<%@ include file="/WEB-INF/views/navbar.jsp"%>
		</div>
	</header>
	<!-- inner banner -->
	<section class="inner-banner py-5">
		<style>
</style>
		<div class="w3l-breadcrumb py-lg-5">
			<div class="container pt-4 pb-sm-4 ServicesPageBanner">
				<h4 class="inner-text-title font-weight-bold pt-sm-5 pt-4">
					Matching Page</h4>

				<ul class="breadcrumbs-custom-path AllBreadcrumbs">
					<a href="https://wp.w3layouts.com/dressup" rel="nofollow">Home</a>&nbsp;&nbsp;&#187;&nbsp;&nbsp;Matching
					Page
				</ul>
			</div>
		</div>
	</section>
	<!-- //inner banner -->

	<!-- ServicesPage Services Section -->

	<section class="w3l-team-61 py-5" id="team">
		<div class="container py-lg-5 py-md-4 py-2 LandingPageTeam">

			<label class="selectLabel" for="listSelect">조회 선택:</label> <select
				name="pets" id="listSelect" onchange="viewDate(this)">
				<option value="">--조회할 리스트 선택--▼</option>
				<option value="matching" id="matchingList">받고싶은 매칭</option>
				<option value="reqList" id="reqList">요청 보낸 리스트</option>
				<option value="respList" id="respList">요청 받은 리스트</option>
			</select> <span class="selectLabel" style="display: none;" id="dateSelect">날짜
				선택<input type="date" name="starttime" id="starttime" /> 부터<input
				type="date" name="lasttime" id="lasttime" /> 까지
			</span>

			<button type="button" class="btn btn-primary"
				onclick="selectChange('${sessionScope.userx}','${sessionScope.usery}','${sessionScope.loginId}')">조회</button>

			<!-- <div id ="star"> </div> -->


			<h3 class="title-style mb-lg-5 mb-4 text-center" id="listName">

			</h3>

			<div
				class="team-right-content row text-center justify-content-center"
				id="team-container">

				<!-- 프로필 -->
				<span>보고 싶은 리스트를 선택해주세요</span>
				<!-- 프로필 -->


			</div>
		</div>
	</section>

	<section></section>

	<!-- //ServicesPage Services -->

	<!-- ServicesPage Features -->

	<section></section>

	<section></section>

	<!-- //ServicesPage Features -->

	<!-- ServicesPage Pricing Section -->

	<section></section>

	<section></section>

	<!-- //ServicesPage Pricing Section -->

	<!-- footer -->

	<%@  include file="/WEB-INF/views/includes/body-footer.jsp"%>

	<!-- //footer -->

	<!-- Js scripts -->
	<!-- move top -->
	<button onclick="topFunction()" id="movetop" title="Go to top">
		<span class="fas fa-level-up-alt" aria-hidden="true"></span>
	</button>
	<script data-cfasync="false"
		src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>

	<!-- JQUERY -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script>
      // When the user scrolls down 20px from the top of the document, show the button
      window.onscroll = function () {
        scrollFunction();
      };

      function scrollFunction() {
        if (
          document.body.scrollTop > 20 ||
          document.documentElement.scrollTop > 20
        ) {
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
    </script>
	<!-- //move top -->

	<!-- common jquery plugin -->
	<!-- <script
		src="https://wp.w3layouts.com/dressup/wp-content/themes/Dress-Up/assets/js/jquery-3.3.1.min.js"></script> -->
	<!-- //common jquery plugin -->

	<!-- banner slick slider -->
	<script
		src="https://wp.w3layouts.com/dressup/wp-content/themes/Dress-Up/assets/js/slick.js"></script>
	<script
		src="https://wp.w3layouts.com/dressup/wp-content/themes/Dress-Up/assets/js/script.js"></script>
	<!-- //banner slick slider -->

	<!-- magnific-popup javascript -->
	<script
		src="https://wp.w3layouts.com/dressup/wp-content/themes/Dress-Up/assets/js/jquery.magnific-popup.min.js"></script>
	<script>
      $(document).ready(function () {
        $(".popup-with-zoom-anim").magnificPopup({
          type: "inline",

          fixedContentPos: false,
          fixedBgPos: true,

          overflowY: "auto",

          closeBtnInside: true,
          preloader: false,

          midClick: true,
          removalDelay: 300,
          mainClass: "my-mfp-zoom-in",
        });

        $(".popup-with-move-anim").magnificPopup({
          type: "inline",

          fixedContentPos: false,
          fixedBgPos: true,

          overflowY: "auto",

          closeBtnInside: true,
          preloader: false,

          midClick: true,
          removalDelay: 300,
          mainClass: "my-mfp-slide-bottom",
        });
      });
    </script>
	<!-- //magnific-popup javascript -->

	<!-- theme switch js (light and dark)-->
	<script
		src="https://wp.w3layouts.com/dressup/wp-content/themes/Dress-Up/assets/js/theme-change.js"></script>
	<!-- //theme switch js (light and dark)-->

	<!-- MENU-JS -->
	<script>
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
    </script>
	<!-- //MENU-JS -->

	<!-- disable body scroll which navbar is in active -->
	<script>
      $(function () {
        $(".navbar-toggler").click(function () {
          $("body").toggleClass("noscroll");
        });
      });
    </script>
	<!-- //disable body scroll which navbar is in active -->

	<!-- bootstrap -->
	<script
		src="https://wp.w3layouts.com/dressup/wp-content/themes/Dress-Up/assets/js/bootstrap.min.js"></script>
	<!-- //bootstrap -->
	<!-- //Js scripts -->

	<script
		src="https://wp.w3layouts.com/dressup/wp-content/themes/Dress-Up/js/navigation.js?ver=1.0.0"
		id="w3layouts-navigation-js"></script>

	<script>
      (function () {
        var js =
          "window['__CF$cv$params']={r:'863114415f2a3e1a',t:'MTcxMDIxODE0My4wNjIwMDA='};_cpo=document.createElement('script');_cpo.nonce='',_cpo.src='/cdn-cgi/challenge-platform/scripts/jsd/main.js',document.getElementsByTagName('head')[0].appendChild(_cpo);";
        var _0xh = document.createElement("iframe");
        _0xh.height = 1;
        _0xh.width = 1;
        _0xh.style.position = "absolute";
        _0xh.style.top = 0;
        _0xh.style.left = 0;
        _0xh.style.border = "none";
        _0xh.style.visibility = "hidden";
        document.body.appendChild(_0xh);
        function handler() {
          var _0xi = _0xh.contentDocument || _0xh.contentWindow.document;
          if (_0xi) {
            var _0xj = _0xi.createElement("script");
            _0xj.innerHTML = js;
            _0xi.getElementsByTagName("head")[0].appendChild(_0xj);
          }
        }
        if (document.readyState !== "loading") {
          handler();
        } else if (window.addEventListener) {
          document.addEventListener("DOMContentLoaded", handler);
        } else {
          var prev = document.onreadystatechange || function () {};
          document.onreadystatechange = function (e) {
            prev(e);
            if (document.readyState !== "loading") {
              document.onreadystatechange = prev;
              handler();
            }
          };
        }
      })();
    </script>

	<script>
    const reqListEl = document.querySelector('#reqList');
    const respListEl = document.querySelector('#respList');
    const matchingListEl = document.querySelector('#matchingList');
    const nickNameEl = document.getElementById("nickName");
    const starEl = document.getElementById("star");
    const listNameEl = document.getElementById("listName");
    const dateSelectEl = document.getElementById("dateSelect");
    
 	  function viewDate(selObj){
	    	 console.log(selObj.value);
	    	  const selVal =  selObj.value;
	    if(selVal =='matching'){
	    		  dateSelectEl.style.display='none';
	    		  listNameEl.innerText="Matching List";
	    	  }else if(selVal=='reqList'){
	    		  listNameEl.innerText="요청을 한List ";
	          	
	    		  dateSelectEl.style.display='inline-block';
	    	  }else if(selVal =='respList'){
	    		  listNameEl.innerText="요청 받은List ";
	    		  dateSelectEl.style.display='inline-block';
	    	  } 
	    	  
	    	  
	    	  
	      }
    
    
    
    
      function selectChange(startx,starty,startId) {
    	  var selectElement = document.getElementById('listSelect');
		  var selectedOptionId = selectElement.value;
    	 
    	  console.log("선택된 옵션값 " +selectedOptionId +"시작 아이디" + startId);
        if(selectedOptionId == 'matching'){
        	
        	console.log("matching");
        	$.ajax({
        		url: 'matchingList',
        		type :'post',
        		/* dataType:'json', */
        			data : {
        				'startx' : startx,
        				'starty' : starty,
        				'startId' :startId,
        			},
        			dataType : "json",
        			success: function(res) {
        				console.log(res);

        			    let teamContainer = document.getElementById('team-container');
        			    teamContainer.innerHTML="";
						if(res.length!==0){
							for(let mbti of res) {
								//새로운 col div 생성
								let newcolEl = document.createElement('div');
								newcolEl.className='col-lg-3 col-sm-6';
								//새로운 teams-gd 생성 
								let gdEl = document.createElement('div');
								gdEl.className='teams-gd';
								//새로운 teams-member 생성 
								let memberEl = document.createElement('div');
								memberEl.className='team-member';
								//새로운 teams-img 생성 
								let imgEl = document.createElement('div');
								imgEl.className='team-img';
								//새로운 teams-hover 생성 
								let hoverEl = document.createElement('div');
								hoverEl.className='team-hover';
								// 새로운 team-title div 생성
								let newTeamTitle = document.createElement('div');
								newTeamTitle.className = 'team-title p-4';
								let buttonAgreed = document.createElement('button');
								  buttonAgreed.className = 'btn btn-primary';
								  buttonAgreed.innerText="요청";
								 buttonAgreed.addEventListener('click', function(){
									 agreedClick(startId,mbti.id,newcolEl);
								 });
								 let buttonBan = document.createElement('button');
								  buttonBan.className = 'btn btn-primary';
								  buttonBan.innerText="거절";
								  buttonBan.addEventListener('click', function(){
									 banClick(startId,mbti.id,newcolEl);
								 });
								  let buttonBookMark = document.createElement('button');
								  buttonBookMark.className = 'btn btn-primary';
								  buttonBookMark.innerText="찜";
								  buttonBookMark.addEventListener('click', function(){
									  BookMarkClick(startId,mbti.id,newcolEl);
								 });
								// h5 요소 생성 및 설정
								let h5 = document.createElement('h5');
								let a = document.createElement('a');
								a.href = '#url'; // 링크 설정
								a.textContent = "문문"; // 서버로부터 받은 데이터를 사용하여 동적으로 이름 설정
								h5.appendChild(a);
								  //프로필을 보기 위한 이미지
								   memberEl.addEventListener('click', function(){
								 
									 let userId =mbti.id;
									 console.log(userId);
									 openProfile(userId);
								  });
								
								// nickname span 요소 생성 및 설정
								let nickNameSpan = document.createElement('span');
								nickNameSpan.className = 'nickname'; // 클래스로 변경
								nickNameSpan.textContent = mbti.nickname;
	
								// star span 요소 생성 및 설정
								let starSpan = document.createElement('span');
								starSpan.className = 'star'; // 클래스로 변경
								let result ="";
								for(let idx = 0;  idx < Number(mbti.mbtipoint); idx++){
									result +="♥";
								}
								starSpan.textContent = result;
								
								let distSpan = document.createElement('span');
								distSpan.className='distname';
								distSpan.textContent ="상대방 과의 거리는 "+mbti.dist + "M 입니다";
								// newTeamTitle div에 모든 요소 추가
								newTeamTitle.appendChild(nickNameSpan);
								newTeamTitle.appendChild(starSpan);
								newTeamTitle.appendChild(distSpan);
								newTeamTitle.appendChild(buttonAgreed);
								newTeamTitle.appendChild(buttonBan);
								newTeamTitle.appendChild(buttonBookMark);
								
								let imga = document.createElement('img');
								imga.src = `resources/profileimg/\${mbti.userimg}`;
								imgEl.appendChild(imga);
								
								newcolEl.appendChild(gdEl);
								gdEl.appendChild(memberEl);
								memberEl.appendChild(imgEl);
								memberEl.appendChild(hoverEl);
								gdEl.appendChild(newTeamTitle);
		   
								// 최종적으로 team-container div에 새로운 team-title div 추가
								teamContainer.appendChild(newcolEl);
							}
						}else{
							teamContainer.innerText = '일정거리 안에 추천 대상이 존재하지 않습니다.';
						}
        			}
        		});
        	
        } else if(selectedOptionId =='reqList'){
        	console.log("reqList");
        	
       
       	    	let startTimeEl = document.getElementById('starttime');
       	    	let lastTimeEl = document.getElementById('lasttime');
       	    	console.log('시작' + startTimeEl.value + '마지막' +lastTimeEl.value);
       	  
       	    	$.ajax({
       	    		
       	    		url: 'waitMatcing',
       	    		type :'post',
       	    		/* dataType:'json', */
       	    			data : {
       	    				'startTime' : startTimeEl.value,
       	    				'lastTime' : lastTimeEl.value,
       	    				'startId' :startId,
       	    			},
       	    			dataType : "json",
       	    		
       	    		success: function (res) {
       	    			console.log(res);
       	    			let teamContainer = document.getElementById('team-container');
       				    teamContainer.innerHTML="";
       				    for(let matching of res) {
       				    	//새로운 col div 생성
       				    	let newcolEl = document.createElement('div');
       				    	newcolEl.className='col-lg-3 col-sm-6';
       				    	//새로운 teams-gd 생성 
       				    	let gdEl = document.createElement('div');
       				    	gdEl.className='teams-gd';
       				    	//새로운 teams-member 생성 
       				    	let memberEl = document.createElement('div');
       				    	memberEl.className='team-member';
       				    	//새로운 teams-img 생성 
       				    	let imgEl = document.createElement('div');
       				    	imgEl.className='team-img';
       				    	//새로운 teams-hover 생성 
       				    	let hoverEl = document.createElement('div');
       				    	hoverEl.className='team-hover';
       				        // 새로운 team-title div 생성
       				        let newTeamTitle = document.createElement('div');
       				        newTeamTitle.className = 'team-title p-4';
       				  
       				      	let buttonMatchingDelete = document.createElement('button');
       				      	buttonMatchingDelete.className = 'btn btn-primary';
       				      	buttonMatchingDelete.innerText="요청 취소";
       				      	buttonMatchingDelete.addEventListener('click', function(){
       				      		MatchingDeleteClick(startId,matching.id,newcolEl);
       				     	});
       				        // h5 요소 생성 및 설정
       				        let h5 = document.createElement('h5');
       				        let a = document.createElement('a');
       				        a.href = '#url'; // 링크 설정
       				        a.textContent = "문문"; // 서버로부터 받은 데이터를 사용하여 동적으로 이름 설정
       				        h5.appendChild(a);
       				      	
       				        // nickname span 요소 생성 및 설정
       				        let nickNameSpan = document.createElement('span');
       				        nickNameSpan.className = 'nickname'; // 클래스로 변경
       				        nickNameSpan.textContent = matching.nickname;

       				        // star span 요소 생성 및 설정
       				        let starSpan = document.createElement('span');
       				        starSpan.className = 'star'; // 클래스로 변경
       				        let result ="";
       				        for(let idx = 0;  idx < Number(matching.mbtiresult); idx++){
       				        	result +="♥";
       				        }
       				        starSpan.textContent = result;
       				        // newTeamTitle div에 모든 요소 추가
       				        newTeamTitle.appendChild(nickNameSpan);
       				        newTeamTitle.appendChild(starSpan);
       				        newTeamTitle.appendChild(buttonMatchingDelete);
       				    
       				        
       				        let imga = document.createElement('img');
       				    	imga.src = `resources/profileimg/\${matching.userimg}`;
       				        imgEl.appendChild(imga);
       				        
       				        newcolEl.appendChild(gdEl);
       				        gdEl.appendChild(memberEl);
       				        memberEl.appendChild(imgEl);
       				        memberEl.appendChild(hoverEl);
       				        gdEl.appendChild(newTeamTitle);

       				        // 최종적으로 team-container div에 새로운 team-title div 추가
       				        teamContainer.appendChild(newcolEl);
       				    }

       				}
       	    		
       	    	});

        } else if(selectedOptionId == 'respList'){
        	console.log('respList');

   	    	let startTimeEl = document.getElementById('starttime');
   	    	let lastTimeEl = document.getElementById('lasttime');
   	    	console.log('시작' + startTimeEl.value + '마지막' +lastTimeEl.value);
   	  
   	    	$.ajax({
   	    		
   	    		url: 'respMatcing',
   	    		type :'post',
   	    		/* dataType:'json', */
   	    			data : {
   	    				'startTime' : startTimeEl.value,
   	    				'lastTime' : lastTimeEl.value,
   	    				'startId' :startId,
   	    			},
   	    			dataType : "json",
   	    		
   	    		success: function (res) {
   	    			console.log(res);
   	    			let teamContainer = document.getElementById('team-container');
   				    teamContainer.innerHTML="";
   				    for(let successMatching of res) {
   				    	//새로운 col div 생성
   				    	let newcolEl = document.createElement('div');
   				    	newcolEl.className='col-lg-3 col-sm-6';
   				    	//새로운 teams-gd 생성 
   				    	let gdEl = document.createElement('div');
   				    	gdEl.className='teams-gd';
   				    	//새로운 teams-member 생성 
   				    	let memberEl = document.createElement('div');
   				    	memberEl.className='team-member';
   				    	//새로운 teams-img 생성 
   				    	let imgEl = document.createElement('div');
   				    	imgEl.className='team-img';
   				    	//새로운 teams-hover 생성 
   				    	let hoverEl = document.createElement('div');
   				    	hoverEl.className='team-hover';
   				        // 새로운 team-title div 생성
   				        let newTeamTitle = document.createElement('div');
   				        newTeamTitle.className = 'team-title p-4';
   				  
   				      	let buttonMatchingDelete = document.createElement('button');
   				      	buttonMatchingDelete.className = 'btn btn-primary';
   				      	buttonMatchingDelete.innerText="거절";
   				      	buttonMatchingDelete.addEventListener('click', function(){
   				      		rejectClick(startId,successMatching.id,newcolEl);
   				     	});
   				      	
   				      	
   				 	let buttonMatchingSuccess = document.createElement('button');
   				 		buttonMatchingSuccess.className = 'btn btn-primary';
   						buttonMatchingSuccess.innerText="수락";
   						buttonMatchingSuccess.addEventListener('click', function(){
   							successClick(startId,successMatching.id,newcolEl);
				     	});
   				        // h5 요소 생성 및 설정
   				        let h5 = document.createElement('h5');
   				        let a = document.createElement('a');
   				        a.href = '#url'; // 링크 설정
   				        a.textContent = "문문"; // 서버로부터 받은 데이터를 사용하여 동적으로 이름 설정
   				        h5.appendChild(a);
   				      	
   				        // nickname span 요소 생성 및 설정
   				        let nickNameSpan = document.createElement('span');
   				        nickNameSpan.className = 'nickname'; // 클래스로 변경
   				        nickNameSpan.textContent = successMatching.nickname;

   				        // star span 요소 생성 및 설정
   				        let starSpan = document.createElement('span');
   				        starSpan.className = 'star'; // 클래스로 변경
   				        let result ="";
   				        for(let idx = 0;  idx < Number(successMatching.mbtiresult); idx++){
   				        	result +="♥";
   				        }
   				        starSpan.textContent = result;
   				        // newTeamTitle div에 모든 요소 추가
   				        newTeamTitle.appendChild(nickNameSpan);
   				        newTeamTitle.appendChild(starSpan);
   				     	newTeamTitle.appendChild(buttonMatchingSuccess);
   				     newTeamTitle.appendChild(buttonMatchingDelete);
   				        
   				        let imga = document.createElement('img');
   				     	imga.src = `resources/profileimg/\${successMatching.userimg}`;
   				        imgEl.appendChild(imga);
   				        
   				        newcolEl.appendChild(gdEl);
   				        gdEl.appendChild(memberEl);
   				        memberEl.appendChild(imgEl);
   				        memberEl.appendChild(hoverEl);
   				        gdEl.appendChild(newTeamTitle);

   				        // 최종적으로 team-container div에 새로운 team-title div 추가
   				        teamContainer.appendChild(newcolEl);
   				    }

   				}
   	    		
   	    	});   
        }
        return false;
      }
      
     
      
      function agreedClick(startId,userId,elObj) {
		console.log('수락');
		console.log(elObj);
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
    				alert("요청하셧습니다");
      				//location.reload();
    				elObj.remove();
						}else{
      					
      				}
    			}
    			
		});
		
	}
      function banClick(startId,userId,elObj) {
    	  console.log('거절');
    	  console.log(elObj);
    	  $.ajax({
    		  
      		url: 'banClick',
      		type :'post',
      		/* dataType:'json',  */
      			data : {
      				
      				'startId' :startId,
      				'userId' :userId,
      			},
      			async:false,
      			success: function(res) {
      				console.log(res);
      				if(res == "Y"){
      				alert("거절하셨습니다");
      				/* location.reload(); */
      				elObj.remove();
      				}else{
      					
      				}
      				
      				
      			},
      			error:function(xhr,status,error){
      				console.error(xhr,status,error);
      			}
  		});
	}
      
      function BookMarkClick(startId,userId,elObj) {
    	  console.log("찜 목록");
    	  $.ajax({
    		  
        		url: 'bookMarkClick',
        		type :'post',
        		/* dataType:'json',  */
        			data : {
        				
        				'startId' :startId,
        				'userId' :userId,
        			},
        			async:false,
        			success: function(res) {
        				console.log(res);
        				if(res == "Y"){
        				alert("찜하셨습니다");
        				/* location.reload(); */
        				elObj.remove();
        				}else{
        					
        				}
        				
        				
        			},
    	  })
		
	}
      function MatchingDeleteClick(startId,userId,elObj) {
	    	
	    	$.ajax({
	    		url:'updateMatching',
	    		type:'post',
	    		data : {
					'userId' : userId,
					'startId' :startId,
				},
				async:false,
	    		
	    		success: function (res) {
				console.log(res);
				if(res == "Y"){
				alert("매칭을 취소하셧습니다");
					//location.reload();
				elObj.remove();
					}else{
						
					}
			}
	    	});
			
		}
      function successClick(startId,userId,elObj) {
  		console.log('수락');
  		console.log(elObj);
  		$.ajax({
      		url: 'successClick',
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
      
      function rejectClick(startId,userId,elObj) {
    		console.log('수락');
    		console.log(elObj);
    		$.ajax({
        		url: 'rejectClick',
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
      
     
      function openProfile(userId) {
  	    // 팝업 창을 열고 크기를 설정합니다.
  	    var popupWidth = 605;
  	    var popupHeight = 737;
  	    var left = (screen.width - popupWidth) / 2;
  	    var top = (screen.height - popupHeight) / 2;
  	    var popupOptions = "width=" + popupWidth + ",height=" + popupHeight + ",left=" + left + ",top=" + top;
  	    
  	    var popupWindow = window.open("Profilenew?userId=" + userId, "popup", popupOptions);
  	    // 팝업 창의 크기를 변경하지 못하도록 고정
  		popupWindow.addEventListener('resize', function() {
      	    popupWindow.resizeTo(popupWidth, popupHeight);
  		    });
    		}
    </script>
</body>
</html>
<!-- Cache served by breeze CACHE - Last modified: Tue, 12 Mar 2024 04:15:33 GMT -->
