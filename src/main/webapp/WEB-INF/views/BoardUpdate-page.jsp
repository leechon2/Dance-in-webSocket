<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>2SC-Match :: site</title>
<!-- <meta name="robots" content="max-image-preview:large" /> -->
<%@  include file="/WEB-INF/views/includes/head-resources.jsp"%>
<!-- 페이지 별 CSS & JS  -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
/* 사이드바 스타일링 */
.sidebar {
	position: absolute; /* 또는 'relative'로 변경, 필요에 따라 */
	top: 0;
	left: 0;
	width: 20%;
	height: 100%; /* 전체 섹션의 높이에 맞추기 */
	padding: 20px;
	background-color: #f8f9fa;
	overflow-y: auto;
}

.w3l-blogpost-content {
	position: relative; /* 상대적 위치 지정 */
	padding-left: 220px; /* 사이드바 너비 + 패딩 고려 */
}
</style>
</head>

<body id="top-gap-fixed-header">
	<header id="site-header" class="main-header fixed-top">
		<div class="container w3HeaderLogoEd">
			<%@ include file="/WEB-INF/views/navbar.jsp"%>
		</div>
	</header>
	<!-- inner banner -->

	<section class="inner-banner py-5">

		<div class="w3l-breadcrumb py-lg-5">
			<div class="container pt-4 pb-sm-4 ">
				<h4 class="inner-text-title font-weight-bold pt-sm-5 pt-4">BOARD</h4>

				<ul class="breadcrumbs-custom-path AllBreadcrumbs">
					<li><a href="https://wp.w3layouts.com/dressup" rel="nofollow">Home</a>
						&nbsp;&nbsp;»&nbsp;&nbsp;BOARD LIST</li>
				</ul>
			</div>
		</div>
	</section>
	<!-- //inner banner -->

	<main id="primary" class="site-main">
		<header>
			<h1 class="page-title screen-reader-text">Blog posts</h1>
		</header>
		<form action="${pageContext.request.contextPath}/BoardUpdate"
			method="post" class="signin-form" enctype="multipart/Form-data">
			<section class="w3l-blogpost-content py-5">
				<div class="sidebar">
					<c:set var="boardimgList" value="${fn:split(board.boardimg, ',')}" />
					<c:forEach items="${boardimgList }" var="boardImg"
						varStatus="status">
						<label class="imgLabel" onclick="imgClick(this)" for="${boardImg}">
							<div class="imgList">
								<img alt="" src="resources/boardImgUpload/${boardImg}">
							</div>

						</label>
						<input type="checkbox" name="delboardimg" id="${boardImg}"
							value="${boardImg}">
					</c:forEach>
				</div>

				<!-- 메인 컨텐츠 -->
				<div class="container ContactPageDetails mb-4">
					<h3 class="title-style text-center">
						게시판<span>에 수정할 글을 작성해주세요!</span>
					</h3>
				</div>
				<div class="container ContactPageForm pb-5">
					<div class="form-inner-cont mx-auto" style="max-width: 800px">

						<div class="row align-form-map">
							<div class="titleform">
								<input type="text" name="boardtitle" id="w3lSender"
									placeholder="${board.boardtitle }" required>
							</div>
							<div class="mb-3">
								<div class="form-label">
									<span class="alertcoment">여러개의 파일은 드래그 혹은 ctrl+클릭 으로 선택
										할 수 있습니다.</span>
								</div>
								<input class="form-control" name="boardfile" type="file"
									id="formFileMultiple" multiple onchange="previewImages(event)">
								<div id="imagePreview"></div>
							</div>
						</div>
						<div class="boardContent form-input">
							<textarea placeholder="${board.boardcontent }"
								name="boardcontent" id="w3lMessage" required></textarea>
						</div>
						<div class="submit text-right">
							<button type="submit" class="btn btn-style">글 수정</button>
						</div>
					</div>
				</div>

			</section>
			<input type="hidden" name="originF" value="${board.boardimg }">
			<input type="hidden" name="boardid" value="${board.boardid }">
			<input type="hidden" name="boardnumber" value="${board.boardnumber }">
		</form>
	</main>

	<!-- footer -->
	<%@  include file="/WEB-INF/views/includes/body-footer.jsp"%>
	<!-- //footer -->

	<!-- Js scripts -->
	<!-- move top -->
	<button onclick="topFunction()" id="movetop" title="Go to top">
		<span class="fas fa-level-up-alt" aria-hidden="true"></span>
	</button>
	<%@  include file="/WEB-INF/views/includes/body-resources.jsp"%>

	<script type="text/javascript">
		function imgClick(clickLabel) {
			console.log(clickLabel)
			clickLabel.classList.toggle('p-3');
			clickLabel.classList.toggle('border');
			clickLabel.classList.toggle('border-danger');

		}
	</script>
</body>
</html>
