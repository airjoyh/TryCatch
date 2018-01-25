<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--ajax 통신을 위한 json설정 --%>

<!-- C태그 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="kr">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link href="${initParam.rootPath }/css/font.css" rel="stylesheet">
<link href="${initParam.rootPath }/css/portfolio_Search.css" rel="stylesheet">  

<script type="text/javascript" src="${initParam.rootPath }/js/ajax2.js"></script>
<script type="text/javascript" src="${initParam.rootPath }/js/portfolio_Search.js"></script>

  <title>포트폴리오 검색</title>
  
  </head>
  <body>
	<!--***********************************************************
	*                                                             *
	*                            nav                              *
	*                                                             *
	************************************************************-->
	<%@include file="/view/main/nav.jsp"%>
	
	<!--***********************************************************
	*                                                             *
	*                            제목                                                                    *
	*                                                             *
	************************************************************-->
  
	<div class="container" style=" background-image: url('${initParam.rootPath}/image/monitor/top_mac.jpg');" >
		<div class="row" style="padding-top: 8em; padding-bottom: 1em; padding-right: 4em;padding-left: 4em">
			<div class="col-sm-2"></div>
			<div class="col-sm-8">
				<h1 style="font-weight: 600; ">준비된 인재 찾기</h1>
				<hr>
			</div>
		</div>
	</div>
	
	<!--***********************************************************
	*                                                             *
	*                           body                              *
	*                                                             *
	************************************************************-->	
		<div class="container"
		 style="background-color: #ffffff; margin-top: 1em;">
			<div class="well well" style="margin-top: 2em; margin-left: 2em; margin-right: 2em;">
			
				<!-- 포트폴리오 키워드-->
				<div class="toolbar mb2 mt2">
				  <button class="btn fil-cat" href="" data-rel="all">All</button>
				  <button class="btn fil-cat" data-rel="java">Java</button>
				  <button class="btn fil-cat" data-rel="jsp">JSP</button>
				  <button class="btn fil-cat" data-rel="oracle">Oracle</button>
				  <button class="btn fil-cat" data-rel="spring">Spring</button>
				  <button class="btn fil-cat" data-rel="jquery">jQuery</button>
				</div> 
				<!-- 포트폴리오 --> 
				<div style="clear:both;"></div> 
				  
				<div id="portfolio">
				  <div class="tile scale-anm java all">     
				  	<img alt="" src="${initParam.rootPath }/image/person/person_1.jpg">
				  </div>
				  <div class="tile scale-anm java all">     
				  	<img alt="" src="${initParam.rootPath }/image/person/person_1.jpg">
				  </div>
				  <div class="tile scale-anm jsp all">     
				  	<img alt="" src="${initParam.rootPath }/image/person/person_2.jpg">
				  </div>
				  <div class="tile scale-anm jsp all">     
				  	<img alt="" src="${initParam.rootPath }/image/person/person_2.jpg">
				  </div>
				  <div class="tile scale-anm orcle all">     
				  	<img alt="" src="${initParam.rootPath }/image/person/person_3.jpg">
				  </div>
				  <div class="tile scale-anm orcle all">     
				  	<img alt="" src="${initParam.rootPath }/image/person/person_3.jpg">
				  </div>
				  <div class="tile scale-anm spring all">     
				  	<img alt="" src="${initParam.rootPath }/image/person/person_4.jpg">
				  </div>
				  <div class="tile scale-anm spring all">     
				  	<img alt="" src="${initParam.rootPath }/image/person/person_4.jpg">
				  </div>
				  <div class="tile scale-anm jquery all">     
				  	<img alt="" src="${initParam.rootPath }/image/ing/facebook.jpg">
				  </div>
				  <div class="tile scale-anm jquery all">     
				  	<img alt="" src="${initParam.rootPath }/image/ing/facebook.jpg">
				  </div>
				</div>
				
				<div style="clear:both;"></div>   			
			</div>
	 	</div>
	<!--***********************************************************
	*                                                             *
	*                           footer                            *
	*                                                             *
	************************************************************-->	
	<%@include file="/view/main/footer.jsp"%>
  </body>
</html>