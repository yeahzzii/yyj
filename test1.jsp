<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="YYJ">
<meta name="keyword" content="나에게 맞는 환경 챌린지 찾기">
<meta name="description" content="나에게 맞는 환경 챌린지 찾기">

<meta property="og:url" content="https://yyjtest1.netlify.app"/>
<meta property="og:title" content="나에게 맞는 환경 챌린지 찾기"/>
<meta property="og:type" content="website"/>
<meta property="og:image" content="img/icon9.png"/>
<meta property="og:description" content="나에게 맞는 환경 챌린지 찾기"/>


<title>나에게 맞는 환경 챌린지 TEST!</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
rel="stylesheet" 
integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
crossorigin="anonymous">
<link href="https://webfontworld.github.io/SCoreDream/SCoreDream.css" rel="stylesheet">
<style>
@font={
	font-family: 'SCoreDream';
    font-weight: 400; 
    font-style: normal; 
    src: url(https://cdn.jsdelivr.net/gh/webfontworld/SCoreDream/SCoreDream4.woff2) format('woff2'),
         url(https://cdn.jsdelivr.net/gh/webfontworld/SCoreDream/SCoreDream4.woff) format('woff');
    font-display: swap;
}
</style>
<link rel="stylesheet" href="./css/main.css">
<link rel="stylesheet" href="./css/qna.css">
<link rel="stylesheet" href="./css/result.css">
<link rel="stylesheet" href="./css/animation.css">
<link rel="stylesheet" href="./css/default.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
	Kakao.init('838509787b064722f58487a555d44b88');
	Kakao.isInitialized();
</script>
</head>

<body>
	<div class="container">
		<section id="main" class="mx-auto my-5 py-5 px-3">
			<h1>나와 어울리는 환경 챌린지 TEST</h1>
			<div class="col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
			<img alt="mainImage" src="img/icon9.png" class="img-fluid">
			</div>
			<button type="button" class="mt-3" onclick="js:begin()">START!</button>
		</section>

		<section id="qna">
		<div class="status mx-auto mt-3">
			<div class="statusBar">
			
			</div>
		</div><br><br>
	
		<!-- qBox는 자동 할당, answerBox는 사용자가 버튼 클릭해서 선택하도록 -->
		<div class="qBox my-4 py-3 mx-auto">
		</div><br>	
		<div class="answerBox">
		
		</div>
		</section>
		
		<section id="result" class="mx-auto my-5 py-5 px-3">
			<i class="xi-minus-thin"></i>
			<i class="xi-minus-thin"></i>
			<i class="xi-minus-thin"></i>
			<i class="xi-minus-thin"></i>
			<h1>나의 결과는?</h1>
			<i class="xi-minus-thin"></i>
			<i class="xi-minus-thin"></i>
			<i class="xi-minus-thin"></i>
			<i class="xi-minus-thin"></i><br>
			<div class="resultname">
			
			</div>
			<div id="resultImg" class="my-3 col-lg-6 col-md-8 col-sm-10 col-12 mx-auto">
			
			</div>
			<div class="resultDesc">
			
			</div>
			<button type="button" class="kakao mt-3 py-2 px-3" onclick="js:kakaoShare()">공유하기</button>
			<button type="button" class="restart mt-3 py-2 px-3" onclick="location.href='a01_Yeji/main/main2.jsp'">메인이동</button>
		</section>
		<script type="text/javascript" src="./js/data.js"></script>
		<script type="text/javascript" src="./js/start.js"></script>
		<script type="text/javascript" src="./js/share.js"></script>
		
	</div>
	
</body>
</html>