$(function(){//화면을 띄울 때(F5)마다 동작하는 function
		var now = new Date();
		sendRequest('logincheck.do?n='+now.getMinutes()+now.getSeconds(), null , initForm, 'GET');
		
	});
	
	function initForm(){
		if (xhr.readyState == 4 && xhr.status == 200) {//요청한 데이터(페이지를 전부 받았을 때)
			
		//showLoginout('${loginState }');
		 showLoginout(xhr.responseText);
		$('#ujoin').click(function(){//회원가입을 눌렀을때 초기화되서 보여야한다.
			$('form[name="joinForm"] input').val('');
			$('div#idCheck').html('');
			$('form[name="joinForm"] select').val('원하는 기업조건을 선택하세요');
			
		});
		
		$('#login').click(function(){//로그인을 눌렀을 때
			$('form[name="loginForm"] input').val('');
		});
	  }
	}//initForm

	
	function logout(){
		location.href="logout.do";
		showLoginout('');
	}
	
	function showLoginout(msg) {//msg는 ${loginState }--> LoginAction에서 로그인하면 세션을 'login'이라는 메시지를 셋어트리뷰트한다,
		//세션 로그인 중에는 로그아웃 <a>태그가 보이게하고 아닐때는 로그인 태그가 보이게 하기.
		console.log("msg>>>"+msg)
		var loginout = document.getElementById('loginout');
		//var msg ='${loginState }';
		
		//var mypage = document.getElementById('mypage');

		//세션이 연결되어있을 때 로그인
		alert("로그인 상태: " + msg);
		if (msg == "login") {//로그인 상태일때!
			//loginout.innerHTML = '<a href="logout.do">로그아웃</a>';
			loginout.innerHTML = '<a href="javascript:logout()"><span class="glyphicon glyphicon-log-in">로그아웃</span></a>';
			//flag=true;
		} else {//로그인 상태가 아닐때!
			//loginout.innerHTML = '<a data-toggle="modal" data-target="#loginModal">로그인</a>';
			//flag=false;
		}
		//아닐 때 로그아웃
	}

	

	function requestLoginCheck() {//로그인을 했을때 실행
		var login_id = document.getElementById('login_id').value;
		var login_pass = document.getElementById('login_pass').value;
		//alert(login_id+', '+login_pass);
		sendRequest('login.do', 'login_id=' + login_id + '&login_pass='
				+ login_pass, resultLoginCheck, 'POST');
		//login.do --> 로그인액션(login_id와 login_pass가 필요)--> login_id와 login_pass의 값을 전달한다.(POST), resultLoginCheck함수 실행, 
	}

	function resultLoginCheck() {//콜백함수(이벤트 발생 후 실행하는 함수)
		if (xhr.readyState == 4) {//요청한 데이터(페이지를 전부 받았을 때)
			if (xhr.status == 200) {//서버의 상태 체크
				var str = xhr.responseText;//서버가 전달한 데이터 얻어오기.
				//login성공이면 "success", 실패면 "fail"
				alert(str);
				str = str.replace(/(\s*)/g, ""); //모든 공백 제거

				if (str == 'success') {//로그인 성공했을 때
					
					showLoginout('login');//메인뷰에서 showLoginout함수를 실행하고 'login'($loginState)을 파라미터로 전달전달	
					//window.close();
					$('#loginModal').modal('toggle');//로그인 모달창 닫기

				} else {//로그인 실패했을 때
					alert('아이디 또는 비밀번호를 잘못입력하였습니다..');
					document.loginForm.login_id.focus();
				}

			}
		}
	}

	/* $("#openJoinForm").click(function() {
		$("#joinModal").modal();
		$('#loginModal').modal('hide');//로그인 창 닫기!! 안된다 시발
		//window.close();
	}); */

	function requestIdCheck() {//중복확인을 눌렀을때
		var user_id = document.joinForm.user_id.value;
		sendRequest('/tc/user/idCheck.do', 'user_id=' + user_id, resultIdCheck, 'POST');
		//idCheck.do --> idCheckAction실행 전에--> idCheckActionForm을 찾아서 유효성 검사를 하고 (user_id값을 파라미터로 받아서)
		//idCheckAction실행! 
	}

	function resultIdCheck() {
		if (xhr.readyState == 4) {
			if (xhr.status == 200) {
				var str = xhr.responseText;
				//idCheckResponse.jsp에서 키값 "duplicate"로 받은 데이터
				//"사용할 수 없는 아이디입니다." or "사용가능한 아이디입니다."

				var user_id = document.joinForm.user_id.value;
				var user_idExp = /^[a-zA-z0-9]{6,15}$/;
				var idCheck = document.getElementById('idCheck');
				if (!user_idExp.test(user_id)) {//유효성 검사
					str = '아이디는 6~15자리 영문 숫자조합!'
					document.joinForm.user_id.focus();

				}
				idCheck.innerHTML = '<font color=red size=1>' + str + '</font>';
			}
		}
	}

	function validateCheck() {//자바 스크립트 유효성 검사
		//빈값체크, 숫자체크, 문자열 조합
		var f = document.joinForm; //f: <from>엘리먼트
		var id = f.user_id.value;
		var pass = f.user_pass.value;
		var pass2 = f.user_pass2.value;

		var user_idExp = /^[a-zA-z0-9]{6,15}$/;
		//var user_phone1Exp = new RegExp("^[0-9]{2,4}$"); //문자열에서는 역슬래쉬 2개
		var user_phoneExp = /(01[0|1|6|9|7])[-](\d{3}|\d{4})[-](\d{4}$)/g;
		//패턴 안에서는 역슬래쉬 하나!!!!!!!

		var user_addr = f.user_addr.value;
		var user_emailExp = /^[a-zA-Z0-9]+@[a-zA-Z]+\.[a-zA-Z]+$/;
		var user_prio = f.user_prio.value;

		if (!user_idExp.test(f.user_id.value)) {
			alert("아이디는 6~15자리!!");
			f.user_id.focus();
		} else if (f.user_pass.value == '') {
			alert('비밀번호를 입력하세요!');
			f.user_pass.focus();
		} else if (f.user_pass2.value == '') {
			alert('비밀번호 확인을 입력하세요!');
			f.user_pass2.focus();
		} else if (f.user_pass.value !== f.user_pass2.value) {
			alert('비밀번호가 일치하지 않습니다.');
			f.user_pass.value = '';
			f.user_pass2.value = '';
			f.user_pass.focus();
		} else if (f.user_name.value == '') {
			alert('이름을 입력하세요.');
			f.user_name.focus();
		} else if (!(user_phoneExp.test(f.user_phone.value))) {
			alert('핸드폰 번호를 올바르게 입력하세요.');
			f.user_phone.value = '';
			f.user_phone.focus();
		} else if (!user_emailExp.test(f.user_email.value)) {
			alert('잘못된 이메일 형식입니다.');
			f.user_email.value = '';
			f.user_email.focus();
		} else if (f.user_addr.value == '') {
			alert('주소를 입력하세요.');
			f.user_addr.focus();

		} else if (f.user_prio.value == '원하는 기업조건을 선택하세요') {
			alert('원하는 기업조건을 선택하세요');
			f.user_prio.focus();
		} else {
			//폼 내에 모두 유효한 데이터가 입력되었다면
			//중복확인 됬는지 체크
			var idCheck = document.getElementById('idCheck').innerHTML;
			//alert(d1);
			if (idCheck.indexOf('사용가능한 아이디입니다.') >= 0) {//'사용가능한 아이디입니다.'가 포함되어 있다면
				document.joinForm.submit(); //<form>태그내의 action속성의 URL로 폼데이터를 전송!!
				//join.do 실행
				//window.close(); --> 이거 그냥 close하면 액션 실행 안됨!!
			} else if (idCheck.indexOf('사용할 수 없는 아이디입니다.') >= 0) {//'사용할 수 없는 아이디입니다.'가 포함되어있다면
				alert('중복된 아이디입니다.');
			} else {//중복확인 체크를 안눌렀을 때
				alert('중복확인을 해주세요.')
			}
		}

	} //validateCheck
	function upValidateCheck() {//자바 스크립트 유효성 검사
		//빈값체크, 숫자체크, 문자열 조합
		var f = document.joinUpForm; //f: <from>엘리먼트
		var pass = f.up_pass.value;
		var pass2 = f.up_pass2.value;
		
		var up_phoneExp = /(01[0|1|6|9|7])[-](\d{3}|\d{4})[-](\d{4}$)/g;
		//패턴 안에서는 역슬래쉬 하나!!!!!!!
		
		var up_addr = f.up_addr.value;
		var up_emailExp = /^[a-zA-Z0-9]+@[a-zA-Z]+\.[a-zA-Z]+$/;
		var up_prio = f.up_prio.value;
		
		if (f.up_pass.value == '') {
			alert('비밀번호를 입력하세요!');
			f.up_pass.focus();
		} else if (f.up_pass2.value == '') {
			alert('비밀번호 확인을 입력하세요!');
			f.up_pass2.focus();
		} else if (f.up_pass.value !== f.up_pass2.value) {
			alert('비밀번호가 일치하지 않습니다.');
			f.up_pass.value = '';
			f.up_pass2.value = '';
			f.up_pass.focus();
		} else if (f.up_name.value == '') {
			alert('이름을 입력하세요.');
			f.up_name.focus();
		} else if (!(up_phoneExp.test(f.up_phone.value))) {
			alert('핸드폰 번호를 올바르게 입력하세요.');
			f.up_phone.value = '';
			f.up_phone.focus();
		} else if (!up_emailExp.test(f.up_email.value)) {
			alert('잘못된 이메일 형식입니다.');
			f.up_email.value = '';
			f.up_email.focus();
		} else if (f.up_addr.value == '') {
			alert('주소를 입력하세요.');
			f.up_addr.focus();
			
		} else if (f.up_prio.value == '원하는 기업조건을 선택하세요') {
			alert('원하는 기업조건을 선택하세요');
			f.up_prio.focus();
		} else {
			f.submit();
		}
		
	} //validateCheck