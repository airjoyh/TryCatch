<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 폼</title>
<script type="text/javascript" src="${initParam.rootPath }/js/ajax.js"></script>
<script type="text/javascript">
	function join(){
		//회원가입 폼을 로그인 폼에서 또 자식창을 띄우는 것이아니라 
		//메인뷰에서 자식창을 띄우도록 해주는 function
		window.close();
		window.opener.join();//메인뷰에 있는 join() function실행
	}
	
	function requestLoginCheck(){
		var login_id = document.loginForm.login_id.value;
		var login_pass = document.loginForm.login_pass.value;
		//alert(login_id+', '+login_pass);
		sendRequest('login.do', 'login_id='+login_id+'&login_pass='+login_pass, resultLoginCheck, 'POST');
		//login.do --> 로그인액션(login_id와 login_pass가 필요)--> login_id와 login_pass의 값을 전달한다.(POST), resultLoginCheck함수 실행, 
	}
	
	function resultLoginCheck() {//콜백함수(이벤트 발생 후 실행하는 함수)
		if (xhr.readyState == 4) {//요청한 데이터(페이지를 전부 받았을 때)
			if (xhr.status == 200) {//서버의 상태 체크
				var str = xhr.responseText;//서버가 전달한 데이터 얻어오기.
				//login성공이면 "success", 실패면 "fail"
				alert(str);
				str=str.replace(/(\s*)/g, ""); //모든 공백 제거
				
				if(str=='success'){//로그인 성공했을 때
					opener.showLoginout('login');//메인뷰에서 showLoginout함수를 실행하고 'login'($loginState)을 파라미터로 전달전달	
					self.close();//창 닫기
					//document.loginForm.submit();
					//window.opener.shoLoginout();
				}else{//로그인 실패했을 때
					alert('아이디와 비밀번호가 일치하지 않습니다.');
					document.loginForm.login_id.focus();				
				}
				
			}
		}
	}
</script>
</head>
<body>
  <form name="loginForm" method="POST">
  	ID : <input type="text" name="login_id"><br>
  	PW : <input type="password" name="login_pass"><br>
  	<input type="button" value="회원가입" onclick="join()">
  	<input type="button" value="로그인" onclick="requestLoginCheck()">
  </form>
</body>
</html>