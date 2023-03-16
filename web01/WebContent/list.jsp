<%@page import="java.util.ArrayList"%>
<%@page import="multi.mySQL_bbsVO"%>
<%@page import="multi.mySQL_bbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 브라우저가 보낸 데이터를 받아야함. 자바로 짜야함 -->
    <!-- 브라우저가 보낸 데이터를 받을 때 사용하는 부품 필요함 -->
    <%
    mySQL_bbsDAO dao = new mySQL_bbsDAO();
   	ArrayList<mySQL_bbsVO> list = dao.list();

    %>
    <!-- 3. 브라우저에게 결과를 알려주기 위한 html 코드가 미리 들어있다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<style>
	body {
		background: #f2f2f2;
	}
</style>

</head>
<body>
<% // for문 시작
	for(mySQL_bbsVO bag2: list) {
%>
검색한 게시글 번호 : <%= bag2.getNo() %>
<hr>
<table class="table table-dark table-striped">
	<tr>
		<td>검색한 제목</td>
		<td> <%= bag2.getTitle() %></td>
	</tr>
	<tr>
		<td>검색한 내용</td>
		<td><%= bag2.getContent() %></td>
	</tr>
	<tr>
		<td>검색한 작성자</td>
		<td><%= bag2.getWriter() %></td>
	</tr>

</table>
<% } // for문 끝%>
</body>
</html>