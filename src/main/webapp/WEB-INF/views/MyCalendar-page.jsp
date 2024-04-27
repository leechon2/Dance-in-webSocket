<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<c:if test="${msg != null }">
	<script type="text/javascript">
		alert('${msg}');
	</script>
	</c:if>
<!doctype html>
<html lang="en-US">
<head>
<title>2SC-Match :: site</title>
	<meta charset="UTF-8">
	<title>My Calender for Date</title>

	<style>
	*{
	overflow: hidden;
	}
	</style>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/CSS/calendar.css">
</head>
<body>
  		<div class="row justify-content-center" style="height: 70px;">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">My Calender for Date</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="content w-100">
					<div class="calendar-container">
				      <div class="calendar"> 
				        <div class="year-header"> 
				          <span class="left-button fa fa-chevron-left" id="prev"> </span> 
				          <span class="year" id="label"></span> 
				          <span class="right-button fa fa-chevron-right" id="next"> </span>
				        </div> 
				        <table class="months-table w-100"> 
				          <tbody>
				            <tr class="months-row">
				              <td class="month">Jan</td> 
				              <td class="month">Feb</td> 
				              <td class="month">Mar</td> 
				              <td class="month">Apr</td> 
				              <td class="month">May</td> 
				              <td class="month">Jun</td> 
				              <td class="month">Jul</td>
				              <td class="month">Aug</td> 
				              <td class="month">Sep</td> 
				              <td class="month">Oct</td>          
				              <td class="month">Nov</td>
				              <td class="month">Dec</td>
				            </tr>
				          </tbody>
				        </table> 
				        
				        <table class="days-table w-100"> 
				          <td class="day">Sun</td> 
				          <td class="day">Mon</td> 
				          <td class="day">Tue</td> 
				          <td class="day">Wed</td> 
				          <td class="day">Thu</td> 
				          <td class="day">Fri</td> 
				          <td class="day">Sat</td>
				        </table> 
				        <div class="frame"> 
				          <table class="dates-table w-100"> 
			              <tbody class="tbody">             
			              </tbody> 
				          </table>
				        </div> 
				       
				      </div>
				    </div>
				    <div class="events-container">
				    </div>
				    <div class="dialog" id="dialog">
				        <h2 class="dialog-header"> 약속 일정 잡기 </h2>
				        <form class="form" id="form">
				          <div class="form-container" align="center">
				            <label class="form-label" id="valueFromMyButton" for="name">상대방 닉네임을 적어주세요</label>
				            <input class="input" type="text" id="name" maxlength="36">
				            <label class="form-label" id="valueFromMyButton" for="count">약속 잡으신 내용을 적어주세요</label>
				            <input class="input" type="text" id="count" maxlength="36" >
				            <input type="button" value="Cancel" class="button" id="cancel-button">
				            <input type="hidden" value="${sessionScope.loginId}" id ="startId" >
				            <input type="button" value="OK" class="button button-white" id="ok-button">
				          </div>
                          
				        </form>
                        
				      </div>
                      <button class="button"  id="add-button">Add Event</button>
				  </div>
				</div>
			</div>
		
  

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/CSS/js/main.js"></script>
	<script>
	  /*   $(document).ready(function () {
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
	        console.log('load complete');
	    }); */
	</script>
	
	<script type="text/javascript">
	var startId = "${sessionScope.loginId}";
	
	function deletedate(startId,regdate) {
		console.log("삭제"+startId+regdate);
		
	$.ajax({
		url:'deletedate',
		type:'post',
		data: {'startId' : startId,
				'regdate':regdate,
			
		},
		async:false,
		success: function(res) {
			console.log(res);
			if(res == "Y"){
				alert("삭제되었습니다");
				location.reload();
			}else{
				
			}
			
		}
	});
		
	}
	
	</script>
</body>
</html>
