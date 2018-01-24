<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE html>
<html lang="kr">
<head>
<script type="text/javascript" src="${initParam.rootPath }/js/jquery-3.js"></script>
<script type="text/javascript" src="${initParam.rootPath }/js/ajax.js"></script>
<script type="text/javascript" src="${initParam.rootPath }/js/main.js"></script>

<title>TryCatch_companyInfo</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- bootstrap3 for trycatch -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src=""></script>
<!-- Custom jQuery -->
<script type="text/javascript" src="${initParam.rootPath }/js/trycatch.js"></script>

<!-- Custom styles -->

<!-- Custom styles -->
<link href="${initParam.rootPath }/css/trycatch.css" rel="stylesheet">
<link href="${initParam.rootPath }/css/font.css" rel="stylesheet">


</head>
<body style="background-color: #f4f4f4;">
	<section>
		<!--***********************************************************
		*                                                             *
		*                            nav                              *
		*                                                             *
		************************************************************-->
		<div>
			<jsp:include page="../main/nav.jsp" />
		</div>
	</section>
		<!--***********************************************************
		*                                                             *
		*                           body                              *
		*                                                             *
		************************************************************-->
	<div class="container"
		style="background-color: #ffffff; margin-top: 2em">
		<div class="row"
			style="padding-top: 7em; padding-bottom: 2em; padding-left: 3em; padding-right: 3em;">
			
			<div class="col-sm-4">
				<h2>총평점</h2>
				<ul class="list-group" style="padding-top: 1em">
					<c:forEach begin="1" end="5" var="num">
						<li class="list-group-item">
						<label for="a_${num}">
							<font style="color: teal;font-size: large;">${num}위</font>
							<font class="companyName_a">기업명</font>
						</label>
						<label style="float: right;">
							<span class="badge a${num}" style="background-color: teal;"><b>4.7</b>/5점</span>
						</label>
						<div class="progress" id="a_${num}">
							<div class="progress-bar progress-bar-warning"
								role="progressbar" aria-valuenow="90" aria-valuemin="0"
								aria-valuemax="100" style="width: 77%">
							</div>
						</div>
						</li>
					</c:forEach>
				</ul>
			</div>
			
			<div class="col-sm-4">
				<h2>승진 기회 및 가능성</h2>
				<ul class="list-group" style="padding-top: 1em">
					<c:forEach begin="1" end="5" var="num">
						<li class="list-group-item">
						<label for="b_${num}">
							<font style="color: teal;font-size: large;">${num}위</font>
							<font class="companyName_b">기업명</font>
						</label>
						<label style="float: right;">
							<span class="badge b${num}" style="background-color: teal;"><b>4.7</b>/5점</span>
						</label>
						<div class="progress" id="b_${num}">
							<div class="progress-bar progress-bar-info"
								role="progressbar" aria-valuenow="90" aria-valuemin="0"
								aria-valuemax="100" style="width: 77%">
							</div>
						</div>
						</li>
					</c:forEach>
				</ul>
			</div>
			
			<div class="col-sm-4">
				<h2>복지 및 급여</h2>
				<ul class="list-group" style="padding-top: 1em">
					<c:forEach begin="1" end="5" var="num">
						<li class="list-group-item">
						<label for="c_${num}">
							<font style="color: teal;font-size: large;">${num}위</font>
							<font class="companyName_c">기업명</font>
						</label>
						<label style="float: right;">
							<span class="badge c${num}" style="background-color: teal;"><b>4.7</b>/5점</span>
						</label>
						<div class="progress" id="c_${num}">
							<div class="progress-bar progress-bar-info"
								role="progressbar" aria-valuenow="90" aria-valuemin="0"
								aria-valuemax="100" style="width: 77%">
							</div>
						</div>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		
		<div class="row"
			style="padding-top: 2em; padding-bottom: 2em; padding-left: 3em; padding-right: 3em;">
			
			<div class="col-sm-4">
				<h2>업무와 삶의 균형</h2>
				<ul class="list-group" style="padding-top: 1em">
					<c:forEach begin="1" end="5" var="num">
						<li class="list-group-item">
						<label for="d_${num}">
							<font style="color: teal;font-size: large;">${num}위</font>
							<font class="companyName_d">기업명</font>
						</label>
						<label style="float: right;">
							<span class="badge d${num}" style="background-color: teal;"><b>4.7</b>/5점</span>
						</label>
						<div class="progress" id="d_${num}">
							<div class="progress-bar progress-bar-info"
								role="progressbar" aria-valuenow="90" aria-valuemin="0"
								aria-valuemax="100" style="width: 77%">
							</div>
						</div>
						</li>
					</c:forEach>
				</ul>
			</div>
			
			<div class="col-sm-4">
				<h2>사내문화</h2>
				<ul class="list-group" style="padding-top: 1em">
					<c:forEach begin="1" end="5" var="num">
						<li class="list-group-item">
						<label for="e_${num}">
							<font style="color: teal;font-size: large;">${num}위</font>
							<font class="companyName_e">기업명</font>
						</label>
						<label style="float: right;">
							<span class="badge e${num}" style="background-color: teal;"><b>4.7</b>/5점</span>
						</label>
						<div class="progress" id="e_${num}">
							<div class="progress-bar progress-bar-info"
								role="progressbar" aria-valuenow="90" aria-valuemin="0"
								aria-valuemax="100" style="width: 77%">
							</div>
						</div>
						</li>
					</c:forEach>
				</ul>
			</div>
			
			<div class="col-sm-4">
				<h2>경영진</h2>
				<ul class="list-group" style="padding-top: 1em">
					<c:forEach begin="1" end="5" var="num">
						<li class="list-group-item">
						<label for="f_${num}">
							<font style="color: teal;font-size: large;">${num}위</font>
							<font class="companyName_f">기업명</font>
						</label>
						<label style="float: right;">
							<span class="badge f${num}" style="background-color: teal;"><b>4.7</b>/5점</span>
						</label>
						<div class="progress" id="f_${num}">
							<div class="progress-bar progress-bar-info"
								role="progressbar" aria-valuenow="90" aria-valuemin="0"
								aria-valuemax="100" style="width: 77%">
							</div>
						</div>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		
		
	</div><!-- container -->

</body>
</html>