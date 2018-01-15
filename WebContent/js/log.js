

//log.js

function log(msg) { //전달받는 msg를 특정위치(id=debugConsole)에 출력
	var debugConsole = document.getElementById('debugConsole');
	//debugConsole: Element --> innerHTML속성 사용가능!

	if (debugConsole != null) {
		debugConsole.innerHTML += msg + '<br>';
	}

}