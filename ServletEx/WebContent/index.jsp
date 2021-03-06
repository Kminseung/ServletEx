<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 다른 페이지의 파일을 포함 -->
<!-- include : 별도의 서블릿이 아닌 본 jsp 내에 포함되어 컴파일 -->
<%@ include file="/WEB-INF/views/includes/header.jsp" %>	
<!-- jsp:include는 jsp에 포함하여 컴파일 하지 않고
별도의 서블릿(or jsp)에 요청을 전달하는 것 -->
<jsp:include page="/WEB-INF/views/includes/nav.jsp" />
	<!-- 
	<h3>Static HTML Page</h3>
	<p>이것은 정적 HTML로 작성된 문서</p>
	-->
	
	<!-- img 태그 : 그림 삽입 -->
	<!--  img src="파일위치", alt: 대체 텍스트  -->
	<img src="images/pshi.jpg" width=320 height=240 alt="프로필" />
	
	<h3>요청 처리 연습</h3>
	<p>
		<!-- a태그 : 페이지 링크 -->
		<a href="hello.jsp?name=Servlet"> JSP 호출(GET 방식)</a>
	</p>
	
	<p>
		<a href=hs?name=Servlet">Servlet 호출(GET 방식)</a>
	</p>
	
	<h3>POST 전송 연습</h3>
	<!-- action : 요청을 처리할 url
		method : 요청 전송 방식(GET, POST) -->
	<form action="hs" method="POST">
	<label for="Last_name">성(Family Name)</label>
	<input type="text" id="Last_Name" name="Last_name">
	<br/>
	<label for="First_name">이름</label>
	<input type="text" id="First_Name" name="First_name">
	<br/>
	<!-- input 태그에 있는 name 속성으로 데이터 전송 -->
	<input type="submit" value="전송" />
	</form>
	
	<h3>테이블 연습</h3>
	<p>
		<a href="table.html">테이블 연습</a>
	</p>
	
	<h3>라이프사이클 확인</h3>
	<p>
		<a href="life">라이프 사이클 로그 확인</a>
	</p>
	
	<h3>웹 어플리케이션 모델 1 연습</h3>
	<p>
		<a href="emaillist/index.jsp">이메일 리스트</a>
	</p>
	
	<h3>웹 어플리케이션 모델 2 연습(MVC)</h3>
	<p>
		<a href="el">이메일리스트(MVC)</a>
	</p>
	
	<h3>Cookie Test</h3>
	<p>
		<a href="<%= request.getContextPath() %>/cookies">쿠키 테스트</a>
	</p>

<%@ include file="/WEB-INF/views/includes/footer.jsp" %>