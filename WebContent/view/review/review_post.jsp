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
  <style type="text/css">
	*{font-family:"Courier New", Courier, monospace}

	form p,
	form input[type="submit"] {
	  text-align: center;
	  font-size: 20px;
	}
	
	#wrapper form input[type="submit"] {
	  border: 1px solid #d9d9d9;
	  background-color: #efefef;
	}
	
	input[type="radio"] {
	  display: none;
	}
	
	label {
	  color: grey;
	}
	
	.clasificacion {
	  direction: rtl;
	  unicode-bidi: bidi-override;
	}
	
	label:hover,
	label:hover ~ label {
	  color: orange;
	}
	
	input[type="radio"]:checked ~ label {
	  color: orange;
	}
	
	th{
		
		background-color: orange;
	}
  </style>
  <script type="text/javascript">
  	$(function(){
  		//라디오버튼 점수체크해준다.
  		$('input:radio[name=possibility]:radio[value=${review.review_possibility }]').prop('checked',true);
  		$('input:radio[name=welSal]:radio[value=${review.review_welSal }]').prop('checked',true);
  		$('input:radio[name=balance]:radio[value=${review.review_balance }]').prop('checked',true);
  		$('input:radio[name=culture]:radio[value=${review.review_culture }]').prop('checked',true);
  		$('input:radio[name=manager]:radio[value=${review.review_manager }]').prop('checked',true);
  		$("input").prop('disabled', true);//라디오버튼 비활성화시켜준다.
  	});
  
  
  /* 삭제를 실행했는지 아닌지 체크해서 삭제 실행 완료라면 목록 화면으로 간다. */
  /* $(document).ready(function(){
	  if( '${frmDel}'=="true" ){
		  alert("삭제되었습니다.");
		  $('#frmDetail').attr({action : "/tcb/board/boardList.jsp"}).submit();
	  }
  }); */

  /* 게시판으로 간다. */
  /* function fnGoBoardList(){
	  $('#frmDetail').attr({action : "/tcb/board/boardList.jsp"}).submit();
  } */
  
  /* 수정 화면으로 간다. */
  /* function fnGoBoardModify(){
	  $('#frmDetail').attr({action : "/tcb/board/boardModify.jsp"}).submit();
  } */
  
  /* 삭제를 실행한다. */
  /* function fnDelete(){
	  $('#frmDetail').attr({action : "/board/boardDelete.do"}).submit();
  } */
  

  </script>
    <title>글 상세정보</title>
  </head>
  <body>
    <h2 style="padding: 0.1em 1em;">글 상세 정보</h2>
    <div style="padding : 30px;">
	<form id="postForm" name="postForm" method="POST">
		 <!-- 목록에서 글 번호를 받아 와서 수정 또는 삭제 화면으로 넘긴다. -->
      <input type="hidden" id="frmSeq" name="frmSeq" value=""/>
      <!-- 삭제했는지 체크하는 플래그 -->
      <input type="hidden" id="frmDel" name="frmDel" />
      
      <input type="hidden" value="${review.user_id }">
       <div class="row">
        <div id="upDel" class="mybutton">
	        <input type="button" id="delete" name="delete" onclick="fnDelete()" value="삭제"/>
	        <input type="button" id="modify" name="modify" onclick="fnGoBoardModify()" value="수정"/>
       </div> 
       </div> 
	        <button><a href="control.do">목록으로</a></button>
      <table id="tdetail" border="1px dashed #EEEEEE">
        <thead>
          <tr>
            <th>글번호</th>
            <!-- 컨트롤러에서 받아온 ArrayList detailAll에서 정보를 뽑는다. -->
            <td>${review.review_no }</td>
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

       
       <table>
          <tr>
          	<!-- 아이디, 작성날짜 -->
          	<td width="150">
          		<div>
          			이성원
          			${comment.comment_id }<br>
          			<font size="2" color="gray">${comment.comment_date }</font>
          		</div>
          	</td>	
          	<!-- 본문내용 -->
          	<td width="550">
          		<div class="text_wrapper">
          			<textarea rows="2" cols="50"></textarea>
          			${comment.commet_content }
          		</div>
          	</td>
          	<!-- 버튼 -->
          	<td width="100">
          		<div id="btn" style="text-align: center;">
          			<a href="#">[답변]</a><br>
          			<a href="#">[수정]</a><br>
          			<a href="#">[삭제]</a>
          		</div>
          	</td>
          </tr>
       </table>     
	</form>
	</div>
  </body>
</html>