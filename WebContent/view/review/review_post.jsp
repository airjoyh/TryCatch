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
	
	.reply {
		border: 1px solid skyblue
	}
  </style>
<script type="text/javascript" src="${initParam.rootPath }/js/ajax2.js"></script>
<script type="text/javascript">
  	$(function(){
  		//라디오버튼 점수체크해준다.
  		$('input:radio[name=possibility]:radio[value=${review.review_possibility }]').prop('checked',true);
  		$('input:radio[name=welSal]:radio[value=${review.review_welSal }]').prop('checked',true);
  		$('input:radio[name=balance]:radio[value=${review.review_balance }]').prop('checked',true);
  		$('input:radio[name=culture]:radio[value=${review.review_culture }]').prop('checked',true);
  		$('input:radio[name=manager]:radio[value=${review.review_manager }]').prop('checked',true);
  		$("input").prop('disabled', true);//라디오버튼 비활성화시켜준다.
  		
  		writerCheck();
	  	loadReplyList();
	  	//replyWriterCheck(no);
  	});
  	
  	//게시글 작성자 아이디와 로그인 아이디 일치 여부 체크
  	function writerCheck(){
  		var login_id='${login_id}';
  		var writer_id = document.postForm.writer_id.value;
  		
  		var no = document.getElementById('no').innerHTML;
  		
  		alert("로그인한 아이디: "+login_id+"/작성자 아이디: "+writer_id+"/후기번호:"+no);
  		
  		if(login_id==writer_id){//일치하면 수정 삭제 버튼 나오게.
  			var upDel = document.getElementById('upDel');
			upDel.innerHTML = '<button><a id="update" href="updel.do?action=upForm&no='+no+'">수정</a></button>'+
						      '<button id="delete"><a href="javascript:deleteReview()">삭제</a></button>';
  		}
  	}
  	
  	function deleteReview(){
  		var no = document.getElementById('no').innerHTML;
  		if(confirm('정말로 삭제하시겠습니까?')){
  			location.href='updel.do?action=delete&no='+no;
  		}
  	}
  
  	function addReply() {//등록 요청
  		//alert("들어오냐?")
  		var loginState = '${loginState }';
  		alert("로그인 상태>>>"+loginState);
  		if(loginState!='login'){
				alert('로그인하신 후에 이용 가능합니다.');
		}else{
	  		var no = document.addForm.no.value;
	  		//alert("번호:"+no);
			var content = document.addForm.content.value;
	
			var params = 'no=' + no + '&content=' + content;//'no=732&content=첫댓글'
			alert(params);
			new ajax.xhr.Request('/tc/review/reply.do?action=insert', params, addResult,'POST');
		}

	}

	function addResult(xhr) {
		if (xhr.readyState == 4) {
			if (xhr.status == 200) {
				alert(xhr.responseText);
				
				//리스트 갱신
				loadReplyList();

				document.addForm.content.value = '';
				document.addForm.content.focus();
			} else {
				alert('서버에러: ' + xhr.status);
			}
		}
	}
	
	function loadReplyList() {//댓글 목록 요청
		//alert(new Date());
		//alert(encodeURIComponent(new Date()));
		var no = document.addForm.no.value;
		//alert(no);
		new ajax.xhr.Request('/tc/review/reply.do?action=list&n='+encodeURIComponent(new Date()), 'no='+no, loadReplyResult,'POST');

	}

	function loadReplyResult(xhr) {//콜백: 목록 출력
		if (xhr.readyState == 4 && xhr.status == 200) {

			var list = eval(xhr.responseText);//list:Array객체

			var replyList = document.getElementById('replyList');//리스트가 출력될 부모 div얻기

			/* //메모리로부터 이전에 출력된 목록 삭제!!
			while(replyList.hasChildNodes()){//자식이 있다면 true리턴
				replyList.removeChild(replyList.lastChild);//뒤에서부터 지운다.				
			} */

			replyList.innerHTML = '';

			for (var i = 0; i < list.length; i++) {//리스트 출력
				replyList.appendChild(makeReplyView(list[i]));
			}
		}

	}
	
	function makeReplyView(reply) {//list에 출력될 새로운 div엘리먼트 생성
		//reply: {no:1, name:'홍길동',content:'Ajax재밌어요!!'}
		var replyDiv = document.createElement('div');//<div></div>
		replyDiv.setAttribute("id", "r" + reply.no); //<div id="r1"></div>
		replyDiv.className = 'reply'; //<div id="r1" class="reply"></div>

		replyDiv.reply = reply; //새로 생성된 <div>엘리먼트에 reply JSON객체 저장!
		
		var htmlTxt = '';
		
		var login_id='${login_id}';
		
		if(login_id == reply.id){//로그인 아이디와 댓글단 아이디가 일치하면 수정삭제 버튼 보이게하기.
			htmlTxt = '<strong id="reply_writer_id'+reply.reply_no+'">'
			+ reply.id
			+ '</strong>'
			+'	'
			+reply.wdate
			+'<br>'
			+ reply.content
			+'<div id="replyUpDel'+reply.reply_no+'" style="display: ">'
			+ '<br><input type="button" value="수정" onclick="viewUpdateForm('
			+ reply.reply_no + ')"> '
			+ '<input type="button" value="삭제" onclick="deleteReply('
			+ reply.reply_no + ')">'
			+'</div>';
		}else{//로그인 아이디와 댓글단 아이디가 일치하면 수정삭제 버튼 보이지 않게 학.
			htmlTxt = '<strong id="reply_writer_id'+reply.reply_no+'">'
					+ reply.id
					+ '</strong>'
					+'	'
					+reply.wdate
					+'<br>'
					+ reply.content
					+'<div id="replyUpDel'+reply.reply_no+'" style="display: none">'
					+ '<br><input type="button" value="수정" onclick="viewUpdateForm('
					+ reply.reply_no + ')"> '
					+ '<input type="button" value="삭제" onclick="deleteReply('
					+ reply.reply_no + ')">'
					+'</div>';
			
		}

		replyDiv.innerHTML = htmlTxt;
		//<div><strong>길동</strong><br>첫댓글</div>
		return replyDiv;
	}

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
			<button onclick="addReply()">등록</button>
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
	<div id="replyList"></div>
  </body>
</html>