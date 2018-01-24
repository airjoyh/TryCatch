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
<link href="${initParam.rootPath }/css/review_post.css" rel="stylesheet">  

<script type="text/javascript" src="${initParam.rootPath }/js/ajax2.js"></script>
<script type="text/javascript" src="${initParam.rootPath }/js/review_post.js"></script>

  <title>글 상세정보</title>
  </head>
  <body style="background-color: #f4f4f4;">
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
  
	<div class="container" style=" background-image: url('${initParam.rootPath}/image/monitor/pencil.jpg');" >
		<div class="row" style="padding-top: 8em; padding-bottom: 1em; padding-right: 4em;padding-left: 4em">
			<div class="col-sm-2"></div>
			<div class="col-sm-8">
				<h1 style="font-weight: 600; ">후기상세정보</h1>
				<hr>
			</div>
		</div>
	</div>
	
	<!--***********************************************************
	*                                                             *
	*                           body - 수정                                                      *
	*                                                             *
	************************************************************-->	
	<div class="container"
		 style="background-color: #ffffff; margin-top: 1em;">
	  <div class="well well" style="margin-top: 2em; margin-left: 2em; margin-right: 2em;">
	  	 <div id="wrap">
	  	 	<br><br>
	  	 	<form id="postForm" name="postForm" method="POST">
	  	 		<div id="board" align="center">
	  	 			<table id="tdetail" border="3" bordercolor="lightgray" >
	  	 				<tr>
	  	 					<td style="text-align: center;">글번호</td>
	  	 					<!-- 컨트롤러에서 받아온 ArrayList detailAll에서 정보를 뽑는다. -->
	  	 					<td id="no">${review.review_no }</td>
	  	 				</tr>
	  	 				<tr>
	  	 					<td style="text-align: center;">제목</td>
	  	 					<td id="title">${review.review_title }</td>
	  	 				</tr>
				        <tr>
				            <td style="text-align: center;">글쓴이</td>
				            <td>${review.review_writer }</td>
				        </tr>
				        <tr>
				            <td style="text-align: center;">조회</td>
				            <td>${review.review_count }</td>
				        </tr>
				        <tr>
				            <td style="text-align: center;">작성일시</td>
				            <td>${review.review_wdate }</td>
				        </tr>
				        <tr>
				        	<td style="text-align: center;">기업 장점</td>
            				<td>${review.review_strong }</td>		        	
				        </tr>	  	 				
				        <tr>
				        	<td style="text-align: center;">기업 단점</td>
            				<td>${review.review_weak }</td>		        	
				        </tr>	  	 				
				        <tr>
				        	<td style="text-align: center;">경영진에 바라는점</td>
            				<td>${review.review_toCEO }</td>		        	
				        </tr>
				        <tr>
				        	<td style="text-align: center;">별점</td>
				        	<td>
				        		<br>
								<div>
									<ul class="list-group">
										<li class="list-group-item">승진기회 및 가능성
										<span class="star-input" id="star-A" style="float: right;"> 
										<span class="input"> 
											<input type="radio" name="star-input1" id="p1" value="1"> 
											<label for="p1">1</label> 
											<input type="radio" name="star-input1" id="p2" value="2"> 
											<label for="p2">2</label> 
											<input type="radio" name="star-input1" id="p3" value="3"> 
											<label for="p3">3</label> 
											<input type="radio" name="star-input1" id="p4" value="4"> 
											<label for="p4">4</label> 
											<input type="radio" name="star-input1" id="p5" value="5"> 
											<label for="p5">5</label>
										</span>  &nbsp;
											<span class="badge" id="star-1"><b>0</b>점</span>
										</span>
										</li>
										<li class="list-group-item">복지 및 급여
										<span class="star-input" id="star-B" style="float: right;"> 
										<span class="input"> 
											<input type="radio" name="star-input2" id="p6" value="1"> 
											<label for="p6">1</label> 
											<input type="radio" name="star-input2" id="p7" value="2"> 
											<label for="p7">2</label> 
											<input type="radio" name="star-input2" id="p8" value="3"> 
											<label for="p8">3</label> 
											<input type="radio" name="star-input2" id="p9" value="4"> 
											<label for="p9">4</label> 
											<input type="radio" name="star-input2" id="p10" value="5"> 
											<label for="p10">5</label>
										</span>  &nbsp;
											<span class="badge" id="star-2"><b>0</b>점</span>
										</span>
										</li>
										<li class="list-group-item">업무와 삶의 균형 
										<span class="star-input" id="star-C" style="float: right;">
										<span class="input"> 
											<input type="radio" name="star-input3" id="p11" value="1"> 
											<label for="p11">1</label> 
											<input type="radio" name="star-input3" id="p12" value="2"> 
											<label for="p12">2</label> 
											<input type="radio" name="star-input3" id="p13" value="3"> 
											<label for="p13">3</label> 
											<input type="radio" name="star-input3" id="p14" value="4"> 
											<label for="p14">4</label> 
											<input type="radio" name="star-input3" id="p15" value="5"> 
											<label for="p15">5</label>
										</span>  &nbsp;
											<span class="badge" id="star-3"><b>0</b>점</span>
										</span>
										</li>
										<li class="list-group-item">사내문화 
										<span class="star-input" id="star-D" style="float: right;">
										<span class="input"> 
											<input type="radio" name="star-input4" id="p16" value="1"> 
											<label for="p16">1</label> 
											<input type="radio" name="star-input4" id="p17" value="2"> 
											<label for="p17">2</label> 
											<input type="radio" name="star-input4" id="p18" value="3"> 
											<label for="p18">3</label> 
											<input type="radio" name="star-input4" id="p19" value="4"> 
											<label for="p19">4</label> 
											<input type="radio" name="star-input4" id="p20" value="5"> 
											<label for="p20">5</label>
										</span>  &nbsp;
											<span class="badge" id="star-4"><b>0</b>점</span>
										</span>
										</li>
										<li class="list-group-item">경영진
										<span class="star-input" id="star-E" style="float: right;">
										<span class="input"> 
											<input type="radio" name="star-input5" id="p21" value="1"> 
											<label for="p21">1</label> 
											<input type="radio" name="star-input5" id="p22" value="2"> 
											<label for="p22">2</label> 
											<input type="radio" name="star-input5" id="p23" value="3"> 
											<label for="p23">3</label> 
											<input type="radio" name="star-input5" id="p24" value="4"> 
											<label for="p24">4</label> 
											<input type="radio" name="star-input5" id="p25" value="5"> 
											<label for="p25">5</label>
										</span>  &nbsp;
											<span class="badge" id="star-5"><b>0</b>점</span>
										</span>
										</li>
									</ul>
								</div>				        		
				        	</td>
				        </tr>
				        <tr>
				        	<td></td>
				        	<td align="center">
				        	  <!-- 목록에서 글 번호를 받아 와서 수정 또는 삭제 화면으로 넘긴다. -->
						      <input type="hidden" id="frmSeq" name="frmSeq" value=""/>
						      <!-- 삭제했는지 체크하는 플래그 -->
						      <input type="hidden" id="frmDel" name="frmDel" />
				              <input type="hidden" name="writer_id" value="${review.user_id }">
						      <div class="row">
						        <div id="upDel" class="mybutton"></div> 
						      </div>
							  <button><a href="control.do">목록으로</a></button>
							</td>
				        </tr>	  	 				
	  	 			</table>
	  	 		</div>
	  	 	</form>
	  	 </div>
	  	 
	  	<div id="reply" align="center">
		<!-- 댓글 입력폼 -->
		<div id="replyAdd">
			<form name="addForm">
				<input type="hidden" name="no" value="${review.review_no }"><br> 
			댓글: <textarea rows="2" cols="50" name="content"></textarea><br>
				<button onclick="addReply()" type="button">등록</button>
			</form>
		</div>
		
		<!-- 댓글 수정폼 -->
		<div id="replyUpdate" style="display: none">
			<form name="updateForm">
				<input type="hidden" name="no" value="${review.review_no }">  
				댓글:<textarea rows="2" cols="50" name="content"></textarea>
				<button onclick="updateReply()">등록</button>
				<button onclick="hideUpdateForm()">취소</button>
			</form>
		</div>
		
		<!-- 댓글 목록 출력(DB에 저장된 값을 화면에 출력) -->
		<div id="replyList"></div>
	  	</div> 
	  </div><!-- well -->
	</div><!-- container -->
	
	
	
	
<%-- 	<!--***********************************************************
	*                                                             *
	*                           body - 원본                              *
	*                                                             *
	************************************************************-->	
    <div style="padding : 30px;">
	<form id="postForm" name="postForm" method="POST">
		 <!-- 목록에서 글 번호를 받아 와서 수정 또는 삭제 화면으로 넘긴다. -->
      <input type="hidden" id="frmSeq" name="frmSeq" value=""/>
      <!-- 삭제했는지 체크하는 플래그 -->
      <input type="hidden" id="frmDel" name="frmDel" />
      
      <input type="hidden" name="writer_id" value="${review.user_id }">
       <div class="row">
        <div id="upDel" class="mybutton"></div> 
       </div>
	        <button><a href="control.do">목록으로</a></button>
      <table id="tdetail" border="1px dashed #EEEEEE">
        <thead>
          <tr>
            <th>글번호</th>
            <!-- 컨트롤러에서 받아온 ArrayList detailAll에서 정보를 뽑는다. -->
            <td id="no">${review.review_no }</td>
            <th>제 목</th>
            <td colspan="5">${review.review_title }</td>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th>글쓴이</th>
            <td>${review.review_writer }</td>
            <th>작성일시</th>
            <td>${review.review_wdate }</td>
            <th>조회</th>
            <td>${review.review_count }</td>
          </tr>
          <tr>
            <!-- 본문 -->
            <th>기업 장점</th>
            <td style="padding:1em;text-align:left;">${review.review_strong }</td>
          </tr>
          <tr>
          	<th>기업 단점</th>
            <td style="padding:1em;text-align:left;">${review.review_weak }</td>
          </tr>
          <tr>
          	<th>경영진에게 바라는점 </th>
            <td style="padding:1em;text-align:left;">${review.review_toCEO }</td>
          </tr>
        </tbody>
        <tfoot>
        	<th>별점</th>
				<td colspan="5">
					<div class="form-group">
						<div id="wrapper ">
							<label>승진기회 및 가능</label>	${review.review_possibility }점
							<p class="clasificacion">
								<input id="radio1" type="radio" name="possibility" readonly="readonly" value="5">
								<!--
				      -->
								<label for="radio1">&#9733;</label>
								<!--
				      -->
								<input id="radio2" type="radio" name="possibility" readonly="readonly" value="4">
								<!--
				      -->
								<label for="radio2">&#9733;</label>
								<!--
				      -->
								<input id="radio3" type="radio" name="possibility" readonly="readonly" value="3">
								<!--
				      -->
								<label for="radio3">&#9733;</label>
								<!--
				      -->
								<input id="radio4" type="radio" name="possibility" readonly="readonly" value="2">
								<!--
				      -->
								<label for="radio4">&#9733;</label>
								<!--
				      -->
								<input id="radio5" type="radio" name="possibility" readonly="readonly" value="1">
								<!--
				      -->
								<label for="radio5">&#9733;</label>
							</p>
						</div>
						<div id="wrapper ">
							<label>복지와 급여</label>	${review.review_welSal }점
							<p class="clasificacion">
								<input id="radio6" type="radio" name="welSal" readonly="readonly" value="5">
								<!--
				      -->
								<label for="radio6">&#9733;</label>
								<!--
				      -->
								<input id="radio7" type="radio" name="welSal" readonly="readonly" value="4">
								<!--
				      -->
								<label for="radio7">&#9733;</label>
								<!--
				      -->
								<input id="radio8" type="radio" name="welSal" readonly="readonly" value="3">
								<!--
				      -->
								<label for="radio8">&#9733;</label>
								<!--
				      -->
								<input id="radio9" type="radio" name="welSal" readonly="readonly" value="2">
								<!--
				      -->
								<label for="radio9">&#9733;</label>
								<!--
				      -->
								<input id="radio10" type="radio" name="welSal" readonly="readonly" value="1">
								<!--
				      -->
								<label for="radio10">&#9733;</label>
							</p>

						</div>
						<div id="wrapper ">
							<label>업무와 삶의 균형</label>	${review.review_balance }점
							<p class="clasificacion">
								<input id="radio11" type="radio" name="balance" readonly="readonly" value="5">
								<!--
				      -->
								<label for="radio11">&#9733;</label>
								<!--
				      -->
								<input id="radio12" type="radio" name="balance" readonly="readonly" value="4">
								<!--
				      -->
								<label for="radio12">&#9733;</label>
								<!--
				      -->
								<input id="radio13" type="radio" name="balance" readonly="readonly" value="3">
								<!--
				      -->
								<label for="radio13">&#9733;</label>
								<!--
				      -->
								<input id="radio14" type="radio" name="balance" readonly="readonly" value="2">
								<!--
				      -->
								<label for="radio14">&#9733;</label>
								<!--
				      -->
								<input id="radio15" type="radio" name="balance" readonly="readonly" value="1">
								<!--
				      -->
								<label for="radio15">&#9733;</label>
							</p>

						</div>
						<div id="wrapper ">
							<label>사내문화</label>	${review.review_culture }점
							<p class="clasificacion">
								<input id="radio16" type="radio" name="culture" readonly="readonly" value="5">
								<!--
				      -->
								<label for="radio16">&#9733;</label>
								<!--
				      -->
								<input id="radio17" type="radio" name="culture" readonly="readonly" value="4">
								<!--
				      -->
								<label for="radio17">&#9733;</label>
								<!--
				      -->
								<input id="radio18" type="radio" name="culture" readonly="readonly" value="3">
								<!--
				      -->
								<label for="radio18">&#9733;</label>
								<!--
				      -->
								<input id="radio19" type="radio" name="culture" readonly="readonly" value="2">
								<!--
				      -->
								<label for="radio19">&#9733;</label>
								<!--
				      -->
								<input id="radio20" type="radio" name="culture" readonly="readonly" value="1">
								<!--
				      -->
								<label for="radio20">&#9733;</label>
							</p>

						</div>
						<div id="wrapper ">
							<label>경영진</label>	${review.review_manager }점
							<p class="clasificacion">
								<input id="radio21" type="radio" name="manager" readonly="readonly" value="5">
								<!--
				      -->
								<label for="radio21">&#9733;</label>
								<!--
				      -->
								<input id="radio22" type="radio" name="manager" readonly="readonly" value="4">
								<!--
				      -->
								<label for="radio22">&#9733;</label>
								<!--
				      -->
								<input id="radio23" type="radio" name="manager" readonly="readonly" value="3">
								<!--
				      -->
								<label for="radio23">&#9733;</label>
								<!--
				      -->
								<input id="radio24" type="radio" name="manager" readonly="readonly" value="2">
								<!--
				      -->
								<label for="radio24">&#9733;</label>
								<!--
				      -->
								<input id="radio25" type="radio" name="manager" readonly="readonly" value="1">
								<!--
				      -->
								<label for="radio25">&#9733;</label>
							</p>
						</div>
					</div>
				</td>
        	
        </tfoot>
        </table>
   
	</form>
	</div>
	
	<!-- 댓글 입력폼 -->
	<div id="replyAdd">
		<form name="addForm">
			<input type="hidden" name="no" value="${review.review_no }"><br> 
		댓글: <textarea rows="2" cols="20" name="content"></textarea>
			<button onclick="addReply()" type="button">등록</button>
		</form>
	</div>
	
	<!-- 댓글 수정폼 -->
	<div id="replyUpdate" style="display: none">
		<form name="updateForm">
			<input type="hidden" name="no" value="${review.review_no }">  
			댓글:<textarea rows="2" cols="20" name="content"></textarea>
			<button onclick="updateReply()">등록</button>
			<button onclick="hideUpdateForm()">취소</button>
		</form>
	</div>
	
	<!-- 댓글 목록 출력(DB에 저장된 값을 화면에 출력) -->
	<div id="replyList"></div> --%>
	
	
	<!--***********************************************************
	*                                                             *
	*                           footer                            *
	*                                                             *
	************************************************************-->	
	<%@include file="/view/main/footer.jsp"%>
  </body>
</html>