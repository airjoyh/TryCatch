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
<script type="text/javascript" src="${initParam.rootPath }/js/main.js"></script>

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
<body style="background-color: #f4f4f4;">
<%@include file="nav.jsp" %>

	<!--***********************************************************
	*                                                             *
	*                        myCarousel                           *
	*                                                             *
	************************************************************-->

	<div id="myCarousel" class="carousel slide" data-ride="carousel" style="size: auto;">
		<!-- Indicators -->
		<ol class="carousel-indicators" style="padding-bottom: 2em;">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner">

			<div class="item active">
				<img src="${initParam.rootPath }/image/monitor/monitor_1.jpg" alt="Los Angeles" style="width: 100%;">
				<div class="carousel-caption">
					<h3 style="font-size: 5em;"><b>Try Catch</b> 신규 오픈 이벤트!</h3>
					<hr>
					<p style="font-size: 2em;padding-bottom: 4em;">
					<font style="font-size: 2em;">이벤트 1.</font><br>
					신규로 오신 기업회원님께드리는 특별한 혜택!<br>
					가입 이후 콘테스트 개최 후 채용 목표인원 달성시 <br>
					최대 50%의 비용을 돌려드립니다!  
					</p>
				</div>
			</div>

			<div class="item">
				<img src="${initParam.rootPath }/image/monitor/monitor_2.jpg" alt="Chicago" style="width: 100%;">
				<div class="carousel-caption">
					<h3 style="font-size: 5em;"><b>Try Catch</b> 신규 오픈 이벤트!</h3>
					<hr>
					<p style="font-size: 2em;margin-bottom: 4em;">
					<font style="font-size: 2em;">이벤트 2.</font><br>
					신규로 오신 기업회원님께드리는 특별한 혜택!<br>
					가입 이후 콘테스트 개최 후 채용인원 달성시 <br>
					최대 50%의 비용을 돌려드립니다!  
					</p>
				</div>
			</div>

			<div class="item">
				<img src="${initParam.rootPath }/image/monitor/monitor_3.jpg" alt="New York" style="width: 100%;">
				<div class="carousel-caption" >
					<h3 style="font-size: 5em;"><b>Try Catch</b> 신규 오픈 이벤트!</h3>
					<hr>
					<p style="font-size: 2em;margin-bottom: 4em;">
					<font style="font-size: 2em;">이벤트 3.</font><br>
					신규로 오신 기업회원님께드리는 특별한 혜택!<br>
					가입 이후 콘테스트 개최 후 채용인원 달성시 <br>
					최대 50%의 비용을 돌려드립니다!  
					</p>
				</div>
			</div>

		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
	<!--***********************************************************
	*                                                             *
	*                        page body                            *
	*                                                             *
	************************************************************-->
	<div class="container" style="margin-top: 2em; padding:2em;background-color: #ffffff">
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
			  <img alt="상세페이지" src="${initParam.rootPath }/image/monitor/talk.jpg" width="100%">
			</div>
		</div>
		</div>
		<hr>
		<div class="row" >
		<div class="col-sm-12" style="padding-top:2em;padding-bottom: 3em;">
			<div class="col-sm-6" style="padding-top: 1.2em;">
			  <img alt="상세페이지" src="${initParam.rootPath }/image/monitor/dark_pc.jpg" width="100%">
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
			  <img alt="상세페이지" src="${initParam.rootPath }/image/monitor/top_mac.jpg" width="100%">
			</div>
		</div>
		</div>
		<hr>
	</div>

	<!--***********************************************************
	*                                                             *
	*                             footer                          *
	*                                                             *
	************************************************************-->
    <%@include file="footer.jsp" %> 

</body>
</html>