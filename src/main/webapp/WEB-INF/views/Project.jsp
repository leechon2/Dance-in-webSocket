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
<!-- JQUERY -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="https://gmpg.org/xfn/11">
<meta name="author" content="W3Layouts.com" />

<link
	href="${pageContext.request.contextPath }/resources/CSS/style-liberty.css"
	rel="stylesheet" />
<title>2SC-Match :: site</title>
<meta name='robots' content='max-image-preview:large' />
<link rel="alternate" type="application/rss+xml"
	title="Dress Up WordPress Theme &raquo; Feed"
	href="https://wp.w3layouts.com/dressup/feed/" />
<link rel="alternate" type="application/rss+xml"
	title="Dress Up WordPress Theme &raquo; Comments Feed"
	href="https://wp.w3layouts.com/dressup/comments/feed/" />
<script>
window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/14.0.0\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/14.0.0\/svg\/","svgExt":".svg","source":{"concatemoji":"https:\/\/wp.w3layouts.com\/dressup\/wp-includes\/js\/wp-emoji-release.min.js?ver=6.2.4"}};
/*! This file is auto-generated */
!function(e,a,t){var n,r,o,i=a.createElement("canvas"),p=i.getContext&&i.getContext("2d");function s(e,t){p.clearRect(0,0,i.width,i.height),p.fillText(e,0,0);e=i.toDataURL();return p.clearRect(0,0,i.width,i.height),p.fillText(t,0,0),e===i.toDataURL()}function c(e){var t=a.createElement("script");t.src=e,t.defer=t.type="text/javascript",a.getElementsByTagName("head")[0].appendChild(t)}for(o=Array("flag","emoji"),t.supports={everything:!0,everythingExceptFlag:!0},r=0;r<o.length;r++)t.supports[o[r]]=function(e){if(p&&p.fillText)switch(p.textBaseline="top",p.font="600 32px Arial",e){case"flag":return s("\ud83c\udff3\ufe0f\u200d\u26a7\ufe0f","\ud83c\udff3\ufe0f\u200b\u26a7\ufe0f")?!1:!s("\ud83c\uddfa\ud83c\uddf3","\ud83c\uddfa\u200b\ud83c\uddf3")&&!s("\ud83c\udff4\udb40\udc67\udb40\udc62\udb40\udc65\udb40\udc6e\udb40\udc67\udb40\udc7f","\ud83c\udff4\u200b\udb40\udc67\u200b\udb40\udc62\u200b\udb40\udc65\u200b\udb40\udc6e\u200b\udb40\udc67\u200b\udb40\udc7f");case"emoji":return!s("\ud83e\udef1\ud83c\udffb\u200d\ud83e\udef2\ud83c\udfff","\ud83e\udef1\ud83c\udffb\u200b\ud83e\udef2\ud83c\udfff")}return!1}(o[r]),t.supports.everything=t.supports.everything&&t.supports[o[r]],"flag"!==o[r]&&(t.supports.everythingExceptFlag=t.supports.everythingExceptFlag&&t.supports[o[r]]);t.supports.everythingExceptFlag=t.supports.everythingExceptFlag&&!t.supports.flag,t.DOMReady=!1,t.readyCallback=function(){t.DOMReady=!0},t.supports.everything||(n=function(){t.readyCallback()},a.addEventListener?(a.addEventListener("DOMContentLoaded",n,!1),e.addEventListener("load",n,!1)):(e.attachEvent("onload",n),a.attachEvent("onreadystatechange",function(){"complete"===a.readyState&&t.readyCallback()})),(e=t.source||{}).concatemoji?c(e.concatemoji):e.wpemoji&&e.twemoji&&(c(e.twemoji),c(e.wpemoji)))}(window,document,window._wpemojiSettings);
</script>

<link rel='stylesheet' id='w3layouts-style-css'
	href='${pageContext.request.contextPath }/resources/CSS/wp-content-style.css?ver=1.0.0'
	media='all' />
<link rel='stylesheet' id='fm-frontend-css'
	href='${pageContext.request.contextPath }/resources/CSS/wp-content-foodmenu.css?ver=5.0.5'
	media='all' />
<link rel='stylesheet'
	id='recent-posts-widget-with-thumbnails-public-style-css'
	href='${pageContext.request.contextPath }/resources/CSS/wp-content-public.css?ver=7.1.1'
	media='all' />
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
<body id="top-gap-fixed-header"
	class="home page-template page-template-page-templates page-template-template-homepage page-template-page-templatestemplate-homepage-php page page-id-7">
	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0"
		height="0" focusable="false" role="none"
		style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;">
		<defs>
		<filter id="wp-duotone-dark-grayscale">
		<feColorMatrix color-interpolation-filters="sRGB" type="matrix"
			values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " />
		<feComponentTransfer color-interpolation-filters="sRGB">
		<feFuncR type="table" tableValues="0 0.49803921568627" />
		<feFuncG type="table" tableValues="0 0.49803921568627" />
		<feFuncB type="table" tableValues="0 0.49803921568627" />
		<feFuncA type="table" tableValues="1 1" /></feComponentTransfer>
		<feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg>
	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0"
		height="0" focusable="false" role="none"
		style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;">
		<defs>
		<filter id="wp-duotone-grayscale">
		<feColorMatrix color-interpolation-filters="sRGB" type="matrix"
			values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " />
		<feComponentTransfer color-interpolation-filters="sRGB">
		<feFuncR type="table" tableValues="0 1" />
		<feFuncG type="table" tableValues="0 1" />
		<feFuncB type="table" tableValues="0 1" />
		<feFuncA type="table" tableValues="1 1" /></feComponentTransfer>
		<feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg>
	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0"
		height="0" focusable="false" role="none"
		style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;">
		<defs>
		<filter id="wp-duotone-purple-yellow">
		<feColorMatrix color-interpolation-filters="sRGB" type="matrix"
			values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " />
		<feComponentTransfer color-interpolation-filters="sRGB">
		<feFuncR type="table" tableValues="0.54901960784314 0.98823529411765" />
		<feFuncG type="table" tableValues="0 1" />
		<feFuncB type="table" tableValues="0.71764705882353 0.25490196078431" />
		<feFuncA type="table" tableValues="1 1" /></feComponentTransfer>
		<feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg>
	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0"
		height="0" focusable="false" role="none"
		style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;">
		<defs>
		<filter id="wp-duotone-blue-red">
		<feColorMatrix color-interpolation-filters="sRGB" type="matrix"
			values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " />
		<feComponentTransfer color-interpolation-filters="sRGB">
		<feFuncR type="table" tableValues="0 1" />
		<feFuncG type="table" tableValues="0 0.27843137254902" />
		<feFuncB type="table" tableValues="0.5921568627451 0.27843137254902" />
		<feFuncA type="table" tableValues="1 1" /></feComponentTransfer>
		<feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg>
	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0"
		height="0" focusable="false" role="none"
		style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;">
		<defs>
		<filter id="wp-duotone-midnight">
		<feColorMatrix color-interpolation-filters="sRGB" type="matrix"
			values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " />
		<feComponentTransfer color-interpolation-filters="sRGB">
		<feFuncR type="table" tableValues="0 0" />
		<feFuncG type="table" tableValues="0 0.64705882352941" />
		<feFuncB type="table" tableValues="0 1" />
		<feFuncA type="table" tableValues="1 1" /></feComponentTransfer>
		<feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg>
	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0"
		height="0" focusable="false" role="none"
		style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;">
		<defs>
		<filter id="wp-duotone-magenta-yellow">
		<feColorMatrix color-interpolation-filters="sRGB" type="matrix"
			values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " />
		<feComponentTransfer color-interpolation-filters="sRGB">
		<feFuncR type="table" tableValues="0.78039215686275 1" />
		<feFuncG type="table" tableValues="0 0.94901960784314" />
		<feFuncB type="table" tableValues="0.35294117647059 0.47058823529412" />
		<feFuncA type="table" tableValues="1 1" /></feComponentTransfer>
		<feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg>
	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0"
		height="0" focusable="false" role="none"
		style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;">
		<defs>
		<filter id="wp-duotone-purple-green">
		<feColorMatrix color-interpolation-filters="sRGB" type="matrix"
			values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " />
		<feComponentTransfer color-interpolation-filters="sRGB">
		<feFuncR type="table" tableValues="0.65098039215686 0.40392156862745" />
		<feFuncG type="table" tableValues="0 1" />
		<feFuncB type="table" tableValues="0.44705882352941 0.4" />
		<feFuncA type="table" tableValues="1 1" /></feComponentTransfer>
		<feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg>
	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 0 0" width="0"
		height="0" focusable="false" role="none"
		style="visibility: hidden; position: absolute; left: -9999px; overflow: hidden;">
		<defs>
		<filter id="wp-duotone-blue-orange">
		<feColorMatrix color-interpolation-filters="sRGB" type="matrix"
			values=" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 " />
		<feComponentTransfer color-interpolation-filters="sRGB">
		<feFuncR type="table" tableValues="0.098039215686275 1" />
		<feFuncG type="table" tableValues="0 0.66274509803922" />
		<feFuncB type="table" tableValues="0.84705882352941 0.41960784313725" />
		<feFuncA type="table" tableValues="1 1" /></feComponentTransfer>
		<feComposite in2="SourceGraphic" operator="in" /></filter></defs></svg>
	<header id="site-header" class="main-header fixed-top">
		<div class="container w3HeaderLogoEd">
			<%@ include file="/WEB-INF/views/navbar.jsp"%>
		</div>
	</header>
	<div class="banner-wrap">
		<div class="banner-slider">
			<!-- hero slide start -->
			<div class="banner-slide bg1">
				<style>
.bg1 {
	background:
		url(${pageContext.request.contextPath }/resources/CSS/Image/background.webp);
}
</style>
				<div class="container HomePageBannerSlider">
					<div class="hero-content">
						<p data-animation="fadeInDown" class="mb-2">Stitching</p>
						<h1 data-animation="flipInX" data-delay="0.8s" data-color="#fff">
							당신의 <span>새로운</span> 만남!
						</h1>
						<div class="cta-btn" data-animation="fadeInUp" data-delay="1s">
							<a href="#url" class="btn btn-style btn-primary">View More</a>
						</div>
					</div>
				</div>
				<div class="hero-overlay"></div>
			</div>
			<!-- hero slide end -->
			<!-- hero slide start -->
			<div class="banner-slide bg2">
				<style>
.bg2 {
	background:
		url(${pageContext.request.contextPath }/resources/CSS/Image/background2.webp);
}
</style>
				<div class="container HomePageBannerSlider">
					<div class="hero-content">
						<p data-animation="fadeInDown" class="mb-2">New Trends</p>
						<h1 data-animation="fadeInDown" data-delay="0.8s"
							data-color="#fff">
							새로운 <span>스타일의</span> 이성
						</h1>
						<div class="cta-btn" data-animation="fadeInDown" data-delay="1s">
							<a href="#url" class="btn btn-style btn-primary">View More</a>
						</div>
					</div>
				</div>
				<div class="hero-overlay"></div>
			</div>
			<!-- hero slide end -->
			<!-- hero slide start -->
			<div class="banner-slide bg3">
				<style>
.bg3 {
	background:
		url(${pageContext.request.contextPath }/resources/CSS/Image/background3.webp);
}
</style>
				<div class="container HomePageBannerSlider">
					<div class="hero-content">
						<p data-animation="fadeInUp" class="mb-2">New Models</p>
						<h1 data-animation="fadeInUp" data-color="#fff" data-delay="0.8s">
							새로운 방식의 <span>상대방의</span> 점수를
						</h1>
						<div class="cta-btn" data-animation="fadeInDown" data-delay="1s">
							<a href="${pageContext.request.contextPath }/matching-page"
								class="btn btn-style btn-primary">View More</a>
						</div>
					</div>
				</div>
				<div class="hero-overlay"></div>
			</div>
			<!-- hero slide end -->
			<!-- hero slide start -->
			<div class="banner-slide bg4">
				<style>
.bg4 {
	background:
		url(${pageContext.request.contextPath }/resources/CSS/Image/background4.webp);
}
</style>
				<div class="container HomePageBannerSlider">
					<div class="hero-content">
						<p data-animation="fadeInDown" class="mb-2">Fashion Look</p>
						<h1 data-animation="flipInX" data-color="#fff" data-delay="0.8s">
							많은 <span>이용</span> 바랍니다
						</h1>
						<div class="cta-btn" data-animation="fadeInUp" data-delay="1s">
							<a href="${pageContext.request.contextPath }/matching-page"
								class="btn btn-style btn-primary">View More</a>
						</div>
					</div>
				</div>
				<div class="hero-overlay"></div>
			</div>
			<!-- hero slide end -->
		</div>
	</div>

	<div class="w3l-servicesblock2 py-5" id="services">
		<div class="container py-lg-5 py-md-4 py-2 HomePageServices">
			<h3 class="title-style text-center mb-lg-5 mb-4">
				최근 <span>등록한 회원을 확인해보세요!</span>
			</h3>
			<div class="row justify-content-center" id="team-maincontainer">
				<!--team-maincontainer 실행   -->

			</div>
			<div class="text-center mt-md-5 mt-5 pt-lg-4">
				<a href="${pageContext.request.contextPath }/matching-page"
					class="btn btn-style">더 많은 회원 매칭</a>
			</div>
		</div>
	</div>
	<div class="w3l-news" id="homeblog">
		<div class="container py-lg-5 py-md-4 py-2 HomepageBlogPosts">
			<h3 class="title-style text-center mb-lg-5 mb-4">
				최근<span> 등록된 게시물을 확인해보세요!</span>
			</h3>
			<div class="row justify-content-center" id="mainContent">
				<!--mainContent 실행  -->

			</div>
		</div>
		<div class="text-center mb-md-5  pt-lg-4" id="text-Center2">
			<a href="${pageContext.request.contextPath }/BoardList-P"
				class="btn btn-style" id="btn-more2">더 많은 게시물 보기</a>
		</div>
	</div>

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
	<script>
    // When the user scrolls down 20px from the top of the document, show the button
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
</script>
	<!-- //move top -->

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
        $('.navbar-toggler').click(function () {
            $('body').toggleClass('noscroll');
        })
    });
</script>
	<!-- //disable body scroll which navbar is in active -->

	<!-- bootstrap -->
	<script
		src="https://wp.w3layouts.com/dressup/wp-content/themes/Dress-Up/assets/js/bootstrap.min.js"></script>
	<!-- //bootstrap -->
	<!-- //Js scripts -->



	<script
		src='https://wp.w3layouts.com/dressup/wp-content/themes/Dress-Up/js/navigation.js?ver=1.0.0'
		id='w3layouts-navigation-js'></script>

	<script src="https://kit.fontawesome.com/b439dbdb6d.js"
		crossorigin="anonymous"></script>
	<script type="text/javascript">
    window.onload = function() {
        mainList('${sessionScope.loginId}');
        mainBoardList();// startId는 필요에 따라 적절한 값을 사용
    };
    function mainList(startId) {

    	console.log('main 시작');
    	
    	$.ajax({
    		
		url: 'mainList',
		type :'post',
		/* dataType:'json', */
			data : {
				'startId' :startId,
			},
			dataType : "json",
		
		success: function (res) {
			console.log(res);
			let teamContainer = document.getElementById('team-maincontainer');
			teamContainer.innerHTML="";
		    for(let mainList of res) {
		    	//새로운 col div 생성
		    	let newcolEl = document.createElement('div');
		    	newcolEl.className='col-lg-3 col-sm-6 mt-sm-0 mt-4';
		    	//새로운 teams-gd 생성 
		    	let grids5El = document.createElement('div');
		    	grids5El.className='grids5-info';
		    
		    	//새로운 teams-member 생성 
		    	let blogEl = document.createElement('a');
		    	blogEl.className='blog-image d-block zoom';
		    	//새로운 teams-img 생성 
		    	let imgEl = document.createElement('img');
		    	imgEl.className='img-fluid radius-image';
		    	imgEl.style.width = '300px'; 
		    	imgEl.style.height = '330px';
		    	//새로운 teams-hover 생성 
		    	let overlayEl = document.createElement('div');
		    	overlayEl.className='image-overlay';
		        // 새로운 team-title div 생성
		        let pageEl = document.createElement('p');
		        pageEl.className = 'text-weight';
		        let plocationEl = document.createElement('p');
		        plocationEl.className = 'text-weight';
		        let introduceEl = document.createElement('p');
		        introduceEl.className = 'text-weight';
		        let diviconEl = document.createElement('div');
		        diviconEl.className='iconic-plus';
		    	  let iconEl = document.createElement('i');
		    	  iconEl.className='fas fa-plus';
		    	  imgEl.src = `resources/profileimg/\${mainList.userimg}`; 
		    	 pageEl.textContent= mainList.mbti;
		    	 plocationEl.textContent=mainList.id;
		    	 introduceEl.textContent=mainList.nickname;
		    	 
		    	 blogEl.addEventListener('click', function(){
		    		 
		    		 let userId =mainList.id;
		    		 openProfile(userId);
	
		
			     	});
		    	 
		    	 
		        diviconEl.appendChild(iconEl);
		        overlayEl.appendChild(diviconEl);// 누락된 추가 과정
		        overlayEl.appendChild(pageEl);
		        overlayEl.appendChild(plocationEl);
		        overlayEl.appendChild(introduceEl);
		        blogEl.appendChild(imgEl);
		        blogEl.appendChild(overlayEl);
		        grids5El.appendChild(blogEl);
		        newcolEl.appendChild(grids5El);


		        // 최종적으로 team-container div에 새로운 team-title div 추가
		        teamContainer.appendChild(newcolEl);
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
    
    function mainBoardList() {
    	
    	$.ajax({
		url:'mainBoardList',
		type:'post',
		dataType:'json',
		
		success: function (res) {
			console.log(res);
			let mainContent = document.getElementById('mainContent');
			for(let mainBoardList of res){
				 let colDiv = document.createElement('div');
				  colDiv.className = 'col-lg-4 col-md-6 mt-4';
			  colDiv.innerHTML = `
					
					<div class="grids5-info">

						<a href="https://wp.w3layouts.com/dressup/2022/01/19/hello-world/"
							class="blog-image d-block zoom">

							<div class="post-thumbnail">
								<img width="640" height="426"
									src="resources/boardImgUpload/\${mainBoardList.boardimg}"
									class="attachment-post-thumbnail size-post-thumbnail wp-post-image"
									alt="" decoding="async" loading="lazy">
									
							</div>
							<!-- .post-thumbnail -->

							<div class="image-overlay">
								<span>♥</span>
							</div>
						</a>

						<div class="blog-info card-body blog-details">

							<div class="d-flex align-items-center justify-content-between">

								<h6 class="post mb-0">
									<i class="fas fa-user"></i> <a class="url fn n"
										href="https://wp.w3layouts.com/dressup/author/w3layouts/">\${mainBoardList.boardid}</a>
								</h6>

								<h6 class="date">
									<i class="fas fa-clock"></i>\${mainBoardList.boardregdate}
								</h6>

							</div>

							<h4>
								<a
									href="${pageContext.request.contextPath }/Board-page?boardnumber=\${mainBoardList.boardnumber}"
									class="blog-desc"> \${mainBoardList.boardtitle} </a>
							</h4>

							<!-- <p class="mt-3">At corrupti odit At iure facere,
                          porro repellat officia quas, magnam assumenda.</p> -->

							<a
								
								class="read">조회수 + \${mainBoardList.boardviews}</a>

						</div>
					</div>
				
			  `;
			  mainContent.appendChild(colDiv);
			}
			}
    	});
    }
    
    </script>


</body>

</html>
<!-- Cache served by breeze CACHE - Last modified: Tue, 12 Mar 2024 04:12:10 GMT -->
