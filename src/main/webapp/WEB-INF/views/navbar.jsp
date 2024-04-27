<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<c:if test="${msg != null }">
	<script type="text/javascript">
		alert('${msg}');
	</script>
	</c:if>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>

    <style>
      .profileButton {
        font-size: 0px;
        height: 60px;
        width: 60px;
        border-radius: 100%;
        padding: 0px;
      }
      .dropdown1 {
        position: relative;
        display: inline-block;
        background-color: transparent;
        font-size: 0px;
        height: 64px;
        width: 64px;
        border-radius: 100%;
        padding: 0px;
        background-color: white;
        border: none;
      }

      .dropdown1:hover {
        background-color: orangered !important;
      }

      .dropdown-content:tor .dropdown-content {
        display: none;
        position: absolute;
        z-index: 1; /*다른 요소들보다 앞에 배치*/
        font-weight: 400;

        min-width: 200px;
      }

      .dropdown-content a {
        display: block;
        text-decoration: none;
        color: rgb(37, 37, 37);
        font-size: 12px;
        padding: 12px 20px;
      }

      .dropdown1 .dropdown-content {
        display: block;
      }

      .dropdown-menu {
        border: none;
      }

      .dropdown-item1 {
        color: black; /* 기본 배경색 */
        transition: color 0.5s ease !important; /* 색상 변경에 0.5초 동안 서서히 변화를 줌 */
        --primary1-color: pink;

        display: block;
        width: 100%;
        padding: 0.25rem 1rem;
        clear: both;
        font-weight: 400;
        color: #212529;
        text-align: inherit;
        text-decoration: none;
        white-space: nowrap;
        background-color: transparent;
        border: 0;
        font-size: 14px;
        color: var(--heading-color);
        padding: 5px 24px;
        font-weight: 500;
        text-transform: uppercase;
      }

      .dropdown-item1:hover {
        color: var(--primary1-color);
        background: none;
      }

      /* Box sizing */

      .dropdown-item1::before {
        box-sizing: inherit;
        content: "";
        width: 14px;
        height: 14px;
        background: var(--bg-color);
        border: 1px solid var(--border-color);
        display: block;
        border-right: none;
        border-bottom: none;
        transform: translateX(-50%) rotateZ(45deg);
        position: absolute;
        top: -7px;
        left: 21%;
        z-index: 1001;
      }

      .dropdown-menu {
        text-align: center;
      }

      #dropdown-menu1 {
        margin-left: 16px;
      }

      #Home-color {
        margin-right: 0;
        margin-left: 0;
        color: orange;
      }

      #Home-color:hover {
        color: orangered;
      }
    </style>
  </head>
  <body>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <nav class="navbar navbar-expand-lg navbar-light">
      <h1>
    
        <a class="navbar-brand" href="${pageContext.request.contextPath }/">
          2SC<span>-Match</span>
        </a>
        
      </h1>

      <button
        class="navbar-toggler collapsed"
        type="button"
        data-bs-toggle="collapse"
        data-bs-target="#navbarScroll"
        aria-controls="navbarScroll"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
        <span class="navbar-toggler-icon fa icon-close fa-times"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarScroll">
        <ul
          id="menu-main-menu"
          class="navbar-nav mx-auto my-2 my-lg-0 navbar-nav-scroll"
        >
          <li
            id="menu-item-22"
            class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home nav-item nav-item-22"
          >
            <a href="${pageContext.request.contextPath }/" class="nav-link" id="Home-color"> Home</a>
          </li>
          <li
            id="menu-item-23"
            class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-8 current_page_item nav-item nav-item-23"
          >
            <a href="${pageContext.request.contextPath }/ChatSelect-page" class="nav-link"
              >Chat <i class="fa-solid fa-fire-flame-curved"></i
            ></a>
          </li>
          <li
            id="menu-item-24"
            class="menu-item menu-item-type-post_type menu-item-object-page nav-item nav-item-24"
          >
            <a href="${pageContext.request.contextPath }/matching-page" class="nav-link"> Matching</a>
          </li>
          <li
            id="menu-item-24"
            class="menu-item menu-item-type-post_type menu-item-object-page nav-item nav-item-24"
          >
            <a href="${pageContext.request.contextPath }/BoardList-page" class="nav-link"> BOARD</a>
          </li>

          <!-- <li
            id="menu-item-54"
            class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children dropdown nav-item nav-item-54"
          >
            <a
              href="javascript:void(0)"
              class="nav-link dropdown-toggle"
              data-bs-toggle="dropdown"
              aria-haspopup="true"
              aria-expanded="false"
            >
              Community</a
            >
            <ul class="dropdown-menu depth_0" id="dropdown-menu1">
              <li
                id="menu-item-29"
                class="menu-item menu-item-type-post_type menu-item-object-page nav-item nav-item-29"
              >
                <a href="./Board-page.html" class="dropdown-item">자유게시판</a>
              </li>
              <li
                id="menu-item-25"
                class="menu-item menu-item-type-post_type menu-item-object-page nav-item nav-item-25"
              >
                <a href="./404-page.html" class="dropdown-item">랜덤 채팅</a>
              </li>
              <li
                id="menu-item-26"
                class="menu-item menu-item-type-post_type menu-item-object-page nav-item nav-item-26"
              >
                <a href="./elements-page.html" class="dropdown-item"
                  >Elements page</a
                >
              </li>
              <!-- <li
                id="menu-item-28"
                class="menu-item menu-item-type-post_type menu-item-object-page nav-item nav-item-28"
              >
                <a href="./single-landing.html" class="dropdown-item"
                  >Landing page</a
                >
              </li>
            </ul>
          </li> -->
        </ul>
        <!-- search-form -->
        <div class="dropdown1">
          <button
            class="dropdown1 dropbtn nav-link dropdown-toggle"
            data-bs-toggle="dropdown"
            aria-haspopup="true"
            aria-expanded="false"
          >
          
            <img src="resources/profileimg/${sessionScope.userimg}" alt="메뉴" class="profileButton"/>
          </button>
          <ul class="dropdown-menu depth_0">
            <li
              id="menu-item-29"
              class="menu-item menu-item-type-post_type menu-item-object-page nav-item nav-item-29">
              <a href="${pageContext.request.contextPath }/MyInfoPage" class="dropdown-item1"> 내 정보</a>
            </li>
            <li
              id="menu-item-25"
              class="menu-item menu-item-type-post_type menu-item-object-page nav-item nav-item-25">
              <a href="${pageContext.request.contextPath }/BookMarkList-page" class="dropdown-item1">
                찜 목록</a>
            </li>
            <li
              id="menu-item-26"
              class="menu-item menu-item-type-post_type menu-item-object-page nav-item nav-item-26">
              <a href="${pageContext.request.contextPath }/BLockList-page" class="dropdown-item1"
                >차단 목록</a>
            </li>
            <li id="menu-item-28" class="menu-item menu-item-type-post_type menu-item-object-page nav-item nav-item-28">
              <a href="${pageContext.request.contextPath }/MatchingListpage" class="dropdown-item1"
                >매칭 내역</a>
            </li>
            <li id="menu-item-28" class="menu-item menu-item-type-post_type menu-item-object-page nav-item nav-item-28">
              <a href="#" onclick="openCalender()" class="dropdown-item1">데이트 캘린더</a>
            </li>
            <li id="menu-item-28" class="menu-item menu-item-type-post_type menu-item-object-page nav-item nav-item-28">
              <a href="${pageContext.request.contextPath }/logout" class="dropdown-item1">로그아웃</a>
            </li>
          </ul>
        </div>
        <!--//search-form-->
      </div>

  
    </nav>

    <script
      src="https://kit.fontawesome.com/b439dbdb6d.js" crossorigin="anonymous"></script>
      <script type="text/javascript">
      function openCalender() {
    	    // 팝업 창을 열고 크기를 설정합니다.
    	    var popupWidth = 805;
    	    var popupHeight = 737;
    	    var left = (screen.width - popupWidth) / 2;
    	    var top = (screen.height - popupHeight) / 2;
    	    var popupOptions = "width=" + popupWidth + ",height=" + popupHeight + ",left=" + left + ",top=" + top;
    	    var popupWindow = window.open("MyCalendar-page", "popup", popupOptions);
    	    // 팝업 창의 크기를 변경하지 못하도록 고정
    		/* popupWindow.addEventListener('resize', function() {
	    	    popupWindow.resizeTo(popupWidth, popupHeight);
    		    }); */
      		}
/*          function openCalendarWithData() {
    	    // Ajax를 사용하여 서버로부터 데이터를 받아옵니다.
    	    $.ajax({
    	        url: "/your-server-endpoint", // 서버 API의 엔드포인트 URL
    	        method: "GET",
    	        dataType: "json", // 받아올 데이터의 타입 (JSON 등)
    	        success: function(data) {
    	            // 받아온 데이터를 처리합니다.
    	            var popupWidth = 400;
    	            var popupHeight = 700;
    	            var left = (screen.width - popupWidth) / 2;
    	            var top = (screen.height - popupHeight) / 2;
    	            var popupOptions = "width=" + popupWidth + ",height=" + popupHeight + ",left=" + left + ",top=" + top;
    	            
    	            // 받아온 데이터를 사용하여 팝업을 엽니다.
    	            var popupWindow = window.open(data.url, "popup", popupOptions);
    	            
    	            // 팝업 창의 크기를 변경하지 못하도록 고정
    	            popupWindow.resizeTo(popupWidth, popupHeight);
    	        },
    	        error: function(xhr, status, error) {
    	            console.error("Error:", error);
    	        }
    	    });
    	 } */ 
    	 
      </script>

  </body>
</html>
