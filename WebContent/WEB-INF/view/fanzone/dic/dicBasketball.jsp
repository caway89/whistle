<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!-- JSTL 활용방법 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Basketball Dictionary</title>
</head>
<body>
	<header>
		<h1>Whistle</h1>	
		<section>
		<h1>헤더</h1>
		<nav>
		<h1>헤더메뉴</h1>
		<ul>
			<li>Kick Off</li>
			<li>농구공</li>
		</ul>
		</nav>
		</section>	
	</header>
	<main>
	<section>
	<h1>메인</h1>
	<nav>
	<h1>용어검색자음</h1>
		<ul>
			<li>ㄱ</li>
			<li>ㄴ</li>
			<li>ㄷ</li>
			<li>ㄹ</li>
			<li>ㅁ</li>
			<li>ㅂ</li>
			<li>ㅅ</li>
			<li>ㅇ</li>
			<li>ㅈ</li>
			<li>ㅊ</li>
			<li>ㅌ</li>
			<li>ㅋ</li>
			<li>ㅍ</li>
			<li>ㅎ</li>
		</ul>
	</nav>
	<section>
		<h1>농구용어 검색 폼</h1>
		<form>
			<fieldset>
				<legend>검색정보</legend>
				<label>용어검색</label><input type="submit"value="돋보기"/><input type= "text"/>
			</fieldset>
		</form>
	</section>
	<nav>
		<h1>용어정리</h1>
			<ul>
				<li>용어설명</li>
			</ul>
	</nav>
	<section>
	<h1>게시판 그림</h1>
	<img src ="../images/농구드리블.png">
	<img src ="../images/응원.png">
	<img src ="../images/주황박스.png">
	<img src ="../images/떵크.png">
	</section>
	</section>
	
	</main>
</body>
</html>