const main = document.querySelector("#main");
const qna = document.querySelector("#qna");
const result = document.querySelector("#result");
const endPoint = 8; // 질문 갯수
const select =[0,0,0,0];
// const : 변수를 상수로 선언 

function calResult(){
	// indexOf : index값 반환, Math.max : 소괄호 속 최대값 반환, ...select : 선택한 배열 펼침
	var result = select.indexOf(Math.max(...select));
	return result;
}

function setResult(){
	let point = calResult();
	const resultName = document.querySelector('.resultname');
	resultName.innerHTML = infoList[point].name;
	
	var resultImg = document.createElement('img');
	const imgDiv = document.querySelector('#resultImg');
	var imgURL = 'img/image-' + point + '.png';
	resultImg.src = imgURL;
	resultImg.alt = point;
	resultImg.classList.add('img-fluid');
	imgDiv.appendChild(resultImg);
	
	const resultDesc = document.querySelector('.resultDesc');
	resultDesc.innerHTML = infoList[point].desc;
}

function goResult(){
		qna.style.WebkitAnimation = "fadeOut 1s";
		qna.style.animation = "fadeOut 1s";
		setTimeout(() => {
			result.style.WebkitAnimation = "fadeIn 1s";
			result.style.animation = "fadeIn 1s";
			setTimeout(() => {
				qna.style.display = "none";
				result.style.display = "block";
		}, 450)})
	setResult();
	calResult();
}


function addAnswer(answerText, qIdx, idx){
	var a = document.querySelector('.answerBox');
	var answer = document.createElement('button');
	answer.classList.add('answerList'); // answerList라는 이름의 클래스 값을 넣어줌
	answer.classList.add('my-3'); 
	answer.classList.add('py-3'); 
	answer.classList.add('mx-auto'); 
	answer.classList.add('fadeIn'); 
	
	
	a.appendChild(answer); // answer이 a에 소속될 수 있도록함
	answer.innerHTML = answerText;// a배열의 answer값을 넣어줌
	
	answer.addEventListener("click", function(){
		var children = document.querySelectorAll('.answerList');
		for(let i = 0; i < children.length; i++){
			children[i].disabled = true;
			children[i].style.WebkitAnimation = "fadeOut 0.5s";
			children[i].style.animation = "fadeOut 0.5s";
			
		} // i가 버튼 갯수만큼 비활성화(한 버튼만 클릭해도 다 비활성화)
		setTimeout(() => {
			var target = qnaList[qIdx].a[idx].type;
			for(let i = 0; i < target.length; i++){
				select[target[i]] +=1;  
			} // 클릭 시 마다 value값 증가
			
			for(let i = 0; i < children.length; i++){
				children[i].style.display = 'none';
		}
		goNext(++qIdx); // 버튼을 클릭할 때 마다 다음 q를 호출
		},450)
	}, false);
	// answer라는 버튼에 addEventListener 추가
}

function goNext(qIdx){ // qIdx에 1씩 누적하여 증가하는 기능추가
	if(qIdx === endPoint){ // 질문이 endPoint(끝)까지 왔을 때 결과 화면 호출
		goResult();
		return;
	}
	
	var q = document.querySelector('.qBox');
	q.innerHTML = qnaList[qIdx].q; // data.js에서 첫번째 q에 해당하는 영역이 할당됨
	for(let i in qnaList[qIdx].a){
		addAnswer(qnaList[qIdx].a[i].answer, qIdx, i);
	}
	var status = document.querySelector('.statusBar');
	status.style.width = (100/endPoint) * (qIdx+1) + '%'; // 질문의 진행상황에 따라 바의 색이 채워짐
}

function begin(){
	main.style.WebkitAnimation = "fadeOut 1s";
	main.style.animation = "fadeOut 1s";
	setTimeout(() => {
		qna.style.WebkitAnimation = "fadeIn 1s";
		qna.style.animation = "fadeIn 1s";
		setTimeout(() => {
		main.style.display = "none";
		qna.style.display = "block";
		}, 450)
		let qIdx = 0;
		goNext(qIdx);
	}, 450);
}