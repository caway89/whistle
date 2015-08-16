
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
	

</style>


</head>
<body>
	<header>
		<h1>Whistle Team Info Management Page</h1>
		<section>
			<h1>Search Menu</h1>
			
			<p>searchByOneColumn</p>
			<form action="team-management" method="post">
				<label>검색 1컬럼</label>
				<select name="column">
					<option value="teamId" selected>팀ID</option>
					<option value="name">팀 명</option>
					<option value="regionName">지역명</option>
					<option value="sportsKind">종목</option>
				</select>
				
				<label>키워드</label><input type="text" name="keyword"/>
				<input type="submit" name="btn" value="search"/>
			</form>
		</section>
	</header>
	
	
	<main>
		<section>
			<h1>main</h1>
			<section>
				<p style="font-size:20pt;">${errorMsg }</p>
			</section>
			<section>
				<h1>Search Result</h1>
					<c:forEach var="team" items="${teams }">
						<ul class="team-info">
							<li><label>팀 ID</label><p>${team.teamId }</p></li>
							<li><label>팀 명</label><p>${team.name }</p></li>
							<li><label>지역 명</label><p>${team.regionName }</p></li>
							
							<li class="team-color">
								<label>팀 색</label>
								<div style="width:20px; height:20px; background:#${team.colorRgb };"></div>
								<p>${team.colorRgb }</p>
	
							</li>
							
						
							<li><label>뉴스 Url</label><p>${team.newsUrl }</p></li>
							<li><label>겉 뉴스 Url</label><p>${team.newsUrlFake }</p></li>
							<li><label>과거 성적</label><p>${team.lastCareer}</p></li>
							<li><label>공식 사이트</label><p>${team.teamSiteUrl}</p></li>
							
							
							<li>
								<label>엠블렘</label>
								<p>${team.emblemUrl }</p>
								<img src="${ctxName }${team.emblemUrl }"/>
							</li>
							<li>
								<label>슬로건</label>
								<p>${team.sloganUrl }</p>
								<img src="${team.emblemUrl }"/>
							</li>
							<li>
								<label>연혁</label>
								<p>${team.historyUrl }</p>
								<img src="${team.historyUrl }"/>
							</li>
						</ul>
					</c:forEach>
			</section>
	
			
			<section>
				<h1>Data Input</h1>
					
				<form action="team-management" method="post">
					<label>종목</label>
					<select name="sportsKind">
						<option value="BaseBall" selected>야구</option>
						<option value="VolleyBall">배구</option>
						<option value="BasketBall">농구</option>
						<option value="Soccer">축구</option>
					</select>
					
					<ul>	
						<li><label>팀 ID</label><input type="text" name="teamId"/></li>
						<li><label>팀명</label><input type="text" name="name"/></li>
						<li><label>지역명</label><input type="text" name="regionName"/></li>
						<li><label>팀 색 16진수 rgb</label><input type="text" name="colorRgb"/></li>
						<li><label>뉴스 Url</label><input type="text" name="newsUrl"/></li>
						<li><label>겉 뉴스 Url</label><input type="text" name="newsUrlFake"/></li>
						<li><label>지난 성적</label><input type="text" name="lastCareer"/></li>
						<li><label>공식 사이트 Url</label><input type="text" name="teamSiteUrl"/></li>
						
						
						<!-- image -->
						
						
						
					</ul>
					
					<input type="submit" name="btn" value="insert-string-data"/>
					
				</form>
				
				
			<section>
				<h1>엠블렘 업로드 test</h1>	
				<form action="team-management-file" method="post" enctype="multipart/form-data">
					<ul>
					<li><label>팀 ID</label><input type="text" name="teamId"/></li>
					<li><label>엠블렘 파일</label><input type="file" name="file"/></li>
					</ul>
					<input type="submit" name="btn" value="update-emblem-image"/>
				</form>
			</section>	
				
				
				
			</section>
			
			
			<section>
				<h1>팀 삭제</h1>
				
					<form action="" method="post">
						<label>팀 ID</label><input type="text" name="teamId"/>
						<input type="submit" name="btn" value="delete" />
					</form>
			</section>
		</section>
	</main>




</body>
</html>
