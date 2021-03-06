
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  <!-- JSTL 활용방법 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<c:set var="ctxName" value="${pageContext.request.contextPath}"/>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>article-list</title>
<link href="${ctxName }/resource/css/reset.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="${ctxName }/resource/js/modernizr.js"></script>
<style>
	
	/**general**/
	
	.hidden{
		display:none;
	}

	.content-wrapper{
		width:1152px;
		height:inherit;
		
		margin-left:auto;
		margin-right:auto;
	}
	
	.clearfix:after{
		content: " ";
	    display: block;
	    height: 0;
	    clear: both;
	    overflow: hidden;
	    visibility: hidden;
	}
	
	body{
		font-family: malgun, sans-serif;
		font-size:12pt;
	
	}
	
	
	
	/* header styling */
	
	
	#header .content-wrapper{
		width:1102px;
		height:inherit;
		
		margin-left:auto;
		margin-right:auto;
		
		border-bottom:3px solid #0a55b3;
	}
	
	
	
	#header{
		width:100%;
		height:160px;
	}
	
	#header-white-bar{
		display:block;
		text-indent:-9999px;
		
		heigth:20px;
		background: #FFFFFF;
	}
	
	#header-left{
		width:180px;
		height:120px;
			
		
		float:left;
		
		background: url(${ctxName}/resource/images/board/bg-header-left.png) no-repeat center;
		background-size: 100% 100%;
	}
	
	
	
	#home-logo{
		height:110px;
		width:160px;
		
		text-indent:-9999px;
		
		margin-left:auto;
		margin-right:auto;
		/* background: url(${ctxName}/resource/images/whistle-logo2.png) no-repeat center;
		background-size:cover; */
	}
	
	#home-logo a{
		display:block;
		
		height:110px;
		width:160px;
		
		
		background: url(${ctxName}/resource/images/whistle-logo2.png) no-repeat center;
		background-size: 100% 100%;
	}
	
	
	
	
	#header-right{
		width:200px;
		height:25px;
		
		float:right;
		
		padding: 0px 5px 2px 0px;
		
		background: url(${ctxName}/resource/images/board/bg-header-right-menu.png) no-repeat center;
		background-size: cover;
	}
	
	
	#header-menu{
		display:block;
		
		
		margin-left:auto;
		margin-right:auto;
	}
	
	
	
	
	#header-menu li{
		
		padding-right:4px;
		float:right;
	}
	
	#header-menu li:first-child{
		padding-right:0px;
	
	}
	
	#header-menu a{
		font-family:inherit;
		font-size:1em;
		color:inherit;
		text-decoration:none;
	}
	
	
	#header-visual{
		height:140px;
		width:inherit;
		background: url(${ctxName}/resource/images/board/bg-board-header-pattern.png) repeat-x left;
		
	}
	
	
	
	/*  main styling */
	
	/* main -header */
	#main .content-wrapper{
		width:952px;
		height:inherit;
		
		margin-left:auto;
		margin-right:auto;
	}
	
	
	#main-header{
		width:952px;
		height:100px;
		
		
		margin-top:12px;
	}
	
	
	#main-header>p:first-child{
		font-size:2.4em;
		font-weight:bold;
	}
	
	#main-header > p:first-child + p{
		font-size: 1.3em;
		color: rgb(117,117,117);
	}
	
	
	
	
	/** main - body  **/
	
	#main-body{
		width:952px;
		
		margin-left:auto;
		margin-right:auto;
		
	}
	
	/*  main - article */
	
	
	#article{
		width:655px;
		
	}
	
	#article-div{
		
		width:625px;
		
		
		
		
		 border-radius: 15px;
  		 border: 4px solid #0a55b3;
  		 padding: 15px; 
		
		
		float:left;
	}
	
	

	
	/*** chat ***/
	
	#cheering-chat{
		width:235px;
		height:500px;
		
	
		float:right;
		
		
		 border-radius: 15px;
  		 border: 4px solid #0a55b3;
  		 padding: 15px; 
	}
	
	
	

	
	
	/** page nav **/
	#board-page-nav{
		
		display:block;
		
		width:200px;
		overflow:auto;
		
		margin-left:auto;
		margin-right:auto;
	}
	
	
	#board-page-nav ul li{
		 float:left;
	
	}






	/*  */
	
	
	#attraction-paragraph .content-wrapper{
		width:952px;
		height:inherit;
		
		margin-left:auto;
		margin-right:auto;
	}
	
	
	
	
	#attraction-paragraph{
		margin-top:45px;
	
	}
	
	#attraction-paragraph p{
		font-size: 3em;
		font-weight: bold;
	
	}
	
	
	
	
</style>
	



</head>
<body>
	
	
	<h1 class="hidden">게시판</h1>
	<header>
			<section id="header">
				<h1 class="hidden">헤더메뉴</h1>
				
				<div id="header-white-bar">bar</div>
				
				
				<div id="header-visual">
				
				<div class="content-wrapper">
					<div id="header-left">
					<nav id="home-logo"><a href="${ctxName}">homelogo</a></nav>
					</div>
					
					
					
					<nav id="header-right">
						<ul id="header-menu">
							<li><a href="">회원 가입</a></li>
							<li><a href="">로그인</a></li>
						</ul>
					</nav>
					
				</div>
				
				</div>
			</section>
		
	</header>
	
	
	
	
	<main id="main">
		<div class="content-wrapper clearfix">
		<section>
			
			<h1 class=hidden>게시판 메인</h1>
				<header id="main-header">
				<p>Whistle Free Board</p>
				<p>회원들이 자유롭게 소통하는 공간입니다.</p>
				</header>
				
		<div id="main-body clearfix">
				
			<div id="article-div">
				<article id=article>
					<h1>게시판 글</h1>
						<dl>
							<dt>제목</dt><dd>${article.title }</dd>
							<dt>조회수</dt><dd>${article.hit }</dd>
							<dt>댓글수</dt><dd>${article.cntCmnt }</dd>
							<dt>등록일</dt><dd><fmt:formatDate value="${article.regDate }" pattern="yyyy-MM-dd"/></dd>
							<dt>내용</dt><dd>${article.content }</dd>
						</dl>
				</article>
				
			
				<nav>
					<h1>게시판 글 하단 버튼</h1>
					
						<form method="POST">
							<input type="hidden" name="articleId" value="${article.intId}" />
							<input type="submit" name="btn" value="deleteArticle"/>
						</form>
						<p><a href="${ctxName}/board/board-list">목록</a></p>
						<p>글 쓰기</p>
						<p>신고</p>
				</nav>
				
				<div id="comment">
				<article>
					<h1>댓글</h1>
						<div>
						
							
							<c:forEach var="comment" items="${article.commentsOfThis}">
								<dl>
									<dt class="seq">번호</dt><dd></dd>
									<dt class="writer-name">작성자이름</dt><dd>${comment.writerName }</dd>
									<dt class="content">내용</dt><dd>${comment.content }</dd>
									<dt class="reg-date">등록일</dt><dd>${comment.regDate }</dd>
		
								</dl>
								<p>수정</p>
								<p>삭제</p>
								<p>신고</p>
							</c:forEach>
						</div>
						
					
				</article>
				
				
				<section id="reg-comment">
					<h1>댓글 작성</h1>
						<p>작성자 닉네임</p>
						<form method="POST">
							<input type="hidden" name="articleId" value="${article.intId}" />
							<label>작성자id</label><input type="text" name="writerId"/>
							<label>내용</label><input type="text" name="content"/>
							
							<input type="submit" name="btn" value="regComment"/>
						</form>
						
				</section>
				</div>
			
			</div>
			
			
			
			
				<section id="cheering-chat">
					<div id="cheering-chat-app"></div>
				</section>
				
	
		</div>
		
		
			
		
		</section>
		</div>
	</main>
	

	<section id="attraction-paragraph">
		<div class="content-wrapper">
				
					<p>Fans Precedes a Team.</p>
				
		</div>
	</section>



</body>
</html>