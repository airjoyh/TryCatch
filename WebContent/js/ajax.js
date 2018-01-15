//ajax.js

var xhr = null;

function setXMLHttpRequest() {
	if (window.ActiveXobject) {
		try {
			xhr = new ActiveXObject("Msxml2.XMLHTTP"); //IE6이상인 경우
			//alert('당신의 브라우저는 IE');
		} catch (e) {
			xhr = new ActiveXObject("Microsoft.XMLHTTP"); //IE5이하인 경우
		}
	} else {
		xhr = new XMLHttpRequest(); //비IE인 경우
		//alert('당신의 브라우저는 IE가 아니거나 IE11 버전입니다.!');
	}

}

function sendRequest(url, params, callback, method) {
	setXMLHttpRequest();
	
	var httpMethod = method? method : 'GET'; //HTTP요청방식(4번째 인자 전달X - 기본값 GET)
	
	if(httpMethod != 'GET' && httpMethod != 'POST'){//잘못된 요청방식 - 기본값 GET
		httpMethod = 'GET';
	}
	
	var httpParams = (params==null || params=='')? null:params; //전달 파라미터
	//예) httpParams=null; httpParams='Username=gildong'
	
	var httpUrl=url; //요청 URL('hello.jsp' 'hello.do')
	
	if(httpMethod == 'GET' && httpParams != null){
		httpUrl = httpUrl+'?'+httpParams; //httpUrl='hello.jsp?username=gildong'
	}
	
	
	xhr.onreadystatechange=callback; //서버페이지 요청 후 실행할 함수
	xhr.open(httpMethod, httpUrl, true); //open('HTTP요청방식', '요청URL', 비동기);
	
	xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
	//텍스트 데이터(파라미터)를 서버에 전송하겠음!!
	
	xhr.send(httpMethod='POST' ? httpParams: null); //send('username=gildong');
	
	
}



