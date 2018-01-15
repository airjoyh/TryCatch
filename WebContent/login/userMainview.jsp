<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>유저 메인 뷰</title>
<script type="text/javascript">
	function join(){//로그인 폼에서 join(회원가입 버튼을 눌렀을 때)
		window.open('joinForm.do','join',
		'width=400,height=500,top=100,left=200');
	}
	
	function login(){
		window.open('loginForm.do','login',
				'width=250,height=100,top=100,left=200');

	}
	
	function logout(){
		//location.href='logout.do';//LogoutAction실행 -->session.invalidate()
		window.open('logout.do','logout','width=250,height=100,top=100,left=200');
		//메인뷰가 logout.do가 되지 않게 하기위해
		//-->메인뷰가 logout.do가 되면 그다음 로그인해도 새로고침을 하면 바로 로그아웃 되어버린다.
		showLoginout('');//logout상태를 표시(로그인태그를 띄우기 위해)
	}
	
	function showLoginout(msg){//msg는 ${loginState }--> LoginAction에서 로그인하면 세션을 'login'이라는 메시지를 셋어트리뷰트한다,
		//세션 로그인 중에는 로그아웃 <a>태그가 보이게하고 아닐때는 로그인 태그가 보이게 하기.
		var p1 = document.getElementById('p1'); 
		//var msg ='${loginState }';
		
		var v = p1.innerHTML;
		//세션이 연결되어있을 때 로그인
		alert("로그인 상태: "+msg);
		if(msg=="login"){//로그인 상태일때!
			p1.innerHTML='<a href="javascript:logout()">로그아웃</a>';
		}else{//로그인 상태가 아닐때!
			p1.innerHTML='<a href="javascript:login()">로그인</a>';
		}
		//아닐 때 로그아웃
	}
	
	window.onload=function(){//화면을 띄울 때(F5)마다 동작하는 function
		showLoginout('${loginState }');
	}
</script>
</head>
<body>
	<h4>유저 메인 뷰</h4>
	<hr>
	<p id="p1"></p><br>
	<hr>
	로그인한 회원 정보<br>
	

</body>
</html>