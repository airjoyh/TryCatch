$(function(){
/*  		//라디오버튼 점수체크해준다.
  		$('input:radio[name=possibility]:radio[value=${review.review_possibility }]').prop('checked',true);
  		$('input:radio[name=welSal]:radio[value=${review.review_welSal }]').prop('checked',true);
  		$('input:radio[name=balance]:radio[value=${review.review_balance }]').prop('checked',true);
  		$('input:radio[name=culture]:radio[value=${review.review_culture }]').prop('checked',true);
  		$('input:radio[name=manager]:radio[value=${review.review_manager }]').prop('checked',true);
  		$("input").prop('disabled', true);//라디오버튼 비활성화시켜준다.
  		
  		writerCheck();
	  	loadReplyList();
	  	//replyWriterCheck(no);
*/	  	
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