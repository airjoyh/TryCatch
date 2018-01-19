<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
<script type="text/javascript" src="${initParam.rootPath }/js/jquery-3.js"></script>
<script type="text/javascript" src="${initParam.rootPath }/js/ajax.js"></script>
<script type="text/javascript" src="${initParam.rootPath }/js/main.js"></script>

<title>TryCatch_companyInfoDetail</title>
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

<%-- <!-- Custom styles -->
<link href="${initParam.rootPath }/css/com_companyInfo.css" rel="stylesheet"> --%>

<!-- Custom styles -->
<link href="../../css/com_companyInfo.css" rel="stylesheet">
</head>
<body>
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
	<hr><hr><hr><hr>
	<section>
	  <div class="py-5">
	    <div class="container">
	      <div class="row">
	        <div class="col-md-9">
	        	<div align="left">
			        <select id="job" name="company_star">
			          <option value="">====선택====</option>
			            <option value="review_possibility">승진기회 및 기능</option>
			            <option value="review_welSal">복지와 급여</option>
			            <option value="review_balance">업무와 삶의 균형</option>
			            <option value="review_culture"> 사내문화</option>
			            <option value="review_manager">경영진</option>
			        </select> 
	        	</div>
	        </div>
	        <div class="col-md-3">        
	        </div>
	      </div>
	      <div class="row">
	        <div class="col-md-9">
	          <table>
				<tbody>
					<tr>
						<th>순위</th>
						<th>이미지</th>
						<th colspan="4">회사정보</th>
						<th>평점순위</th>
					</tr>
					<tr>
						<td>1</td>
						<td><img alt="회사1" src="../../image/facebook.jpg"></td>
						<td colspan="4">페이스북코리아(유) 기업리뷰 | 연봉정보 | 면접정보</td>
						<td>
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
						</td>
					</tr>
					<tr>
						<td>2</td>
						<td><img alt="회사2" src="../../image/kepico.jpg"></td>
						<td colspan="4">현대케피코 기업리뷰 | 연봉정보 | 면접정보</td>
						<td>
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
						</td>
					</tr>
					<tr>
						<td>3</td>
						<td><img alt="회사3" src="../../image/ksd.jpg"></td>
						<td colspan="4">한국예탁결제원 기업리뷰 | 연봉정보 | 면접정보</td>
						<td>
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
						</td>
					</tr>
				</tbody>
	          </table>
			  <div align="center">
				 <ul class="pagination">
				   <li>
					<a href="#" aria-label="Previous">
					<span aria-hidden="true">&laquo;</span>
					</a>
					</li>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li>
					<a href="#" aria-label="Next">
					<span aria-hidden="true">&raquo;</span>
					</a>
				   </li>
				 </ul>
			  </div>								
	        </div>
	        <div class="col-md-3">
	          <div>
	        	<img alt="첫번째 회사" src="../../image/ksd.jpg">
	          </div> 	
	        </div>
	      </div>
	    </div>
      </div>
	</section>
<!-- star js -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="../../js/com_companyInfoDetail.js"></script>
</body>
</html>