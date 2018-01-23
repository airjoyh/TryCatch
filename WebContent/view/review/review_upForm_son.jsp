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

<!-- main.js 연결 -->
<script type="text/javascript" src="${initParam.rootPath }/js/ajax.js"></script>
<script type="text/javascript" src="${initParam.rootPath }/js/main.js"></script>

<!-- Custom jQuery -->
<script type="text/javascript"
	src="${initParam.rootPath }/js/trycatch.js"></script>

<!-- Custom styles -->
<link href="${initParam.rootPath }/css/font.css" rel="stylesheet">
<link href="${initParam.rootPath }/css/trycatch.css" rel="stylesheet">

<style type="text/css">

</style>

</head>
<body style="background-color: #f4f4f4;">
	<!-- nav -->
	<%@include file="/view/main/nav.jsp"%>

	<div class="container" style="background-color: #ffffff;">
		<div class="row" style="padding-top: 8em; padding-bottom: 1em; padding-right: 4em;padding-left: 4em">
			<div class="col-sm-2"></div>
			<div class="col-sm-8">
				<h1 style="font-weight: 600;">후기 작성</h1>
				<hr>
			</div>
		</div>
	</div>

	<div class="container"
		style="background-color: #ffffff; margin-top: 1em;">
		<div class="well well-lg" style="margin-top: 2em; margin-left: 2em; margin-right: 2em;">
		
			<div class="row" style="padding-top: 2em;padding-bottom: 1em;">
				<div class="col-sm-2"></div>
				<div class="col-sm-5">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-modal-window"></i></span> <input
							class="form-control" id="title" name="title" type="text"
							placeholder="제목을 입력하세요">
					</div>
				</div>
				<div class="col-sm-3">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span> <input class="form-control"
							id="userName" name="userName" placeholder="닉네임을 입력하세요">
					</div>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-sm-2"></div>
				<div class="col-sm-8">
					<div class="form-group">
						<label for="good">해당 기업의 장정을 적어주세요</label> 
						<textarea rows="10" class="form-control" id="good"></textarea>
					</div>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-sm-2"></div>
				<div class="col-sm-8">
					<div class="form-group">
						<label for="bad">해당 기업의 단점을 적어주세요</label> 
						<textarea rows="10" class="form-control" id="bad"></textarea>
					</div>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-sm-2"></div>
				<div class="col-sm-8">
					<div class="form-group">
						<label for="want">경영진에게 바라는점을 적어주세요</label> 
						<textarea rows="10" class="form-control" id="want"></textarea>
					</div>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-sm-2"></div>
				<div class="col-sm-8">
					<ul class="list-group">
						<li class="list-group-item">승진기회 및 가능성
						<span class="star-input" id="star-A" style="float: right;"> 
						<span class="input"> 
							<input type="radio" name="star-input" id="p1" value="1"> 
							<label for="p1">1</label> 
							<input type="radio" name="star-input" id="p2" value="2"> 
							<label for="p2">2</label> 
							<input type="radio" name="star-input" id="p3" value="3"> 
							<label for="p3">3</label> 
							<input type="radio" name="star-input" id="p4" value="4"> 
							<label for="p4">4</label> 
							<input type="radio" name="star-input" id="p5" value="5"> 
							<label for="p5">5</label>
						</span>  &nbsp;
							<span class="badge" id="star-1"><b>0</b>점</span>
						</span>
						</li>
						<li class="list-group-item">복지 및 급여
						<span class="star-input" id="star-B" style="float: right;"> 
						<span class="input"> 
							<input type="radio" name="star-input" id="p6" value="1"> 
							<label for="p1">1</label> 
							<input type="radio" name="star-input" id="p7" value="2"> 
							<label for="p2">2</label> 
							<input type="radio" name="star-input" id="p8" value="3"> 
							<label for="p3">3</label> 
							<input type="radio" name="star-input" id="p9" value="4"> 
							<label for="p4">4</label> 
							<input type="radio" name="star-input" id="p10" value="5"> 
							<label for="p5">5</label>
						</span>  &nbsp;
							<span class="badge" id="star-2"><b>0</b>점</span>
						</span>
						</li>
						<li class="list-group-item">업무와 삶의 균형 <span class="badge">5</span></li>
						<li class="list-group-item">사내문화 <span class="badge">5</span></li>
						<li class="list-group-item">경영진<span class="badge">5</span></li>
					</ul>
				</div>
			</div>

		</div><!-- well -->
	</div><!-- container -->
	

	<!-- footer -->
	<%@include file="/view/main/footer.jsp"%>

</body>

</html>