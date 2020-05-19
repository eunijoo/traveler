<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
   String cp = request.getContextPath();
%>

<script type="text/javascript">
//엔터 처리
$(function(){
	   $("input").not($(":button")).keypress(function (evt) {
	        if (evt.keyCode == 13) {
	            var fields = $(this).parents('form,body').find('button,input,textarea,select');
	            var index = fields.index(this);
	            if ( index > -1 && ( index + 1 ) < fields.length ) {
	                fields.eq( index + 1 ).focus();
	            }
	            return false;
	        }
	     });
});
</script>

	<div class="header-top">
		<div class="header-center">
			<p style="margin: 2px;">
				<a href="main.html" style="text-decoration: none;">
				<img alt="HOME" src="img/logo.PNG" width="80" style="margin: 12px 16px">
				</a>
			</p>
		</div>
		
		<div class="header-right">
			<div style="padding-top: 30px;  float: right;">
			<div class="menu">
		        <ul class="nav">
		            <li>
		                <a href="#">여행지</a>
		                <ul>
		                    <li><a href="<%=cp%>/travel/seoul.do">수도권</a></li>
		                    <li><a href="#">강원</a></li>
		                    <li><a href="#">충청</a></li>
		                    <li><a href="#">전라</a></li>
		                    <li><a href="#">경상</a></li>
		                    <li><a href="#">제주</a></li>
                    
		                </ul>
		            </li>
		                
		            <li>
		                <a href="#">GALLERY</a>
		                <ul>
		                    <li><a href="#" style="padding-left: 100px;">사진</a></li>
		                    <li><a href="#">동영상</a></li>
		                </ul>
		            </li>
		
		            <li>
		                <a href="#">BOARD</a>
		                <ul>
		                	<li><a href="#"  style="padding-left: 190px;">공지사항</a></li>
		                	<li><a href="#">Q&amp;A</a></li>
		                	<li><a href="<%=cp %>/board/board.do">자유게시판</a></li>
		                </ul>
		            </li>
		
		            <li>
		                <a href="#">CONTACT</a> 
		                <c:if test="${sessionScope.member.userId=='admin'}">
		                <ul>
		                	<li><a href="#"  style="padding-left: 190px;">CONTACT목록확인</a></li>
		                </ul>   
		                </c:if> 
		            </li>  
		            
		        </ul>
		        
		        <ul  class="nav2">
		            <li>
		            <c:if test="${empty sessionScope.member}">
		            	<a href="<%=cp%>/member/login.do" style="font-size: 12px;">login</a>
		            	&nbsp;
			       		<a href="#" style="font-size: 12px;">sign up</a>
			       	</c:if>	
			       	<c:if test="${not empty sessionScope.member}">
			       	 <span style="color:blue;">${sessionScope.member.userName}</span>님
			       	 	&nbsp;
			       		<a href="<%=cp%>/member/logout.do" style="font-size: 12px;">Logout</a>
		            	&nbsp;
			       		<a href="<%=cp%>/member/pwd.do?mode=update" style="font-size: 12px;">Mypage</a>
			      </c:if>
			       	</li>	
		        </ul>   
    		</div>	   
		</div>
		</div>
	</div>
	
	
    <div class="navigation">
        <div class="nav-bar">HOME</div>

    </div>

