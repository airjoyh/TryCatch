 /* 	$(function() {//화면을 띄울 때(F5)마다 동작하는 function
		var now = new Date();
		sendRequest('logincheck.do?n=' + now.getMinutes() + now.getSeconds(),
				null, initForm, 'GET');

	});

	function initForm() {
		if (xhr.readyState == 4 && xhr.status == 200) {
			showLoginout(xhr.responseText);
			$('#ujoin').click(function(){//회원가입을 눌렀을때 초기화되서 보여야한다.
				$('form[name="joinForm"] input').val('');
				$('div#idCheck').html('');
				
			});
			
			$('#login').click(function() {//로그인을 눌렀을 때
				$('form[name="loginForm"] input').val('');
			});
		}
	} */

	function logout() {
		location.href = "main.do";//확인하기
		showLoginout('');
	}

	function showLoginout(msg) {
		console.log("msg>>" + msg)
		var loginout = document.getElementById('loginout');

		alert("로그인 상태:" + msg);
		if (msg == "login") {
			loginout.innerHTML = '<a href="javascript:logout()"><span class="glyphicon glyphicon-log-in">로그아웃</span></a>'
		}
	}

	function requestLoginCheck() {//로그인을 했을때 실행
		var login_id = document.getElementById('login_id').value;
		var login_pass = document.getElementById('login_pass').value;
		alert(login_id + ', ' + login_pass);
		sendRequest('login.do', 'login_id=' + login_id + '&login_pass='
				+ login_pass, resultLoginCheck, 'POST');
	}

	function resultLoginCheck() {//콜백함수
		if (xhr.readyState == 4 && xhr.status == 200) {
			var str = xhr.responseText;
			alert(str);
			str = str.replace(/(\s*)/g, "");

			if (str == 'success') {
				showLoginout('login');
				self.close();
				$('#loginModal').modal('hide');
			} else {
				alert('아이디와 비밀번호가 일치하지 않습니다.');
				document.loginForm.login_id.focus();
			}
		}
	}

	function IdCheck() {//중복확인
		var company_id = document.joinForm.company_id.value;
		sendRequest('idCheck.do', 'company_id=' + company_id, resultIdCheck,
				'POST');
	}

	function resultIdCheck() {
		if (xhr.readyState == 4 && xhr.status == 200) {
			var str = xhr.responseText;

			alert(str);
			var company_id = document.joinForm.company_id.value;
			var company_idExp = /^[a-zA-z0-9]{6,15}$/;
			var idCheck = document.getElementById('idCheck');
			if (!company_idExp.test(company_id)) {
				str = '아이디는 6~15자리 영문 숫자조합'
				document.joinForm.company_id.focus();
			}
			idCheck.innerHTML = '<font color=red size=1>' + str + '</font>';
		}
	}

	function validateCheck() {//자바 스크립트 유효성 검사
		var f = document.joinForm
		var id = f.company_id.value;
		var pass = f.company_pass.value;
		var pass2 = f.company_pass2.value;

		var company_idExp = /^[a-zA-z0-9]{6,15}$/;
		var company_turnoverExp = /^[0-9]{1,14}$/;
		var company_sizeExp = /^[0-9]{1,7}$/;
		var company_numberExp = /^[0-9]{5,15}$/;
		var company_hireNumberExp = /^[0-9]{1,5}$/;
		var manager_telExp = /^[0-9]{9,15}$/;
		var manager_emailExp = /^[a-zA-Z0-9]+@[a-zA-Z]+\.[a-zA-Z]+$/;

		if (!company_idExp.test(f.company_id.value)) {
			alert("아이디는 6~15자리를 입력하시오.");
			f.company_id.focus();
		} else if (pass == '') {
			alert("비밀번호를 입력하세요.");
			f.company_pass.focus();
		} else if (pass2 == '') {
			alert("비밀번호 확인을 입력하세요.");
			f.company_pass2.focus();
		} else if (pass !== pass2) {
			alert("비밀번호가 일치하지 않습니다.");
			f.company_pass.value = '';
			f.company_pass2.value = '';
			f.company_pass.focus();
		} else if (f.company_name.value == '') {
			alert("기업명을 입력하세요.");
			f.company_name.focus();
		} else if (f.company_year.value == '') {
			alert("기업 설립년도를 입력하세요.");
			f.company_year.focus();
		} else if (!company_turnoverExp.test(f.company_turnover.value)) {
			alert("매출액을 입력하세요.");
			f.company_turnover.focus();
		} else if (!company_sizeExp.test(f.company_size.value)) {
			alert("기업 규모를 입력하세요.");
			f.company_size.focus();
		} else if (!company_numberExp.test(f.company_number.value)) {
			alert("사업자 등록번호를 입력하세요.");
			f.company_number.focus();
		} else if (f.company_addr.value == '') {
			alert("기업 주소를 입력하세요.");
			f.company_addr.focus();
		} else if (f.company_site.value == '') {
			alert("기업 사이트를 입력하세요.");
			f.company_site.focus();
		} else if (f.company_intro.value == '') {
			alert("기업 소개를 입력하세요.");
			f.company_intro.focus();
		} else if (!company_hireNumberExp.test(f.company_hireNumber.value)) {
			alert("채용할 인원수를 입력하세요.");
			f.company_hireNumber.focus();
		} else if (f.company_line.value == '==선택==') {
			alert("산업군을 선택하세요.");
			f.company_line.focus();
		}/*  else if (f.skill_java.value == '' && f.skill_jquery.value == ''
				&& f.skill_css.value == '' && f.skill_pro.value == ''
				&& f.skill_python.value == '' && f.skill_xml.value == '') {
			alert("요구하는 스킬을 선택하세요.");
		}  */else if (f.manager_name.value == '') {
			alert("담당자 이름을 입력하세요.");
			f.manager_name.focus();
		} else if (!manager_emailExp.test(f.manager_email.value)) {
			alert("잘못된 이메일 형식입니다.");
			f.manager_email.value = '';
			f.manager_email.focus();
		} else if (f.team_name.value == '') {
			alert("소속팀 이름을 입력하시오.");
			f.team_name.focus();
		} else if (!manager_telExp.test(f.manager_tel.value)) {
			alert("담당자 전화번호를 입력하세요.");
			f.manager_tel.focus();

		} else {

			//f.submit();//<form>태그내의 action속성의 URL로 폼데이터를 전송!!
			//중복확인 체크
			var idCheck = document.getElementById('idCheck').innerHTML;
			alert(idCheck);
			if (idCheck.indexOf('사용가능한 아이디입니다.') >= 0) {
				f.submit(); 

			} else if (idCheck.indexOf('사용할 수 없는 아이디입니다.') >= 0) {
				alert('중복된 아이디입니다.');
			} else {//중복확인 체크를 안눌렀을 때
				alert('중복확인을 해주세요.');
			}
		}
	}//validateCheck