<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
<title>TryCatch</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- bootstrap3 for trycatch -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Custom jQuery -->
<script type="text/javascript"
	src="${initParam.rootPath }/js/trycatch.js"></script>
<!-- Custom styles -->
<link href="${initParam.rootPath }/css/font.css" rel="stylesheet">
<link href="${initParam.rootPath }/css/trycatch.css" rel="stylesheet">

</head>
<body>
	<div class="container-fluid"
		style="background-color: #2196F3; color: #fff; height: 200px; padding-left: 14em; padding-top: 2em;">
		<h1>조영환의 포트폴리오</h1>
		<h3>여그다가는 뭐쓰지 참....</h3>
		<p>원하는 기업같은거 쓰자 여기는 ㅋㅋㅋ</p>
	</div>
	<br>

	<div class="container">
		<div class="row">
			<nav class="col-sm-3">
				<ul class="nav nav-pills nav-stacked">
					<li class="active"><a href="#intro">자기소개</a></li>
					<li><a href="#skills">기술</a></li>
					<li><a href="#hobby">관심 및 취미</a></li>
					<li><a href="#awards">수상경력</a></li>
					<li><a href="#portfolio">포트폴리오</a></li>
				</ul>
			</nav>
			<div class="col-sm-9">
			
				<div id="intro" style="padding-bottom: 15em;">
					<div class="panel panel-default">
						<div class="panel-heading"><h1>자기소개</h1></div>
						<div class="panel-body">
							<h5>나는 송다정입니다. 열심히해서 성공할거에요.</h5>
							<hr>
						</div>
						<div class="panel-footer">
							<button class="btn btn-info btn-sm">수정</button>
						</div>
					</div>
				</div>
				
				<div id="skills" style="padding-bottom: 15em;">
					<div class="panel panel-default">
						<div class="panel-heading"><h1>스킬</h1></div>
						<div class="panel-body">
							<ul>
								<li class="glyphicon glyphicon-pencil"> JavaScript</li><br><br>
								<li class="glyphicon glyphicon-pencil"> Java</li><br><br>
								<li class="glyphicon glyphicon-pencil"> Spring</li><br><br>
								<li class="glyphicon glyphicon-pencil"> BootStrap</li><br><br>
								<li class="glyphicon glyphicon-pencil"> jQuery</li><br><br>
							</ul>
							<hr>
						</div>
						<div class="panel-footer">
							<button class="btn btn-info btn-sm">수정</button>
						</div>
					</div>
				</div>
				
				<div id="hobby" style="padding-bottom: 15em;">
					<div class="panel panel-default">
						<div class="panel-heading"><h1>관심 및 취미</h1></div>
						<div class="panel-body">
							<h5>내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용</h5>
							<hr>
							<button class="btn btn-info btn-sm">수정</button>
						</div>
					</div>
				</div>
				
				<div id="awards" style="padding-bottom: 15em;">
					<div class="panel panel-default">
						<div class="panel-heading"><h1>수상경력</h1></div>
						<div class="panel-body">
							<ul>
								<li class="glyphicon glyphicon-king"> 아메리칸 코딩어워드</li><br><br>
								<li class="glyphicon glyphicon-king"> 코바코 공익광고제</li><br><br>
								<li class="glyphicon glyphicon-king"> 아스트라이드 어워드-골드위너</li><br><br>
							</ul>
							<hr>
							<button class="btn btn-info btn-sm">수정</button>
						</div>
					</div>
				</div>
				
				<div id="portfolio" style="padding-bottom: 15em;">
					<div class="panel panel-default">
						<div class="panel-heading"><h1>포트폴리오</h1></div>
						<div class="panel-body">
							<ul>
								<li class="glyphicon glyphicon-pushpin">
								<a href="http://github.com">포트폴리오1</a>
								</li><br><br>
								<li class="glyphicon glyphicon-pushpin">
								<a href="http://github.com">포트폴리오2</a>
								</li><br><br>
								<li class="glyphicon glyphicon-pushpin">
								<a href="http://github.com">포트폴리오3</a>
								</li><br><br>
							
							</ul>
							
							<hr>
							<button class="btn btn-info btn-sm">수정</button>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>

	<script>
		$(function() {
			$('.nav').affix({
				offset : {
					top : 205
				}
			});
		});
	</script>



</body>
</html>