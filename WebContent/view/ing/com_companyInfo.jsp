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
<%-- <link href="${initParam.rootPath }/css/com_companyInfo.css" rel="stylesheet"> --%>
<link href="../../css/com_companyInfo.css" rel="stylesheet">


</head>
<body>

		<!--***********************************************************
		*                                                             *
		*                            nav                              *
		*                                                             *
		************************************************************-->

			<jsp:include page="../main/nav.jsp" />

	<br><br><br><br>
	<section>
	<!--***********************************************************
	*                                                             *
	*                           후기                                                                      *
	*                                                             *
	************************************************************-->		
	  <div role="tabpanel" class="tab-pane" id="review" style="background-color: #ffffff; margin-top: 2em">	
 		<!-- 평점란 -->
		<div class="row" style="padding-top: 5em; padding-bottom: 2em;
		                        padding-left: 3em; padding-right: 3em;">
			<div class="col-sm-4">
				<div class="form-group">
					<label for="progress_1">총평점</label>
					<div class="progress" id="progress_1">
						<div class="progress-bar progress-bar-warning" role="progressbar"
							aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"
							style="width: 77%">
							<span class="sr-only">70% Complete</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-2" style="padding-top: 25px;">4.8 / 5
			  <p>
			     <a class="btn btn-default" href="com_companyInfoDetail.jsp">전체보기</a>
			  </p>
			</div>

			<div class="col-sm-4">
				<div class="form-group">
					<label for="progress_1">복지 및 급여</label>
					<div class="progress" id="progress_1">
						<div class="progress-bar" role="progressbar" aria-valuenow="90"
							aria-valuemin="0" aria-valuemax="100" style="width: 77%">
							<span class="sr-only">70% Complete</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-2" style="padding-top: 25px;">3.8 / 5
			  <p>
			     <a class="btn btn-default" href="com_companyInfoDetail.jsp">전체보기</a>
			  </p>			
			</div>
		</div>
 
		<div class="row" style="padding-top: 1em; padding-bottom: 2em;
		                        padding-left: 3em; padding-right: 3em;">
			<div class="col-sm-4">
				<div class="form-group">
					<label for="progress_1">승진 기회 및 가능성</label>
					<div class="progress" id="progress_1">
						<div class="progress-bar" role="progressbar"
							aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"
							style="width: 77%">
							<span class="sr-only">70% Complete</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-2" style="padding-top: 25px;">4.4 / 5
			  <p>
			     <a class="btn btn-default" href="com_companyInfoDetail.jsp">전체보기</a>
			  </p>			
			</div>

			<div class="col-sm-4">
				<div class="form-group">
					<label for="progress_1">업무와 삶의 균형</label>
					<div class="progress" id="progress_1">
						<div class="progress-bar" role="progressbar" aria-valuenow="90"
							aria-valuemin="0" aria-valuemax="100" style="width: 77%">
							<span class="sr-only">70% Complete</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-2" style="padding-top: 25px;">4.3 / 5
			  <p>
			     <a class="btn btn-default" href="com_companyInfoDetail.jsp">전체보기</a>
			  </p>			
			</div>
		</div>
 
		<div class="row" style="padding-top: 1em; padding-bottom: 2em;
		                        padding-left: 3em; padding-right: 3em;">
			<div class="col-sm-4">
				<div class="form-group">
					<label for="progress_1">사내문화</label>
					<div class="progress" id="progress_1">
						<div class="progress-bar" role="progressbar"
							aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"
							style="width: 77%">
							<span class="sr-only">70% Complete</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-2" style="padding-top: 25px;">4.4 / 5
			  <p>
			     <a class="btn btn-default" href="com_companyInfoDetail.jsp">전체보기</a>
			  </p>			
			</div>

			<div class="col-sm-4">
				<div class="form-group">
					<label for="progress_1">경영진</label>
					<div class="progress" id="progress_1">
						<div class="progress-bar" role="progressbar" aria-valuenow="90"
							aria-valuemin="0" aria-valuemax="100" style="width: 77%">
							<span class="sr-only">70% Complete</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-2" style="padding-top: 25px;">4.4 / 5
			  <p>
			     <a class="btn btn-default" href="com_companyInfoDetail.jsp">전체보기</a>
			  </p>			
			</div>
		</div>  
		</div>
  </section>

</body>
</html>