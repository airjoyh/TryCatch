

//ajax2.js

//클래스(객체)명 = function(인자){}

var ajax= {};//new Object();
ajax.xhr= {}; //ajax.xhr패키지 정의
ajax.xhr.Request = function(url, params, callback, method){
   //Request의 생성자, 멤버속성 정의	
   this.url = url;
   this.params = params;
   this.callback = callback;
   this.method = method;
   this.send();//객체생성과 동시에 send()함수를 호출.
}
//호출: var req = new ajax.xhr.Request('hello.jsp','name=길동',loaded,'POST');

//Request의 메소드 정의
ajax.xhr.Request.prototype={
	getXMLHttpRequest:function(){
		if(window.ActiveXObject){	 
	         try{	
	   	       return new ActiveXObject("Msxml2.XMLHTTP");//IE5이상경우
	   	    //alert('당신의 브라우저는 IE입니다!!');
	         }catch(e){
	        	return new ActiveXObject("Microsoft.XMLHTTP");//IE낮은버전
	         }
	       }else{ 
	   	     return new XMLHttpRequest();//비IE경우
	   	    //alert('당신의 브라우저는 IE가 아니거나 IE11버전입니다!!');
	       }	
	}//getXMLHttpRequest
    ,
    send:function(){
    	this.xhr = this.getXMLHttpRequest();//req == xhr
    	
    	var httpMethod= this.method ? this.method : 'GET' ;//HTTP요청 방식 (4번째 인자 전달X - 기본값 GET)
    	   
    	   if(httpMethod != 'GET' && httpMethod != 'POST'){//잘못된 요청방식 - 기본값 GET
    		   httpMethod = 'GET';
    	   }
    	   
    	   var httpParams = (this.params==null || this.params=='')? 
    			             null: this.params; //전달 파라미터
    	   //예) httpParams=null;  httpParams='username=gildong'
    	   
    	   var httpUrl= this.url; //요청URL ('hello.jsp'  'hello.do')
    	   
    	   if(httpMethod =='GET' && httpParams != null){
    		 httpUrl = httpUrl + '?'+ httpParams; // httpUrl='hello.jsp?username=gildong'
    	   }
    	   
    	   
    	   var request = this;
    	   this.xhr.onreadystatechange = function(){
    		    request.onStateChange.call(request);
    		    //현클래스(Request)의 onStateChange()함수를 호출하면서 현클래스정보를 전달.
    	   }
    	   
    	   this.xhr.open(httpMethod, httpUrl, true);// open('HTTP요청방식','요청URL', 비동기);
    	   
    	   this.xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    	   //텍스트 데이터(파라미터 데이터)를 서버에 전송하겠음!!
    	   
    	   this.xhr.send(httpMethod=='POST' ? httpParams : null); //send('username=gildong');
    }
    ,
	onStateChange:function(){
		this.callback(this.xhr);
		// this.xhr객체를 인자로 전달
	}
};














