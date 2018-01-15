<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입 폼</title>
<script type="text/javascript" src="${initParam.rootPath }/js/ajax.js"></script>
<script type="text/javascript">
	function requestIdCheck() {//중복확인을 눌렀을때
		var user_id = document.joinForm.user_id.value;
		sendRequest('idCheck.do', 'user_id=' + user_id, resultIdCheck, 'POST');
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
				var d1 = document.getElementById('d1');
				if (!user_idExp.test(user_id)) {//유효성 검사
					str = '아이디는 6~15자리 영문 숫자조합!'
					document.joinForm.user_id.focus();

				}
				d1.innerHTML = '<font color=red size=1>' + str + '</font>';
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
		var user_phone1Exp = new RegExp("^[0-9]{2,4}$"); //문자열에서는 역슬래쉬 2개
		var user_phone2Exp = /^[0-9]{2,4}$/;
		var user_phone3Exp = /^[0-9]{2,4}$/;
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
		} else if (!user_emailExp.test(f.user_email.value)) {
			alert('잘못된 이메일 형식입니다.');
			f.user_email.value = '';
			f.user_email.focus();
		} else if (!(user_phone1Exp.test(f.user_phone1.value)
			&& user_phone3Exp.test(f.user_phone2.value)
			&& user_phone3Exp.test(f.user_phone3.value))) {
			alert('핸드폰 번호를 올바르게 입력하세요.');
			f.user_phone1.value = '';
			f.user_phone2.value = '';
			f.user_phone3.value = '';
			f.user_phone1.focus();
		} else if (f.user_addr.value == '') {
			alert('주소를 입력하세요.');
			f.user_addr.focus();

		} else if (f.user_prio.value == '==선택==') {
			alert('우선순위를 선택하세요.');
			f.user_prio.focus();
		} else {
			//폼 내에 모두 유효한 데이터가 입력되었다면
			//중복확인 됬는지 체크
			var d1 = document.getElementById('d1').innerHTML;
			//alert(d1);
			if(d1.indexOf('사용가능한 아이디입니다.')>=0){//'사용가능한 아이디입니다.'가 포함되어 있다면
				document.joinForm.submit(); //<form>태그내의 action속성의 URL로 폼데이터를 전송!!
				//join.do 실행
				//window.close(); --> 이거 그냥 close하면 액션 실행 안됨!!
			}else if (d1.indexOf('사용할 수 없는 아이디입니다.')>=0) {//'사용할 수 없는 아이디입니다.'가 포함되어있다면
				alert('중복된 아이디입니다.');
			}else{//중복확인 체크를 안눌렀을 때
				alert('중복확인을 해주세요.')
			}
		}

	} //validateCheck
</script>
</head>
<body>
	<center>
		<h3>회원가입</h3>
		<form name="joinForm" action="join.do" method="POST">
			<table cellpadding="5" cellspacing="0" bgcolor="eeeeee">
				<tr>
					<td>ID:</td>
					<td><input type="text" name="user_id" id="uid" > <!-- readonly onclick="win_open()" -->
						<input type="button" value="중복확인" onclick="requestIdCheck()"></td>
				</tr>
				<tr>
					<td><p id="d1"></p></td>
				</tr>
				<tr>
					<td>비 번:</td>
					<td><input type="password" name="user_pass"></td>
				</tr>
				<tr>
					<td>비번확인:</td>
					<td><input type="password" name="user_pass2"></td>
				</tr>
				<tr>
					<td>이 름:</td>
					<td><input type="text" name="user_name"></td>
				</tr>
				<tr>
					<td>이메일:</td>
					<td><input type="text" name="user_email"></td>
				</tr>
				<tr>
					<td>핸드폰 번호:</td>
					<td><input type="text" size="4" name="user_phone1"> -
						<input type="text" size="4" name="user_phone2"> - <input
						type="text" size="4" name="user_phone3"></td>
				</tr>
				<tr>
					<td>주 소:</td>
					<td><input type="text" name="user_addr"></td>
				</tr>
				<tr>
					<td>우선순위:</td>
					<td><select name="user_prio">
							<option>==선택==</option>
							<option>승진기회 및 가능성</option>
							<option>복지와 급여</option>
							<option>업무와 삶의 균형</option>
							<option>사내문화</option>
							<option>경영진</option>
					</select></td>
				</tr>
				<tr align="center">
					<td colspan="2"><input type="button" value="등록"
						onclick="return validateCheck()"> <input type="reset"
						value="취소"></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>