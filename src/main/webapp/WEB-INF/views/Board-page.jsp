<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Blog posts &#8211; Dress Up WordPress Theme</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta https-equiv="X-UA-Compatible" content="ie=edge" />
<!-- <meta name="robots" content="max-image-preview:large" /> -->
<%@  include file="/WEB-INF/views/includes/head-resources.jsp"%>
<!-- 페이지 별 CSS & JS  -->

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
.recentcomments a {
	display: inline !important;
	padding: 0 !important;
	margin: 0 !important;
}

#contentbox {
	margin: 25px;
}

#views {
	margin-left: 0px;
	font-size: small;
	font-weight: bold;
}

#liked {
	background-color: #F54748;
	border-radius: 10px;
	padding: 7px;
	border: none;
}

#liked:hover {
	background-color: orange;
	border-radius: 10px;
	padding: 7px;
	border: none;
}

#unliked {
	background-color: white;
	border-radius: 10px;
	padding: 7px;
}

#unliked:hover {
	background-color: #F54748;
	border-radius: 10px;
	padding: 7px;
}

#likedheart {
	color: white;
}

#unlikedheart {
	color: red;
}

.fa-solid fa-heart {
	color: red;
	padding: 5px;
}

#replyBtn {
	border-radius: 10px;
	padding: 7px;
	border: none;
	font-size: small;
}

#replyBtn:hover {
	background-color: #f4e9e9;
}

#fixSubmitBtn {
	margin: 4px;
	border-radius: 8px;
	padding: 5px;
	border: none;
	font-size: small;
	background-color: #7b7b7b;
	color: white;
}

#fixSubmitBtn:hover {
	background-color: #c5c4c4;
}

#likedfont {
	color: white;
	font-weight: bold;
}

#unlikedfont {
	font-weight: bold;
}

#boardfixbtn {
	border-radius: 10px;
	font-size: small;
	border: none;
	padding: 15px;
	color: white;
	background-color: green;
	margin-left: 10px;
	padding-right: 30px;
	padding-left: 30px;
}

#boardfixbtn:hover {
	background-color: gray;
}

#fixtitleSubmit {
	border: none;
	font-size: small;
	padding: 7px;
	border-radius: 10px;
	background-color: #6e6e6e;
	color: white;
	/* font-weight:bold; */
}

#fixtitleSubmit:hover {
	/* border:none; */
	font-size: small;
	padding: 7px;
	border-radius: 10px;
	background-color: #c5c5c5;
	color: wihte;
}

#fixContentSubmit {
	border: none;
	font-size: small;
	padding: 7px;
	border-radius: 10px;
	background-color: #6e6e6e;
	color: white;
	/* font-weight:bold; */
}

#fixContentSubmit:hover {
	/* border:none; */
	font-size: small;
	padding: 7px;
	border-radius: 10px;
	background-color: #c5c5c5;
	color: wihte;
}

textarea.replyComment {
	outline: none;
	border: none;
	background-color: inherit;
	resize: none;
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

		<section class="w3l-blogpost-content py-5">
			<div class="container py-lg-5 py-md-4 py-2">
				<!-- 페이지 별 컨텐츠 -->
				<div class="row">
					<div class="text-11 col-lg-8 pr-lg-5">

						<div class="text11-content">

							<h4 class="mt-0 mb-4">${board.boardtitle }</h4>

							<div class="single-post-image mb-4">
								<!-- 등록한 이미지 분류 -->
								<c:set var="boardimgList"
									value="${fn:split(board.boardimg, ',')}" />
								<!-- 이미지 슬라이드 carousel -->
								<div id="carouselExampleInterval"
									class="carousel carousel-dark slide" data-ride="carousel">
									<div class="carousel-inner">
										<c:forEach items="${boardimgList }" var="boardImg"
											varStatus="status">

											<div
												class="carousel-item post-thumbnail<c:if test="${status.index == 0 }"> active </c:if>"
												data-bs-interval="5000">
												<img style="height: 500px; object-fit: contain;"
													src="resources/boardImgUpload/${boardImg}"
													class="d-block w-100" alt="...">
											</div>
										</c:forEach>

									</div>
									<a class="carousel-control-prev"
										data-bs-target="#carouselExampleInterval" role="button"
										data-bs-slide="prev"> <span
										class="carousel-control-prev-icon" aria-hidden="true"
										style="background-color: black; border-radius: 7px; height: 4rem; width: 1.4rem;"></span>
										<span class="sr-only">Previous</span>
									</a> <a class="carousel-control-next"
										data-bs-target="#carouselExampleInterval" role="button"
										data-bs-slide="next"> <span
										class="carousel-control-next-icon" aria-hidden="true"
										style="background-color: black; border-radius: 7px; height: 4rem; width: 1.4rem;"></span>
										<span class="sr-only">Next</span>
									</a>
								</div>
								<!-- 이미지 슬라이드 carousel -->


								<!-- .post-thumbnail -->

							</div>

							<div class="single-post-content">

								<div class="entry-content">
									<!-- 글내용 -->
									<p>${board.boardcontent }</p>

									<div class="border-bottom py-3 text-center">
										<c:choose>
											<c:when test="${bdLikesCheck != null}">
												<button class="p-3 btn btn-outline-light"
													onclick="boardLikeBtn('${board.boardnumber}')">
													<i class="fa-solid fa-heart" style="color: red;"
														id="boardLikeIcon"></i> <span class="fw-bold"
														style="color: black;" id="boardLikeCount">${bdLikesCount }</span>
												</button>
											</c:when>
											<c:otherwise>
												<button class="p-3 btn btn-outline-light"
													onclick="boardLikeBtn('${board.boardnumber}')">
													<i class="fa-regular fa-heart" style="color: red;"
														id="boardLikeIcon"></i> <span class="fw-bold"
														style="color: black;" id="boardLikeCount">${bdLikesCount }</span>
												</button>
											</c:otherwise>
										</c:choose>
									</div>



									<!-- 작성자 프로필 -->
									<div
										class="author-card author-listhny my-lg-3 my-sm-2 w3ArticleAuth">
										<div class="row">
											<div
												class="author-left col-lg-3 col-md-4 mb-md-0 mb-4 text-center">
												<a href="https://wp.w3layouts.com/dressup/author/w3layouts/">

													<c:set var="boardProfileFirst"
														value="${fn:split(board.member.user_img, '_')[0]}" /> <img
													class="img-fluid"
													style="width: 150px; height: 150px; object-fit: cover;"
													src="${pageContext.request.contextPath }/resources/profileimg/${boardProfileFirst}"
													alt="W3Layouts">
												</a>
											</div>
											<div
												class="author-right col-lg-9 col-md-8 position-relative align-self ps-xl-4 ps-lg-5">

												<h4 class="mb-0">
													<a
														href="https://wp.w3layouts.com/dressup/author/w3layouts/"
														class="title-team-28">작성자 : ${board.boardid}</a>
												</h4>
												<p class="para-team my-0">자기소개 : ${board.member.user_pr }</p>

												<!-- SNS LINK -->
												<div class="share-icons mt-4">

													<a href="https://www.facebook.com/w3layouts"><span
														class="fab fa-facebook-f" aria-hidden="true"></span></a> <a
														href="https://twitter.com/w3layouts"><span
														class="fab fa-twitter" aria-hidden="true"></span></a> <a
														href="https://www.instagram.com/w3layouts_/"><span
														class="fab fa-instagram" aria-hidden="true"></span></a>
												</div>
												<!--SNS LINK  -->

											</div>
										</div>
									</div>
								</div>
							</div>


							<nav class="navigation post-navigation" aria-label="Posts">
								<h2 class="screen-reader-text">Post navigation</h2>
								<div class="nav-links">
									<div class="nav-previous d-flex justify-content-between">

										<div class="previousBoard">
											<c:if test="${previousBoard != null }">
												<a
													href="${pageContext.request.contextPath }/Board-page?boardnumber=${previousBoard.boardnumber}"
													rel="prev"><span class="nav-subtitle"> <span
														class="fa fa-arrow-left" aria-hidden="true"></span> 이전 글
														보기
												</span> <span class="nav-title">${previousBoard.boardtitle }</span></a>
											</c:if>
										</div>

										<div class="nextBoard text-end">
											<c:if test="${nextBoard != null }">
												<a
													href="${pageContext.request.contextPath }/Board-page?boardnumber=${nextBoard.boardnumber}"
													rel="next"><span class="nav-subtitle"> <span
														class="fa fa-arrow-right" aria-hidden="true"></span> 다음 글
														보기
												</span> <span class="nav-title">${nextBoard.boardtitle }</span></a>
											</c:if>
										</div>

									</div>
								</div>
							</nav>
							<div class="w3PostComments">

								<div id="comments" class="comments-area">

									<h6 class="comments-title">
										댓글: <span>${bdCommentList.size() }</span>개
									</h6>
									<!-- .comments-title -->
									<ol class="comment-list">
										<c:forEach items="${bdCommentList}" var="bdComment">
											<li id="comment-${bdComment.comment_number }"
												class="comment even thread-even depth-1 m-2">
												<article id="div-comment-1" class="comment-body">
													<footer class="comment-meta">
														<div class="comment-author vcard"
															style="position: relative;">

															<c:set var="commentProfileFirst"
																value="${fn:split(bdComment.member.user_img, '_')[0]}" />

															<img alt=""
																src="${pageContext.request.contextPath }/resources/profileimg/${commentProfileFirst}"
																class="avatar avatar-32 photo"
																style="width: 32px; height: 32px; object-fit: cover;">
															<b class="fn"><a href="https://wordpress.org/"
																class="url" rel="ugc external nofollow">${bdComment.comment_user }
															</a></b> <span class="fs-6">${bdComment.comment_regdate }</span>

															<!-- 수정 삭제 버튼 -->
															<c:if
																test="${sessionScope.loginId == bdComment.comment_user }">
																<div class="reply"
																	style="position: absolute; right: 0; top: 0;">
																	<a
																		href="javascript:modifyComment('${bdComment.comment_number }','${bdComment.board_number }')"
																		class="mx-2 ">수정</a> <a
																		href="javascript:deleteComment('${bdComment.comment_number }')"
																		class="mx-2 ">삭제</a>
																</div>
															</c:if>
														</div>
														<!-- .comment-author -->


													</footer>
													<div class="comment-content">
														<textarea name="comment_content" readonly
															class="mt-2 replyComment">${bdComment.comment_content }</textarea>
													</div>

												</article> <!-- .comment-body -->
											</li>
										</c:forEach>
										<!-- #comment-## -->

									</ol>
									<!-- .comment-list -->

									<c:if test="${sessionScope.loginId != null }">
										<div id="respond" class="comment-respond">
											<h6 id="reply-title" class="comment-reply-title">댓글 작성</h6>
											<form
												action="${pageContext.request.contextPath }/CommentWrite"
												method="post" class="comment-form">
												<p class="comment-form-comment p-2">
													<textarea class="mb-0" id="comment" name="comment_content"
														cols="45" rows="8" maxlength="65525"></textarea>
												</p>
												<p class="form-submit mt-0">
													<input type="hidden" name="board_number"
														value="${board.boardnumber }"> <input
														name="submit" type="submit" id="submit" class="submit"
														value="댓글 등록">
												</p>
											</form>
										</div>
										<!-- #respond -->

									</c:if>
								</div>
								<!-- #comments -->
							</div>

						</div>
					</div>



					<div
						class="sidebar-side col-lg-4 col-md-12 col-sm-12 mt-lg-0 mt-5 ps-md-5">
						<div class="sidebar right-sidebar">
							<aside id="secondary" class="widget-area">
								
								<section id="recent-posts-2"
									class="widget widget_recent_entries">
									<h2 class="widget-title">Recent Posts</h2>
									<ul>
										<c:forEach items="${recentBoardList }" var="recentBoard">
											<li><a
												href="${pageContext.request.contextPath }/Board-page?boardnumber=${recentBoard.boardnumber}"
												aria-current="page">${recentBoard.boardtitle}</a></li>
										</c:forEach>
									</ul>

								</section>

								<c:choose>
									<c:when test="${sessionScope.loginId == board.boardid}">
										<button
											onclick="location.href='${pageContext.request.contextPath }/BoardUpdate-page?boardnumber=${board.boardnumber}&boardId=${board.boardid}'"
											id="boardfixbtn">글 수정</button>
										<button id="boardfixbtn" onclick="deleteBoard('${board.boardnumber}','${board.boardid}')">글 삭제</button>
									</c:when>
								</c:choose>

							</aside>
							<!-- #secondary -->
						</div>
					</div>

				</div>
				<!--  페이지 별 컨텐츠  -->

			</div>

		</section>
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
	<script
		src="https://wp.w3layouts.com/dressup/wp-includes/js/comment-reply.min.js?ver=6.2.4"
		id="comment-reply-js"></script>

	<script>
		// 게시글 수정
		
		
	</script>

	<!-- 댓글 관련 -->
	<script type="text/javascript">
	// 좋아요 누르기
	function boardLikeBtn(boardnumber) {
		const likeIcon = document.getElementById('boardLikeIcon');
		const likeCount = document.getElementById('boardLikeCount');
		let likeCountVal = Number(likeCount.innerText);
		let typeOption;
		if(likeIcon.classList.contains('fa-solid')){
			typeOption = 'cancel';
			likeCountVal = likeCountVal -1;
		} else {
			typeOption = 'liked';
			likeCountVal = likeCountVal +1;
		}
		$.ajax({
			type : 'get',
			url : 'toggleBoardLike',
			data : {
				'boardnumber' : boardnumber,
				'typeOption' : typeOption
			},
			success : function(result) {
				console.log('변경 결과' + result);
				if (result > 0) {
					likeIcon.classList.toggle('fa-solid');
					likeIcon.classList.toggle('fa-regular');
					likeCount.innerText = likeCountVal;
				} 
			}
		});
		
	}

	const commentContentList = document.querySelectorAll('textarea.replyComment');
	document.querySelectorAll('textarea.replyComment').forEach(commentEl =>{
		//commentEl.style.height = 'auto';
		commentEl.style.height = commentEl.scrollHeight + 'px'; 
	});
	
	/* 댓글 수정 - form */
	function modifyComment(commentNumber, boardNumber){
		
		const commentTextArea = document.querySelector(`#comment-\${commentNumber} textarea`);
		const originComment = commentTextArea.value;
		if(!commentTextArea.classList.contains('replyComment')){
			return;
		}
		
		commentTextArea.classList.remove('replyComment');
		commentTextArea.readOnly = false;
		
		let cancelBtn = document.createElement('button');
		cancelBtn.classList.add('btn', 'btn-secondary', 'btn-sm','ms-1');
		cancelBtn.innerText = '수정 취소';
		commentTextArea.after(cancelBtn);
		
		let submitBtn = document.createElement('button');
		submitBtn.classList.add('btn', 'btn-danger', 'btn-sm','me-1');
		submitBtn.innerText = '댓글 수정';
		commentTextArea.after(submitBtn);
		
		cancelBtn.addEventListener('click', function(){
			submitBtn.remove();
			cancelBtn.remove();
			commentTextArea.value = originComment;
			commentTextArea.classList.add('replyComment');
			commentTextArea.readOnly = true;
		})
		
		submitBtn.addEventListener('click', function(){
			let commentModForm = document.createElement('form');
			commentModForm.setAttribute('action','modifyComment');
			commentModForm.setAttribute('method','post');
			commentModForm.innerHTML = `<input type="hidden" name="comment_number" value="\${commentNumber}" >`+
										`<input type="hidden" name="board_number" value="\${boardNumber}" >`+
										`<textarea name="comment_content">\${commentTextArea.value}</textarea>`;
			document.body.appendChild(commentModForm);
			commentModForm.submit();
		})
	}
	
	// 댓글 삭제 - ajax
	function deleteComment(commentNumber) {
		const commentContent_li = document.getElementById(`comment-\${commentNumber}`);
		if(!confirm('삭제하시겠습니까?')){
			return
		}
		
		$.ajax({
			type : 'get',
			url : 'deleteComment',
			data : { 'commentNumber' : commentNumber },
			success : function(result) {
				console.log('삭제 결과' + result);

				if (result == "Y") {
					console.log('삭제 성공');
					alert('삭제완료');
					commentContent_li.remove();
				} else {
					console.log('삭제 실패');
				}
			}
		});

	}
	
	function deleteBoard(boardnumber,startId) {
		
		console.log("보드넘버"+"아이디" +boardnumber+startId )
		
		
		$.ajax({
			type : 'get',
			url : 'deleteBoard',
			data : { 'boardnumber' : boardnumber,
				'startId' : startId},
			success : function(result) {
				console.log('삭제 결과' + result);

				if (result == "Y") {
					console.log('삭제 성공');
					alert('삭제완료');
					location.href='${pageContext.request.contextPath }/BoardList-page';
				} else {
					console.log('삭제 실패');
				}
			}
		});

	}
	
</script>



</body>
</html>
