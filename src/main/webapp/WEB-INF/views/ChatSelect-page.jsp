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
<%@  include file="/WEB-INF/views/includes/head-resources.jsp"%>
</head>

<body id="top-gap-fixed-header"
	class="page-template page-template-page-templates page-template-template-aboutpage page-template-page-templatestemplate-aboutpage-php page page-id-8">

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
			<div class="container pt-4 pb-sm-4 AboutPageBanner">
				<h4 class="inner-text-title font-weight-bold pt-sm-5 pt-4">
					Chating</h4>

				<ul class="breadcrumbs-custom-path AllBreadcrumbs">
					<a href="https://wp.w3layouts.com/dressup" rel="nofollow">Home</a>&nbsp;&nbsp;&#187;&nbsp;&nbsp;Chat
					page
				</ul>
			</div>
		</div>
	</section>
	<!-- //inner banner -->

	<!-- AboutPage about section -->

	<section></section>

	<section></section>

	<!-- AboutPage about section -->

	<!-- AboutPage team -->

	<section></section>

	<section></section>

	<!-- AboutPage team -->

	<!-- AboutPage Features -->

	<section></section>
	<div class="w3l-servicesblock2 py-5" id="services">
		<div class="container py-lg-5 py-md-4 py-2 HomePageServices">
			<h3 class="title-style text-center mb-lg-5 mb-4">
				원하는 <span>채팅을 클릭!</span>
			</h3>

			<div class="row justify-content-center">
				<div class="col-lg-3 col-sm-6">
					<div class="grids5-info">
						<a onclick="chatPopup()" class="blog-image d-block zoom"><img
							src="${pageContext.request.contextPath }/resources/CSS/Image/matchingChat.png"
							alt="" class="img-fluid radius-image" />
							<div class="image-overlay">
								<h4>매칭 된 채팅</h4>
							</div>
							<div class="iconic-plus">
								<i class="fas fa-plus"></i>
							</div> </a>
					</div>
				</div>

				<div class="col-lg-3 col-sm-6 mt-sm-0 mt-4">
					<div class="grids5-info">
						<a href="#url" class="blog-image d-block zoom"><img
							src="${pageContext.request.contextPath }/resources/CSS/Image/camChat.webp"
							alt="" class="img-fluid radius-image" />
							<div class="image-overlay">
								<h4>랜덤 영상 채팅</h4>
							</div>
							<div class="iconic-plus">
								<i class="fas fa-plus"></i>
							</div> </a>
					</div>
				</div>

				<div class="col-lg-3 col-sm-6 mt-lg-0 mt-4">
					<div class="grids5-info">
						<a onclick="randomChat()" class="blog-image d-block zoom"><img
							src="${pageContext.request.contextPath }/resources/CSS/Image/Randomchat.webp"
							alt="" class="img-fluid radius-image" />
							<div class="image-overlay">
								<h4>랜덤 채팅</h4>
							</div>
							<div class="iconic-plus">
								<i class="fas fa-plus"></i>
							</div> </a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@  include file="/WEB-INF/views/includes/body-footer.jsp"%>

	<!-- //AboutPage Testimonials -->
	<!-- Js scripts -->
	<!-- move top -->
	<button onclick="topFunction()" id="movetop" title="Go to top">
		<span class="fas fa-level-up-alt" aria-hidden="true"></span>
	</button>

	<script data-cfasync="false"
		src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
	<script>
		// When the user scrolls down 20px from the top of the document, show the button
		window.onscroll = function() {
			scrollFunction();
		};

		function scrollFunction() {
			if (document.body.scrollTop > 20
					|| document.documentElement.scrollTop > 20) {
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
	<script
		src="https://wp.w3layouts.com/dressup/wp-content/themes/Dress-Up/assets/js/jquery-3.3.1.min.js"></script>
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
		$(document).ready(function() {
			$(".popup-with-zoom-anim").magnificPopup({
				type : "inline",

				fixedContentPos : false,
				fixedBgPos : true,

				overflowY : "auto",

				closeBtnInside : true,
				preloader : false,

				midClick : true,
				removalDelay : 300,
				mainClass : "my-mfp-zoom-in",
			});

			$(".popup-with-move-anim").magnificPopup({
				type : "inline",

				fixedContentPos : false,
				fixedBgPos : true,

				overflowY : "auto",

				closeBtnInside : true,
				preloader : false,

				midClick : true,
				removalDelay : 300,
				mainClass : "my-mfp-slide-bottom",
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
		$(window).on("scroll", function() {
			var scroll = $(window).scrollTop();

			if (scroll >= 80) {
				$("#site-header").addClass("nav-fixed");
			} else {
				$("#site-header").removeClass("nav-fixed");
			}
		});

		//Main navigation Active Class Add Remove
		$(".navbar-toggler").on("click", function() {
			$("header").toggleClass("active");
		});
		$(document).on("ready", function() {
			if ($(window).width() > 991) {
				$("header").removeClass("active");
			}
			$(window).on("resize", function() {
				if ($(window).width() > 991) {
					$("header").removeClass("active");
				}
			});
		});
	</script>
	<!-- //MENU-JS -->

	<!-- disable body scroll which navbar is in active -->
	<script>
		$(function() {
			$(".navbar-toggler").click(function() {
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
		(function() {
			var js = "window['__CF$cv$params']={r:'8631281fbc025dd9',t:'MTcxMDIxODk1Ni45MzMwMDA='};_cpo=document.createElement('script');_cpo.nonce='',_cpo.src='/cdn-cgi/challenge-platform/scripts/jsd/main.js',document.getElementsByTagName('head')[0].appendChild(_cpo);";
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
				var prev = document.onreadystatechange || function() {
				};
				document.onreadystatechange = function(e) {
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
		var userId = '${sessionScope.loginId}';
		function chatPopup() {
			var popupwindow = window.open(
					"${pageContext.request.contextPath }/Chat-page", userId,
					"width=768, height=530, left=100, top=50");
		}
		function randomChat() {
			var popupwindow = window.open(
					"${pageContext.request.contextPath }/randomChat",
					"randomChat", "width=900, height=530, left=100, top=50");
		}
	</script>
</body>
</html>
<!-- Cache served by breeze CACHE - Last modified: Tue, 12 Mar 2024 04:15:26 GMT -->
