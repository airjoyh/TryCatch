<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link href="${initParam.rootPath }/css/font.css" rel="stylesheet">

<!-- Custom styles -->
<link href="${initParam.rootPath }/css/com_companyInfo.css" rel="stylesheet">
<!-- <link href="../../css/com_companyInfo.css" rel="stylesheet"> -->


</head>
<body>
	<section>
		<!--***********************************************************
		*                                                             *
		*                            nav                              *
		*                                                             *
		************************************************************-->
		<div>
			<jsp:include page="/view/main/nav.jsp" /> 
		</div>
	</section>
	<br><br><br><br>
	<section>
	<!--***********************************************************
	*                                                             *
	*                     Company Info 전체보기-성원                                         *
	*                                                             *
	************************************************************-->
	  <div class="py-5">
	    <div class="container">
		    <div class="pull-left">
		      <p>
			     <a class="btn btn-default pull-right" href="com_companyInfoDetail.jsp">전체보기</a>
			  </p>
		    </div>
		    <br><br><br>
	      <div class="row">
	        <div class="col-md-3">
	          <div id="wrapper">
		  	  	<label>복지 및 급여</label>
							<p class="clasificacion">
								<input id="radio1" type="radio" name="estrellas1" value="5">
								<label for="radio1">&#9733;</label>
								<input id="radio2" type="radio" name="estrellas1" value="4">
								<label for="radio2">&#9733;</label>
								<input id="radio3" type="radio" name="estrellas1" value="3">
								<label for="radio3">&#9733;</label>
								<input id="radio4" type="radio" name="estrellas1" value="2">
								<label for="radio4">&#9733;</label>
								<input id="radio5" type="radio" name="estrellas1" value="1">
								<label for="radio5">&#9733;</label>
							</p>
			  </div>
	        </div>
	        <div class="col-md-3">
	          <div id="wrapper">
		  	  	<label>승진 기회 및 가능성</label>
							<p class="clasificacion">
								<input id="radio6" type="radio" name="estrellas2" value="5">
								<label for="radio6">&#9733;</label>
								<input id="radio7" type="radio" name="estrellas2" value="4">
								<label for="radio7">&#9733;</label>
								<input id="radio8" type="radio" name="estrellas2" value="3">
								<label for="radio8">&#9733;</label>
								<input id="radio9" type="radio" name="estrellas2" value="2">
								<label for="radio9">&#9733;</label>
								<input id="radio10" type="radio" name="estrellas2" value="1">
								<label for="radio10">&#9733;</label>
							</p>				
			  </div>       
	        </div>
	        <div class="col-md-3">
	          <div id="wrapper">
		  	  	<label>업무와 삶의 균형</label>
							<p class="clasificacion">
								<input id="radio11" type="radio" name="estrellas3" value="5">
								<label for="radio11">&#9733;</label>
								<input id="radio12" type="radio" name="estrellas3" value="4">
								<label for="radio12">&#9733;</label>
								<input id="radio13" type="radio" name="estrellas3" value="3">
								<label for="radio13">&#9733;</label>
								<input id="radio14" type="radio" name="estrellas3" value="2">
								<label for="radio14">&#9733;</label>
								<input id="radio15" type="radio" name="estrellas3" value="1">
								<label for="radio15">&#9733;</label>
							</p>
			  </div>       
	        </div>
	        <div class="col-md-3">
	          <div>
	        	<img alt="첫번째 회사" src="${initParam.rootPath}/image/review/facebook.jpg">
	          </div>	
	          <div>
	        	<img alt="두번째 회사" src="${initParam.rootPath}/image/review/ksd.jpg">
	          </div>
	        </div>
	      </div>
	      <div class="row">
	        <div class="col-md-3">
	          <div id="wrapper">
		  	  	<label>사내문화</label>
							<p class="clasificacion">
								<input id="radio16" type="radio" name="estrellas4" value="5">
								<label for="radio16">&#9733;</label>
								<input id="radio17" type="radio" name="estrellas4" value="4">
								<label for="radio17">&#9733;</label>
								<input id="radio18" type="radio" name="estrellas4" value="3">
								<label for="radio18">&#9733;</label>
								<input id="radio19" type="radio" name="estrellas4" value="2">
								<label for="radio19">&#9733;</label>
								<input id="radio20" type="radio" name="estrellas4" value="1">
								<label for="radio20">&#9733;</label>
							</p>
			  </div>         
	        </div>
	        <div class="col-md-3">
	          <div id="wrapper">
		  	  	<label>경영진</label>
							<p class="clasificacion">
								<input id="radio21" type="radio" name="estrellas5" value="5">
								<label for="radio21">&#9733;</label>
								<input id="radio22" type="radio" name="estrellas5" value="4">
								<label for="radio22">&#9733;</label>
								<input id="radio23" type="radio" name="estrellas5" value="3">
								<label for="radio23">&#9733;</label>
								<input id="radio24" type="radio" name="estrellas5" value="2">
								<label for="radio24">&#9733;</label>
								<input id="radio25" type="radio" name="estrellas5" value="1">
								<label for="radio25">&#9733;</label>
							</p>
			  </div>         
	        </div>
	        <div class="col-md-3">
	        	<label>총 만족도</label>
				<span class="star-input">
					<span class="input">
				    	<input type="radio" name="star-input" value="1" id="p1">
				    	<label for="p1">1</label>
				    	<input type="radio" name="star-input" value="2" id="p2">
				    	<label for="p2">2</label>
				    	<input type="radio" name="star-input" value="3" id="p3">
				    	<label for="p3">3</label>
				    	<input type="radio" name="star-input" value="4" id="p4">
				    	<label for="p4">4</label>
				    	<input type="radio" name="star-input" value="5" id="p5">
				    	<label for="p5">5</label>
				  	</span>
				  	<output for="star-input"><b>0</b>점</output>						
				</span>        
	        </div>
	        <!-- 채용정보 등록란 -->
	        <div class="col-md-3"></div>
	      </div>
	    </div>
	  </div>
  </section>
<!-- star js -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="../../js/com_companyInfo.js"></script>
</body>
</html>