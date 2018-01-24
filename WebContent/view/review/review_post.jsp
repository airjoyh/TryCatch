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
<%-- <script type="text/javascript" src="${initParam.rootPath }/js/review_post.js"></script> --%>
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
	  	
		
			
			/***************************************  
			*                                      *
			*               별점주기js                * 
			*                                      *                           
			****************************************/
			//승진기회
			var starRating1 = function() {
				var $star1 = $("#star-A"), $result1 = $star1.find("#star-1>b");
				$(document).on("focusin", "#star-A>.input", function() {
					$(this).addClass("focus");
				}).on("focusout", "#star-A>.input", function() {
					var $this1 = $(this);
					setTimeout(function() {
						if ($this1.find(":focus").length === 0) {
							$this1.removeClass("focus");
						}
					}, 100);
				}).on("change", "#star-A :radio", function() {
					$result1.text($(this).next().text());
				}).on("mouseover", "#star-A label", function() {
					$result1.text($(this).text());
				}).on("mouseleave", "#star-A>.input", function() {
					var $checked1 = $star1.find(":checked");
					if ($checked1.length === 0) {
						$result1.text("0");
					} else {
						$result1.text($checked1.next().text());
					}
				});
				
				
			};
			starRating1();
			
			//보수
			var starRating2 = function() {

				var $star2 = $("#star-B"), $result2 = $star2.find("#star-2>b");
				$(document).on("focusin", "#star-B>.input", function() {
					$(this).addClass("focus");
				}).on("focusout", "#star-B>.input", function() {
					var $this2 = $(this);
					setTimeout(function() {
						if ($this2.find(":focus").length === 0) {
							$this2.removeClass("focus");
						}
					}, 200);
				}).on("change", "#star-B :radio", function() {
					$result2.text($(this).next().text());
				}).on("mouseover", "#star-B label", function() {
					$result2.text($(this).text());
				}).on("mouseleave", "#star-B>.input", function() {
					var $checked2 = $star2.find(":checked");
					if ($checked2.length === 0) {
						$result2.text("0");
					} else {
						$result2.text($checked2.next().text());
					}
				});
			};
			starRating2();
			
			//업무와 삶의 균형
			var starRating3 = function() {
				
				var $star3 = $("#star-C"), $result3 = $star3.find("#star-3>b");
				$(document).on("focusin", "#star-C>.input", function() {
					$(this).addClass("focus");
				}).on("focusout", "#star-C>.input", function() {
					var $this3 = $(this);
					setTimeout(function() {
						if ($this3.find(":focus").length === 0) {
							$this3.removeClass("focus");
						}
					}, 300);
				}).on("change", "#star-C :radio", function() {
					$result3.text($(this).next().text());
				}).on("mouseover", "#star-C label", function() {
					$result3.text($(this).text());
				}).on("mouseleave", "#star-C>.input", function() {
					var $checked3 = $star3.find(":checked");
					if ($checked3.length === 0) {
						$result3.text("0");
					} else {
						$result3.text($checked3.next().text());
					}
				});
			};
			starRating3();
			
			//사내문화
			var starRating4 = function() {
				
				var $star4 = $("#star-D"), $result4 = $star4.find("#star-4>b");
				$(document).on("focusin", "#star-D>.input", function() {
					$(this).addClass("focus");
				}).on("focusout", "#star-D>.input", function() {
					var $this4 = $(this);
					setTimeout(function() {
						if ($this4.find(":focus").length === 0) {
							$this4.removeClass("focus");
						}
					}, 400);
				}).on("change", "#star-D :radio", function() {
					$result4.text($(this).next().text());
				}).on("mouseover", "#star-D label", function() {
					$result4.text($(this).text());
				}).on("mouseleave", "#star-D>.input", function() {
					var $checked4 = $star4.find(":checked");
					if ($checked4.length === 0) {
						$result4.text("0");
					} else {
						$result4.text($checked4.next().text());
					}
				});
			};
			starRating4();
			
			//경영진
			var starRating5 = function() {
				
				var $star5 = $("#star-E"), $result5 = $star5.find("#star-5>b");
				$(document).on("focusin", "#star-E>.input", function() {
					$(this).addClass("focus");
				}).on("focusout", "#star-E>.input", function() {
					var $this5 = $(this);
					setTimeout(function() {
						if ($this5.find(":focus").length === 0) {
							$this5.removeClass("focus");
						}
					}, 500);
				}).on("change", "#star-E :radio", function() {
					$result5.text($(this).next().text());
				}).on("mouseover", "#star-E label", function() {
					$result5.text($(this).text());
				}).on("mouseleave", "#star-E>.input", function() {
					var $checked5 = $star5.find(":checked");
					if ($checked5.length === 0) {
						$result5.text("0");
					} else {
						$result5.text($checked5.next().text());
					}
				});
			};
			starRating5();
		  	
		  	
		  	
	  	});


	  	//게시글 작성자 아이디와 로그인 아이디 일치 여부 체크
	  	function writerCheck(){
	  		var login_id='${login_id}';
	  		alert(login_id)
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
			replyDiv.setAttribute("id", "r" + reply.reply_no); //<div id="r1"></div>
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
						+ '<input type="button" value="삭제" onclick="deleteReply('
						+ reply.reply_no + ')">'
						+'</div>';
				
			}

			replyDiv.innerHTML = htmlTxt;
			//<div><strong>길동</strong><br>첫댓글</div>
			return replyDiv;
		}
		
		function deleteReply(no){//삭제 요청
			if (confirm('정말 삭제?')) {
				//alert(no);
				new ajax.xhr.Request('reply.do?action=delete', 'no=' + no,deleteResult, 'POST');
			}
		}
		
		function deleteResult(xhr) {//삭제 콜백
			if (xhr.readyState == 4 && xhr.status == 200) {
				//alert(xhr.responseText);//수정결과 출력
				loadReplyList();
			}
		}
</script>

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
<!-- 	  	 			<table id="tdetail" border="3" bordercolor="lightgray" style="width: 600px; height: 950px"> -->
	  	 			<table id="tdetail" border="3" bordercolor="lightgray" style="width:100% height: 90%">
	  	 				<tr style="height: 50px">
	  	 					<td style="text-align: center; font-weight: bold;">글번호</td>
	  	 					<!-- 컨트롤러에서 받아온 ArrayList detailAll에서 정보를 뽑는다. -->
	  	 					<td id="no" style="text-align: center;">${review.review_no }</td>
	  	 				</tr>
	  	 				<tr style="height: 50px">
	  	 					<td style="text-align: center; font-weight: bold;">제목</td>
	  	 					<td id="title" style="text-align: center;">${review.review_title }</td>
	  	 				</tr>
				        <tr style="height: 50px">
				            <td style="text-align: center; font-weight: bold;">글쓴이</td>
				            <td style="text-align: center;" >${review.review_writer }</td>
				        </tr>
				        <tr style="height: 50px">
				            <td style="text-align: center; font-weight: bold; ">조회</td>
				            <td style="text-align: center;">${review.review_count }</td>
				        </tr>
				        <tr style="height: 50px">
				            <td style="text-align: center; font-weight: bold;">작성일시</td>
				            <td style="text-align: center;">${review.review_wdate }</td>
				        </tr>
				        <tr style="height: 150px">
				        	<td style="text-align: center; font-weight: bold;">기업 장점</td>
            				<td style="text-align: center;">${review.review_strong }</td>		        	
				        </tr>	  	 				
				        <tr style="height: 150px">
				        	<td style="text-align: center; font-weight: bold;">기업 단점</td>
            				<td style="text-align: center;">${review.review_weak }</td>		        	
				        </tr>	  	 				
				        <tr style="height: 150px">
				        	<td style="text-align: center; font-weight: bold;">경영진에 바라는점</td>
            				<td style="text-align: center;">${review.review_toCEO }</td>		        	
				        </tr>
				        <tr>
				        	<td style="text-align: center; font-weight: bold;">별점</td>
				        	<td>
				        		<br>
								<div>
									<ul class="list-group">
										<li class="list-group-item">승진기회 및 가능성
										<span class="star-input" id="star-A" style="float: right;"> 
										<span class="input"> 
											<input type="radio" name="possibility" id="p1" value="1"> 
											<label for="p1">1</label> 
											<input type="radio" name="possibility" id="p2" value="2"> 
											<label for="p2">2</label> 
											<input type="radio" name="possibility" id="p3" value="3"> 
											<label for="p3">3</label> 
											<input type="radio" name="possibility" id="p4" value="4"> 
											<label for="p4">4</label> 
											<input type="radio" name="possibility" id="p5" value="5"> 
											<label for="p5">5</label>
										</span>  &nbsp;
											<span class="badge" id="star-1"><b>${review.review_possibility }</b>점</span>
										</span>
										</li>
										<li class="list-group-item">복지 및 급여
										<span class="star-input" id="star-B" style="float: right;"> 
										<span class="input"> 
											<input type="radio" name="welSal" id="p6" value="1"> 
											<label for="p6">1</label> 
											<input type="radio" name="welSal" id="p7" value="2"> 
											<label for="p7">2</label> 
											<input type="radio" name="welSal" id="p8" value="3"> 
											<label for="p8">3</label> 
											<input type="radio" name="welSal" id="p9" value="4"> 
											<label for="p9">4</label> 
											<input type="radio" name="welSal" id="p10" value="5"> 
											<label for="p10">5</label>
										</span>  &nbsp;
											<span class="badge" id="star-2"><b>${review.review_welSal }</b>점</span>
										</span>
										</li>
										<li class="list-group-item">업무와 삶의 균형 
										<span class="star-input" id="star-C" style="float: right;">
										<span class="input"> 
											<input type="radio" name="balance" id="p11" value="1"> 
											<label for="p11">1</label> 
											<input type="radio" name="balance" id="p12" value="2"> 
											<label for="p12">2</label> 
											<input type="radio" name="balance" id="p13" value="3"> 
											<label for="p13">3</label> 
											<input type="radio" name="balance" id="p14" value="4"> 
											<label for="p14">4</label> 
											<input type="radio" name=balance id="p15" value="5"> 
											<label for="p15">5</label>
										</span>  &nbsp;
											<span class="badge" id="star-3"><b>${review.review_balance }</b>점</span>
										</span>
										</li>
										<li class="list-group-item">사내문화 
										<span class="star-input" id="star-D" style="float: right;">
										<span class="input"> 
											<input type="radio" name="culture" id="p16" value="1"> 
											<label for="p16">1</label> 
											<input type="radio" name="culture" id="p17" value="2"> 
											<label for="p17">2</label> 
											<input type="radio" name="culture" id="p18" value="3"> 
											<label for="p18">3</label> 
											<input type="radio" name="culture" id="p19" value="4"> 
											<label for="p19">4</label> 
											<input type="radio" name="culture" id="p20" value="5"> 
											<label for="p20">5</label>
										</span>  &nbsp;
											<span class="badge" id="star-4"><b>${review.review_culture }</b>점</span>
										</span>
										</li>
										<li class="list-group-item">경영진
										<span class="star-input" id="star-E" style="float: right;">
										<span class="input"> 
											<input type="radio" name="manager" id="p21" value="1"> 
											<label for="p21">1</label> 
											<input type="radio" name="manager" id="p22" value="2"> 
											<label for="p22">2</label> 
											<input type="radio" name="manager" id="p23" value="3"> 
											<label for="p23">3</label> 
											<input type="radio" name="manager" id="p24" value="4"> 
											<label for="p24">4</label> 
											<input type="radio" name="manager" id="p25" value="5"> 
											<label for="p25">5</label>
										</span>  &nbsp;
											<span class="badge" id="star-5"><b>${review.review_manager }</b>점</span>
										</span>
										</li>
									</ul>
								</div>				        		
				        	</td>
				        </tr>
				        <tr style="height: 50px">
				        	<td></td>
				        	<td align="center">
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
	
	
	<!--***********************************************************
	*                                                             *
	*                           footer                            *
	*                                                             *
	************************************************************-->	
	<%@include file="/view/main/footer.jsp"%>
  </body>
</html>