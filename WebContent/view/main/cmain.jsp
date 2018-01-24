<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>

<title>TryCatch</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- bootstrap3 for trycatch -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- main.js 연결 -->
<script type="text/javascript" src="${initParam.rootPath }/js/ajax.js"></script>
<script type="text/javascript" src="${initParam.rootPath }/js/cmain.js"></script>

<!-- Custom jQuery -->
<script type="text/javascript" src="${initParam.rootPath }/js/trycatch.js"></script>


<!-- Custom styles -->
<link href="${initParam.rootPath }/css/font.css" rel="stylesheet">
<link href="${initParam.rootPath }/css/trycatch.css" rel="stylesheet">
<style type="text/css">
#modalpadding {
	padding-top: 30px;
	padding-left: 40px;
	padding-right: 40px;
	padding-bottom: 30px;
}
</style>

</head>
<body>
<!-- com-nav -->
<%@include file="com_nav.jsp" %>

<div class="container-fluid" style="z-index: -2;position: fixed; width:100%; margin: auto;">
	<img alt="기업배경" src="${initParam.rootPath }/image/building/building_9.jpg" style="width: 100%; height: auto;">
</div>
<div class="container-fluid" style="z-index: -1;">
	<img alt="기업배경" src="${initParam.rootPath }/image/building/welcome1.png" style="width: 100%;">
</div>
<div class="container-fluid" style="z-index: -1;">
	<img alt="기업배경" src="${initParam.rootPath }/image/building/welcome2.png" style="width: 100%;">
</div>

<div class="container-fluid" style="background-color: #ffffff; margin-top: 53em;">
	<div class="row">
		<div class="col-sm-12" style="size: 20em;">
			<P style="font-size: 30em;">s</P>
		</div>
	</div>
	
	<div class="container">
	<div class="row" style="padding-top:3em;padding-bottom: 3em;">
		<div class="col-sm-12">
			<div class="col-sm-5">
			 <h2 style="font-weight: 600; color: gray;line-height: 130%;">
			 	성공적인 취업을 위한 첫걸음!<br>
			 	먼저 자신의 포트폴리오 페이지를<br>
			 	꾸며주세요!
			 </h2>
			 <hr>
			 <h4 style="line-height: 160%;">
			 	자신이 어떤 일에 특화된 사람인지 먼저 알려주는것이 좋아요!
			 	자신이 했던 공부와 좋아하는분야에대해 자세히 적어주세요.
			 	기존 작업물들과 자신이 취득한 자격증, 수상경력과
			 	취미와 성격 등등 구체적일수록 채용확률이 올라갑니다.
			 </h4>
			</div>
			<div class="col-sm-1"></div>
			<div class="col-sm-6" style="padding-top: 1.2em;">
			  <img alt="상세페이지" src="${initParam.rootPath }/image/building/building_5.jpg" width="100%">
			</div>
		</div>
		</div>
		<hr>
		<div class="row" >
		<div class="col-sm-12" style="padding-top:2em;padding-bottom: 3em;">
			<div class="col-sm-6" style="padding-top: 1.2em;">
			  <img alt="상세페이지" src="${initParam.rootPath }/image/building/building_4.jpg" width="100%">
			</div>
			<div class="col-sm-1"></div>
			<div class="col-sm-5">
			 <h2 style="font-weight: 600; color: gray;line-height: 130%;">
			 	성공적인 취업을 위한 첫걸음!<br>
			 	먼저 자신의 포트폴리오 페이지를<br>
			 	꾸며주세요!
			 </h2>
			 <hr>
			 <h4 style="line-height: 160%;">
			 	자신이 어떤 일에 특화된 사람인지 먼저 알려주는것이 좋아요!
			 	자신이 했던 공부와 좋아하는분야에대해 자세히 적어주세요.
			 	기존 작업물들과 자신이 취득한 자격증, 수상경력과
			 	취미와 성격 등등 구체적일수록 채용확률이 올라갑니다.
			 </h4>
			</div>
		</div>
		</div>
		<hr>
		<div class="row" style="padding-top:2em;padding-bottom: 3em;">
		<div class="col-sm-12">
			<div class="col-sm-5">
			 <h2 style="font-weight: 600; color: gray;line-height: 130%;">
			 	성공적인 취업을 위한 첫걸음!<br>
			 	먼저 자신의 포트폴리오 페이지를<br>
			 	꾸며주세요!
			 </h2>
			 <hr>
			 <h4 style="line-height: 160%;">
			 	자신이 어떤 일에 특화된 사람인지 먼저 알려주는것이 좋아요!
			 	자신이 했던 공부와 좋아하는분야에대해 자세히 적어주세요.
			 	기존 작업물들과 자신이 취득한 자격증, 수상경력과
			 	취미와 성격 등등 구체적일수록 채용확률이 올라갑니다.
			 </h4>
			</div>
			<div class="col-sm-1"></div>
			<div class="col-sm-6" style="padding-top: 1.2em;">
			  <img alt="상세페이지" src="${initParam.rootPath }/image/building/building_3.jpg" width="100%">
			</div>
		</div>
		</div>
		<hr>
		</div>
	
</div>
<!-- footer -->
<%@include file="footer.jsp" %>
</body>
</html>