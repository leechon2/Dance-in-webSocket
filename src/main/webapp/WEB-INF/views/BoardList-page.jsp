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

<style>
.recentcomments a {
	display: inline !important;
	padding: 0 !important;
	margin: 0 !important;
}
#searchBox{
	display: flex;
	align-items: center;
}
.option{
	padding: 5px;
	cursor: pointer;
}
#conditionSelector{
	position: relative; 
	display: inline-block; 
	width:60px;
}
#selectedOption{
	border: 1px solid #ccc; 
	padding: 5px; 
	cursor: pointer;
}
#options{
	position: absolute; 
	top: 100%; left: 0; 
	background-color: #fff; 
	border: 0.5px solid #ccc; 
	border-top: none;
	
}
#searchbtn{
	background-color: #f54748;
	width: 60px;
	height: 36px;
	border-radius: 9px;
	display: flex;
	justify-content: center;
	align-items: center;
}
#searchbtn:active {
/* 클릭할 때 적용할 스타일 지정 */
background-color: #f48924; /* 배경색 변경 */
box-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2); /* 그림자 효과 추가 */
}
#searchtext{
	height: 30px;
	margin: 0px 2px 0px 2px;
}

</style>
<!-- HOT & VIEW -->
<link
	href="${pageContext.request.contextPath }/resources/templets/css/hotView.css"
	rel="stylesheet" />

</head>

<body id="top-gap-fixed-header" class="blog hfeed">

	<header id="site-header" class="main-header fixed-top">
		<div class="container w3HeaderLogoEd">
			<%@ include file="/WEB-INF/views/navbar.jsp"%>
		</div>
	</header>
	<!-- inner banner -->

	<section class="inner-banner py-5">

		<div class="w3l-breadcrumb py-lg-5">
			<div class="container pt-4 pb-sm-4 BlogPageBanner">
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
				<div class="row BlogHomeLayout">
					<div class="col-lg-8 w3l-news pr-lg-4">
						<div class="row" id="bdHVList">

							<!-- 게시플 목록 -->
							<c:forEach items="${bdList}" var="board">

								<c:set var="boardimgFirst"
									value="${fn:split(board.boardimg, ',')[0] }" />
								<div class="col-md-6 mb-3">
									<article class="post">
										<div class="grids5-info">
											<div class="blog-image">
												<a
													href="https://wp.w3layouts.com/dressup/2021/11/29/set-a-fashion-trend-2/"
													class="d-block zoom"></a> <a
													href="https://wp.w3layouts.com/dressup/2021/11/29/set-a-fashion-trend-2/"
													class="post-thumbnail" aria-hidden="true" tabindex="-1">
													<img
													src="${pageContext.request.contextPath }/resources/boardImgUpload/${boardimgFirst}"
													class="attachment-post-thumbnail size-post-thumbnail wp-post-image"
													alt="Set a Fashion Trend!" />
												</a>

												<div class="image-overlay">
													<span >♥</span>
												</div>

											</div>

											<div class="blog-info card-body blog-details">
												<div
													class="d-flex align-items-center justify-content-between">
													<h6 class="post mb-0">
														<i class="fas fa-user"></i> <a class="url fn n"
															href="https://wp.w3layouts.com/dressup/author/w3layouts/">${board.boardid }</a>
													</h6>

													<h6 class="date">
														<i class="fas fa-clock"></i>
														${board.boardregdate.substring(0,10) }
													</h6>
												</div>

												<h4>
													<a
														href="${pageContext.request.contextPath }/Board-page?boardnumber=${board.boardnumber }"
														class="blog-desc"> ${board.boardtitle } </a>
												</h4>

												<!-- <p class="mt-3">At corrupti odit At iure facere, porro repellat officia quas, magnam assumenda.</p> -->

												<a class="read">조회수 + ${board.boardviews }</a> <br>
											</div>
										</div>
									</article>
								</div>
							</c:forEach>
							<!-- 게시글 목록 -->

						</div>

						<!-- pagination -->
						<div class="pagination-wrapper mt-5">
							<nav aria-label="Page navigation example">
								<ul class="page-pagination d-flex">
									<ul class="page-numbers" id="pagenumbers">
										<!--페이지 버튼이 들어가는 부분 -->
										<li><a class="next page-numbers"
											href="https://wp.w3layouts.com/dressup/blog-posts/page/2/">Next</a>
										</li>
									</ul>
								</ul>
							</nav>
						</div>

						<!-- //pagination -->
					</div>

					<div class="sidebar-side col-lg-4 col-md-12 col-sm-12 mt-lg-0 mt-5 ps-md-5">
						<div class="sidebar right-sidebar">
							<aside id="secondary" class="widget-area">
								<section id="search-2" class="widget widget_search">
									<div id="searchBox">
								        <div id="conditionSelector">
								            <div id="selectedOption">제목</div>
								            <div id="options" style="display: none;">
								                <div class="option" data-value="BOARD_TITLE" >제목</div>
								                <div class="option" data-value="BOARD_ID" >작성자</div>
								                <div class="option" data-value="BOARD_CONTENT" >글내용</div>
								            </div>
								        </div>
								            <input id="condition" type="hidden" value="BOARD_TITLE">
								            <input id="searchtext" type="text"> 
								            <div id="searchbtn"> 검색 </div>
								        </div>
								        <div class="cta-btn" data-animation="fadeInDown" data-delay="1s">
								            <a href="${pageContext.request.contextPath }/BoardWrite-page" class="btn btn-style btn-primary">글작성</a>
								        </div>
								</section>
								<section id="recent-posts-2"
									class="widget widget_recent_entries">
									<div style="justify-content: space-evenly" class="d-flex mb-3">
										<div>
											<h6 class="text-center fw-bold mb-1">Hot</h6>
											<input type="checkbox" id="switch1" /> <label for="switch1"
												class="switch_label1"> <span class="onf_btn1"></span>
											</label>
										</div>

										<div>
											<h6 class="text-center fw-bold mb-1">view</h6>
											<input type="checkbox" id="switch2" /> <label for="switch2"
												class="switch_label2"> <span class="onf_btn2"></span>
											</label>
										</div>
									</div>

									
								</section>

							</aside>
							<!-- #secondary -->
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>

	<!-- footer -->
	<%@  include file="/WEB-INF/views/includes/body-footer.jsp"%>
	<!-- //footer -->

	<!-- Js scripts -->
	<!-- move top -->
	<!-- JQUERY -->
	<button onclick="topFunction()" id="movetop" title="Go to top">
		<span class="fas fa-level-up-alt" aria-hidden="true"></span>
	</button>
	<%@  include file="/WEB-INF/views/includes/body-resources.jsp"%>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script>
	document.getElementById('searchbtn').addEventListener('click',function (){
		let condition = document.getElementById('condition').value+"";
		let searchText = document.getElementById('searchtext').value+"";
		console.log("검색 조건: "+condition);
		console.log("검색어 :"+searchText);
		if(searchText!==''){
			$.ajax({
				url : 'searchByCondition',
				type : 'post',
				data : { 'condition': condition ,'searchText': searchText},
				dataType : "json",
				async : false,
				success: function(res) {
					console.log(res);
					boardList =res;
					printBoardList(1);
					createPageBtn(1);


				}
			});
		}
	});
		
	</script>
	<script type="text/javascript">
		function updateViews(boardnumber) {
			location.href = "updateViews?boardnumber=" + boardnumber;
		}

		document.addEventListener('DOMContentLoaded', function() { //checkBox Hot를 이용한 스위치
			var checkbox = document.getElementById('switch1');
			checkbox.addEventListener('change', function() {
				Hot(); // 체크박스의 상태가 변경될 때 Hot() 함수 호출
			});
		});
		
		function Hot() {
			// Hot 함수의 기능을 여기에 구현
			if (document.getElementById('switch1').checked) {
				console.log('Checkbox is checked - Hot function activated!');
				$.ajax({

					url : 'hotList',
					type : 'post',
					dataType : "json",
					success: function(res) {
						boardList =res;
						  printBoardList(1);
						  createPageBtn(1);
						
					}

				});
			} else {
				boardListPage();
				
			}
		}

		document.addEventListener('DOMContentLoaded', function() { //checkBox Hot를 이용한 스위치
			var checkbox = document.getElementById('switch2');
			checkbox.addEventListener('change', function() {
				View(); // 체크박스의 상태가 변경될 때 Hot() 함수 호출
			});
		});

		function View() {
			// Hot 함수의 기능을 여기에 구현
			if (document.getElementById('switch2').checked) {
				console.log('Checkbox is checked - View function activated!');
				$.ajax({

					url : 'viewList',
					type : 'post',
					dataType : "json",
					success: function(res) {
						console.log(res);
						boardList =res;
						  printBoardList(1);
						  createPageBtn(1);
						
						
					}

				});

			} else {
				console.log('Checkbox is unchecked - View function deactivated!');
				boardListPage();
			}
		}
		
		function hvList(res) {
			let boardRow =document.getElementById('bdHVList');
			boardRow.innerHTML ="";
			
			for(let board of res){
				console.log(board);
				let	boardimgFirst
				if(board.boardimg===""){
					boardimgFirst = '';
					
				}else{
					console.log(board.boardimg);
					boardimgFirst = board.boardimg.split(',')[0];
					
				}
				let boardCol = document.createElement('div');
				boardCol.setAttribute("class", 'col-md-6 mb-3')
				boardCol.innerHTML = `<article class="post">
					<div class="grids5-info">
					<div class="blog-image">
						<a class="d-block zoom"></a> 
						<a class="post-thumbnail" aria-hidden="true" tabindex="-1">
							<img style="width:350px; heignt:400px;"
							src="resources/boardImgUpload/\${boardimgFirst}"
							class="attachment-post-thumbnail size-post-thumbnail wp-post-image"
							alt="" />
						</a>

						<div class="image-overlay">
							<span class="">♥</span>
						</div>

					</div>

					<div class="blog-info card-body blog-details">
						<div
							class="d-flex align-items-center justify-content-between">
							<h6 class="post mb-0">
								<i class="fas fa-user"></i> <a class="url fn n"
									href="https://wp.w3layouts.com/dressup/author/w3layouts/">\${board.boardid }</a>
							</h6>

							<h6 class="date">
								<i class="fas fa-clock"></i>
								\${board.boardregdate.substring(0,10) }
							</h6>
						</div>

						<h4>
							<a
								href="${pageContext.request.contextPath }/Board-page?boardnumber=\${board.boardnumber }"
								class="blog-desc"> \${board.boardtitle } </a>
						</h4>

						

						<a class="read">조회수 + \${board.boardviews }</a> <br>
					</div>
				</div>
			</article> `;
			
				boardRow.appendChild(boardCol);
			}
			
		}
		  window.onload = function() {
			 boardListPage();
		 }
		 
		 function printBoardList(nowPageNum) {
				let boardRow =document.getElementById('bdHVList');
				boardRow.innerHTML ="";
				
				let endIndex = nowPageNum * printBoardListSize;
				let startIdx =(nowPageNum -1) * printBoardListSize;
				if (endIndex > boardList.length) {
				    endIndex = boardList.length;
				  }
				let bdList = [];
				for(let i = startIdx; i < endIndex; i++){
					bdList.push(boardList[i]);
				}
				
				hvList(bdList);

		 }
			
		
		 
		 
		  let boardList = null;
		  const printBoardListSize =4;

		  
		  
		  
		 function createPageBtn(nowPageNum){
			 
			 let pageBtnCount = 5;
			 const boardListSize = boardList.length;
			 let genPageBtnCount = Math.trunc(boardListSize / printBoardListSize);
			 
			 if(boardListSize % printBoardListSize > 0){
				 genPageBtnCount+=1;
			 }
			 
			 if (pageBtnCount > genPageBtnCount) {
				    pageBtnCount = genPageBtnCount;
				    nextCheck = false;
				  }
			 let pagebtnUl = document.getElementById('pagenumbers');
			 pagebtnUl.innerHTML ="";
			    for (let i = 0; i <pageBtnCount;  i++) {
			        let pageBtn = document.createElement('li');
			        pageBtn.classList.add('btn','mx-1');
			        let pageNumber=  i + 1;
			        if(nowPageNum == pageNumber){
			    	   pageBtn.classList.add('btn-dangetr');
			       }else {
			    	   pageBtn.classList.add('btn-dark');
			       }
			        pageBtn.innerHTML = `<span aria-current="page" class="">\${pageNumber}</span>`;
			      
			        pageBtn.addEventListener('click', function(){
			    		 
			    		 printBoardList(pageNumber);
			    	     createPageBtn(pageNumber);
		
				     	});
			        pagebtnUl.appendChild(pageBtn);
			    }
		 }
		 
		 
	function boardListPage() {
		
		$.ajax({
			url: 'boardListInfo',
			type :'post',
			dataType : 'json',
			async : false,
			success : function(res) {
				console.log(res);
				
				boardList =res;
				  printBoardList(1);
				  createPageBtn(1);
				
			}

		});
	}
		
		 
		 
	</script>
	<script type="text/javascript">
        document.addEventListener('DOMContentLoaded', function() {
            let selectedOption = document.getElementById('selectedOption');
            let options = document.getElementById('options').children;
    
            selectedOption.addEventListener('click', function() {
                let display = document.getElementById('options').style.display;
                document.getElementById('options').style.display = display === 'none' ? 'block' : 'none';
            });
    
            for (let i = 0; i < options.length; i++) {
                options[i].addEventListener('click', function() {
                    selectedOption.innerText = this.innerText;
                    document.getElementById('options').style.display = 'none';
                    document.getElementById('condition').value = this.getAttribute('data-value');
                });
            }
        });
    </script>
</body>
</html>
