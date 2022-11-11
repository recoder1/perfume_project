<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="zxx" class="dark">
<head>
   <title>오드비 - Eau de Vie</title>
    <!-- metas -->
    <meta charset="utf-8">
    <meta name="author" content="pxdraft" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="keywords" content="Crikon – Multipurpose Template" />
    <meta name="description" content="Crikon – Multipurpose Template" />
    <!-- title -->
    <title>오드비 - Eau de Vie</title>
    <!-- font : Google Noto Serif Korean -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&display=swap" rel="stylesheet">
    <!-- Favicon -->
    <link rel="shortcut icon" href="../resources/assets/img/favicon.ico">
    <!-- CSS Template -->
    <link href="../resources/assets/css/theme.css" rel="stylesheet">
    <link href="../resources/assets/css/test_theme.css" rel="stylesheet">
    <jsp:useBean id="now" class="java.util.Date" />
    <fmt:formatDate value="${now}" pattern="yyyyMMdd-HHmmss-" var="now" />

	<script type="text/javascript" src="../resources/js/jquery-1.7.1.js"></script>
<!-- 	<script  src="../resources/js/js_userinput.js?ver=1"></script> -->

	<script type="text/javascript">
	
		window.onload = function(){

<%!
			int btnNum = 0;
%>
			
			var resultCode = "";
<%			
			while (btnNum < 13) {
%>
				$('.btn<%= btnNum%>').on("click", function(){
					
					resultStr<%= btnNum%> = $(this).attr('id');
					$('#input<%= btnNum%>').attr('value', resultStr<%= btnNum%>);
<%					


					if ( btnNum > 0 ){
%>
						resultCode += resultStr<%= btnNum %>
<%
					}
%>
					console.log(resultStr<%= btnNum%>);
					console.log(resultCode);
					
<%					
// 					if ( (btnNum > 5) && (btnNum%2 == 0) ){
					if ( btnNum > 5 ){
%>
						$('#no<%= btnNum+1%> #'+resultStr<%= btnNum%>).css({'opacity': '20%', 'border': '2px solid black'});
						$('#no<%= btnNum+2%> #'+resultStr<%= btnNum%>).css({'opacity': '20%', 'border': '2px solid black'});
						$('#no<%= btnNum+3%> #'+resultStr<%= btnNum%>).css({'opacity': '20%', 'border': '2px solid black'});
<%
					}
%>
					
					$("#no<%= btnNum %>").hide();
					$("#no<%= btnNum+1 %>").show();
				});
				
<%			
			btnNum++;
			}
%>

			$('#submitBtn').on("click", function(){
<%
				btnNum = 0;
%>
				$('*').css('opacity', '100%');
				$('#input12').attr('value', resultCode);
			});

		
		};
	
			
// 		});	

	
	</script>
	
    <style>
        *{
        	font-family: 'Noto Serif KR', serif;
        }
    </style>

</head>

<body>

		<!-- header -->
		<jsp:include page="/WEB-INF/views/hf/header.jsp"></jsp:include>

		<!-- End header -->
		
        <!-- Main -->
        <main>
            <!-- Page Title -->
            <section class="py-3 bg-gray-100" style="height: 200px;">
                <!-- style 추가-->
                <div class="container" style="padding-top: 35px;">
                    <div class="row align-items-center">
                        <!-- col-1g-6 12로 변경, h1에 text-lg-start 클래스 삭제-->
                        <div class="col-lg-12 my-2">
                            <h1 class="m-0 h4 text-center" style="font-size: 2.5rem;">취향테스트</h1>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Page Title -->

            <!-- Section -->
            <div class="section m-auto my-7" style="width: 800px;">
            
            	<!-- 취향테스트 시작하기 -->
            	<div class="card mt-5" id="no0">
            		<!-- 시작하기 진행바 -->
                    <div class="progressbar-wrapper">
                        <ul class="progressbar">
                            <li>Step 1</li>
                            <li>Step 2</li>
                            <li>Step 3</li>
                            <li>Step 4</li>
                            <li>Step 5</li>
                            <li>Step 6</li>
                            <li>Step 7</li>
                            <li>Step 8</li>
                            <li>Finish</li>
                        </ul>
                    </div>
                    
                    <!-- 시작하기 버튼 -->
                    <div class="card-body" >
                        <div class="col-3">
                            <div class="col-12">
                                <h6 class="my-10 text-md-center">
                                	나에게 꼭 맞는 향수를 찾아볼까요?<br>
                                	취향 테스트를 시작해주세요.</h6>
                            </div>
                            <!-- 선택지 -->
                            <div class="col-3">
                                <div class="product-card-01">
                                    <div class="card mt-5">
                                        <button class="btn btn-primary btn0" id="${now }"> 시작하기   </button>
                                    </div>
                                </div>
                            </div>
                                 
                        </div>
                    </div>
                </div> <!-- 시작하기 페이지 끝-->

                <!-- 질문 1번 성별 -->
                <div class="card mt-5" id="no1" style="display: none;">

                    <!-- 1번 진행바 -->
                    <div class="progressbar-wrapper">
                        <ul class="progressbar">
                            <li class="active_now">Step 1</li>
                            <li>Step 2</li>
                            <li>Step 3</li>
                            <li>Step 4</li>
                            <li>Step 5</li>
                            <li>Step 6</li>
                            <li>Step 7</li>
                            <li>Step 8</li>
                            <li>Finish</li>
                        </ul>
                    </div>

                    <!-- 질문 내용 -->
                    <div class="card-body" >
                        <div class="col-3">
                            <div class="col-12">
                                <h6 class="my-10 text-md-center">원하는 성별 이미지를 선택해주세요.</h6>
                            </div>
                            <!-- 선택지 -->
                            <div class="col-3">
                                <div class="product-card-01">
                                    <div class="card mt-5">
                                        <button class="btn btn1" id="W">
                                            여성용
                                        </button>
                                    </div>
                                    <div class="card mt-5">
                                        <button class="btn btn1" id="M">
                                            남성용
                                        </button>
                                    </div>
                                    <div class="card mt-5">
                                        <button class="btn btn1" id="N">
                                            무관
                                        </button>
                                    </div>
                                </div>
                            </div>
                                 
                        </div>
                    </div>
                </div> <!-- 질문 1번 끝-->


                <!-- 질문 2번 나이 -->
                <div class="card mt-5" id="no2" style="display:none;">

                     <!-- 2번 진행바 -->
                     <div class="progressbar-wrapper">
                        <ul class="progressbar">
                            <li class="active">Step 1</li>
                            <li class="active_now">Step 2</li>
                            <li>Step 3</li>
                            <li>Step 4</li>
                            <li>Step 5</li>
                            <li>Step 6</li>
                            <li>Step 7</li>
                            <li>Step 8</li>
                            <li>Finish</li>
                        </ul>
                    </div>
                    <!-- 질문 내용 -->
                    <div class="card-body">
                        <div class="col-3">
                            <div class="col-12">
                                <h6 class="my-10 text-md-center">원하는 연령 이미지를 선택해주세요.</h6>
                            </div>
                            <!-- 선택지 -->
                            <div class="col-3">
                                <div class="product-card-01 card11">
                                    <div class="card mt-5 card01">
                                        <button class="btn btn2" id="">
                                            10대
                                        </button>
                                    </div>
                                    <div class="card mt-5">
                                        <button class="btn btn2" id="">
                                            20대
                                        </button>
                                    </div>
                                    <div class="card mt-5">
                                        <button class="btn btn2" id="">
                                            30대
                                        </button>
                                    </div>
                                </div>
                                <div class="product-card-01 card02">
                                    <div class="card mt-5">
                                        <button class="btn btn2" id="">
                                            40대
                                        </button>
                                    </div>
                                    <div class="card mt-5">
                                        <button class="btn btn2" id="">
                                            50대 이상
                                        </button>
                                    </div>
                                </div>
                            </div>
                                 
                        </div>
                    </div>
                </div> <!-- 질문 2번 끝-->

                <!-- 질문 3번 확산력 -->
                <div class="card mt-5" id="no3" style="display: none;">


                    <!-- 진행바 -->
                    <div class="progressbar-wrapper">
                        <ul class="progressbar">
                            <li class="active">Step 1</li>
                            <li class="active">Step 2</li>
                            <li class="active_now">Step 3</li>
                            <li>Step 4</li>
                            <li>Step 5</li>
                            <li>Step 6</li>
                            <li>Step 7</li>
                            <li>Step 8</li>
                            <li>Finish</li>
                        </ul>
                    </div>

                    <!-- 질문 내용 -->
                    <div class="card-body" >
                        <div class="col-3">
                            <div class="col-12">
                                <h6 class="my-10 text-md-center">원하는 확산력을 선택해주세요.</h6>
                            </div>
                            <!-- 선택지 -->
                            <div class="col-3">
                                <div class="product-card-01">
                                    <div class="card mt-5">
                                        <button class="btn btn3" id="M">
                                            보통
                                        </button>
                                    </div>
                                    <div class="card mt-5">
                                        <button class="btn btn3" id="S">
                                            강함
                                        </button>
                                    </div>
                                </div>
                            </div>   
                        </div>
                    </div>
                </div> <!-- 질문 3번 끝-->

                <!-- 질문 4번 지속력 -->
                <div class="card mt-5" id="no4" style="display: none;">

                    
                    <!-- 진행바 -->
                    <div class="progressbar-wrapper">
                        <ul class="progressbar">
                            <li class="active">Step 1</li>
                            <li class="active">Step 2</li>
                            <li class="active">Step 3</li>
                            <li class="active_now">Step 4</li>
                            <li>Step 5</li>
                            <li>Step 6</li>
                            <li>Step 7</li>
                            <li>Step 8</li>
                            <li>Finish</li>
                        </ul>
                    </div>

                    <!-- 질문 내용 -->
                    <div class="card-body">
                        <div class="col-3">
                            <div class="col-12">
                                <h6 class="my-10 text-md-center">원하는 지속시간을 선택해주세요.</h6>
                            </div>
                            <!-- 선택지 -->
                            <div class="col-3">
                            	<div class="product-card-01 card02">
                                    <div class="card mt-5">
                                        <button class="btn btn4" id="5">
                                            4시간 내외
                                        </button>
                                    </div>
                                    <div class="card mt-5">
                                        <button class="btn btn4" id="7">
                                            8시간 내외
                                        </button>
                                    </div>
                                </div>
                            </div>                                 
                        </div>
                    </div>
                </div> <!-- 질문 4번 끝 -->
                
                <!-- 질문지 5. 계절-->
                <div class="card mt-5 no5" id="no5" style="display:none;" >


                    <div class="row gy-4"> 
                        
                        
                     <!-- 진행바 -->
                     <div class="progressbar-wrapper">
                        <ul class="progressbar">
                            <li class="active">Step 1</li>
                            <li class="active">Step 2</li>
                            <li class="active">Step 3</li>
                            <li class="active">Step 4</li>
                            <li class="active_now">Step 5</li>
                            <li>Step 6</li>
                            <li>Step 7</li>
                            <li>Step 8</li>
                            <li>Finish</li>
                        </ul>
                    </div>
                    
                        <div class="col-12 my-7">
                            <h6 class="text-center">향수를 사용할 계절을 알려주세요</h6>
                        </div>
                        <!-- 봄-->
                        <div class="col-3 my-10 season">
                            <div class="product-card-01">
                                <div class="product-card-01">
                                    <div class="product-media-hover btn5" type="button" id="p">
                                        <img src="../resources/assets/img/test_spring.jpg">
                                        <h6 class="product-title text-center mt-3">봄</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 여름 -->
                        <div class="col-3 my-10 season">
                            <div class="product-card-01">
                                <div class="product-card-01">
                                    <div class="product-media-hover btn5" type="button" id="m">
                                        <img src="../resources/assets/img/test_summer.jpg">
                                        <h6 class="product-title text-center mt-3">여름</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--가을-->
                        <div class="col-3 my-10 season">
                            <div class="product-card-01">
                                <div class="product-card-01">
                                    <div class="product-media-hover btn5" type="button" id="f">
                                        <img src="../resources/assets/img/test_fall.jpg">
                                        <h6 class="product-title text-center mt-3">가을</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 겨울 -->
                        <div class="col-3 my-10 season">
                            <div class="product-card-01">
                                <div class="product-card-01">
                                    <div class="product-media-hover btn5" type="button" id="w">
                                        <img src="../resources/assets/img/test_winter.jpg">
                                        <h6 class="product-title text-center mt-3">겨울</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> <!-- 질문 5번 끝 -->

                <!-- 질문 6번 분위기 이미지-->
                <div class="card mt-5" id="no6" style="display:none;">

                   
                    <!-- 결과보기 내용 -->
                    <div class="row gy-4">

                         <!-- 진행바 -->
                        <div class="progressbar-wrapper">
                            <ul class="progressbar">
                                <li class="active">Step 1</li>
                                <li class="active">Step 2</li>
                                <li class="active">Step 3</li>
                                <li class="active">Step 4</li>
                                <li class="active">Step 5</li>
                                <li class="active_now">Step 6</li>
                                <li>Step 7</li>
                            	<li>Step 8</li>
                            	<li>Finish</li>
                            </ul>
                        </div>

                        <div class="col-12 my-7">
                            <h6 class="text-center">원하는 분위기를 두 개 골라주세요.</h6>
                        </div>
                        <!--깨끗한/청초한-->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn6" type="button" id="cl" style="opacity: 95%;">
                                    <img src="../resources/assets/img/cl.jpg" >
                                    <h6 class="product-title text-center mt-3">깨끗한/청초한</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 단아한/차분한 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn6" type="button" id="cm">
                                    <img src="../resources/assets/img/cm.jpg" title="" alt="">
                                    <h6 class="product-title text-center mt-3">차분한/단아한</h6>
                                </div>
                            </div>
                        </div>
                        <!--상큼한/발랄한-->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn6" type="button" id="re">
                                    <img src="../resources/assets/img/re.jpg">
                                    <h6 class="product-title text-center mt-3">상큼한/발랄한</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 순수한/귀여운 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn6" type="button" id="pu">
                                    <img src="../resources/assets/img/pu.jpg">
                                    <h6 class="product-title text-center mt-3">순수한/귀여운</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 차가운/시크한 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn6" type="button" id="ch">
                                    <img src="../resources/assets/img/ch.jpg">
                                    <h6 class="product-title text-center mt-3">차가운/시크한</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 지적인/전문적인 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn6" type="button" id="in">
                                    <img src="../resources/assets/img/in.jpg">
                                    <h6 class="product-title text-center mt-3">지적인/전문적인</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 독특한/자유로운 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn6" type="button" id="uq">
                                    <img src="../resources/assets/img/uq.jpg">
                                    <h6 class="product-title text-center mt-3">독특한/자유로운</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 관능적인/유혹적인 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn6" type="button" id="se">
                                    <img src="../resources/assets/img/se.jpg">
                                    <h6 class="product-title text-center mt-3">관능적인/유혹적인</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> <!--질문 6번 끝-->
                
                <!-- 질문 7번 분위기 이미지 (2)-->
                <div class="card mt-5" id="no7" style="display:none;">

                   
                    <!-- 결과보기 내용 -->
                    <div class="row gy-4">

                         <!-- 진행바 -->
                        <div class="progressbar-wrapper">
                            <ul class="progressbar">
                                <li class="active">Step 1</li>
                                <li class="active">Step 2</li>
                                <li class="active">Step 3</li>
                                <li class="active">Step 4</li>
                                <li class="active">Step 5</li>
                                <li class="active_now">Step 6</li>
                                <li>Step 7</li>
                            	<li>Step 8</li>
                            	<li>Finish</li>
                            </ul>
                        </div>

                        <div class="col-12 my-7">
                            <h6 class="text-center">원하는 분위기를 <b>두 개</b> 골라주세요.</h6>
                        </div>
                        <!--깨끗한/청초한-->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn7" type="button" id="cl">
                                    <img src="../resources/assets/img/cl.jpg">
                                    <h6 class="product-title text-center mt-3">깨끗한/청초한</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 단아한/차분한 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn7" type="button" id="cm">
                                    <img src="../resources/assets/img/cm.jpg" title="" alt="">
                                    <h6 class="product-title text-center mt-3">단아한/차분한</h6>
                                </div>
                            </div>
                        </div>
                        <!--상큼한/발랄한-->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn7" type="button" id="re">
                                    <img src="../resources/assets/img/re.jpg">
                                    <h6 class="product-title text-center mt-3">상큼한/발랄한</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 순수한/귀여운 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn7" type="button" id="pu">
                                    <img src="../resources/assets/img/pu.jpg">
                                    <h6 class="product-title text-center mt-3">순수한/귀여운</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 차가운/시크한 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn7" type="button" id="ch">
                                    <img src="../resources/assets/img/ch.jpg">
                                    <h6 class="product-title text-center mt-3">차가운/시크한</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 지적인/전문적인 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn7" type="button" id="in">
                                    <img src="../resources/assets/img/in.jpg">
                                    <h6 class="product-title text-center mt-3">지적인/전문적인</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 독특한/자유로운 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn7" type="button" id="uq">
                                    <img src="../resources/assets/img/uq.jpg">
                                    <h6 class="product-title text-center mt-3">독특한/자유로운</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 관능적인/유혹적인 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn7" type="button" id="se">
                                    <img src="../resources/assets/img/se.jpg">
                                    <h6 class="product-title text-center mt-3">관능적인/유혹적인</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> <!--질문 7번 끝-->
                
                <!-- 질문 8번 선호 향조 -->
                <div class="card mt-5" id="no8" style="display:none;">

                   
                    <!-- 결과보기 내용 -->
                    <div class="row gy-4">

                         <!-- 진행바 -->
                        <div class="progressbar-wrapper">
                            <ul class="progressbar">
                                <li class="active">Step 1</li>
                                <li class="active">Step 2</li>
                                <li class="active">Step 3</li>
                                <li class="active">Step 4</li>
                                <li class="active">Step 5</li>
                                <li class="active">Step 6</li>
                                <li class="active_now">Step 7</li>
                            	<li>Step 8</li>
                            	<li>Finish</li>
                            </ul>
                        </div>

                        <div class="col-12 my-7">
                            <h6 class="text-center">좋아하는 향조를 <b>두 개</b> 골라주세요.</h6>
                        </div>
                        <!--아쿠아틱-->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn8" type="button" id="AQ">
                                    <img src="../resources/assets/img/accords/aquatic.jpg">
                                    <h6 class="product-title text-center mt-3">아쿠아틱</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 아로마틱 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn8" type="button" id="AR">
                                    <img src="../resources/assets/img/accords/aromatic.jpg">
                                    <h6 class="product-title text-center mt-3">아로마틱</h6>
                                </div>
                            </div>
                        </div>
                        <!--시트러스-->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn8" type="button" id="CI">
                                    <img src="../resources/assets/img/accords/citrus.jpg">
                                    <h6 class="product-title text-center mt-3">시트러스</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 플로럴 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn8" type="button" id="FL">
                                    <img src="../resources/assets/img/accords/floral.jpg">
                                    <h6 class="product-title text-center mt-3">플로럴</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 프루티 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn8" type="button" id="FR">
                                    <img src="../resources/assets/img/accords/fruity.jpg">
                                    <h6 class="product-title text-center mt-3">프루티</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 레더 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn8" type="button" id="LE">
                                    <img src="../resources/assets/img/accords/leather.jpg">
                                    <h6 class="product-title text-center mt-3">레더</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 머스키 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn8" type="button" id="MU">
                                    <img src="../resources/assets/img/accords/musky.jpg">
                                    <h6 class="product-title text-center mt-3">머스키</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 파우더리 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn8" type="button" id="PO">
                                    <img src="../resources/assets/img/accords/powdery.jpg">
                                    <h6 class="product-title text-center mt-3">파우더리</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 스모키 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn8" type="button" id="SM">
                                    <img src="../resources/assets/img/accords/smoky.jpg">
                                    <h6 class="product-title text-center mt-3">스모키</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 소피 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn8" type="button" id="SO">
                                    <img src="../resources/assets/img/accords/soapy.jpg">
                                    <h6 class="product-title text-center mt-3">소피</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 스파이시 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn8" type="button" id="SP">
                                    <img src="../resources/assets/img/accords/spicy.jpg">
                                    <h6 class="product-title text-center mt-3">스파이시</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 우디 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn8" type="button" id="WO">
                                    <img src="../resources/assets/img/accords/woody.jpg">
                                    <h6 class="product-title text-center mt-3">우디</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> <!--질문 8번 끝-->
                
                <!-- 질문 9번 선호 향조 (2)-->
                <div class="card mt-5" id="no9" style="display:none;">

                   
                    <!-- 결과보기 내용 -->
                    <div class="row gy-4">

                         <!-- 진행바 -->
                        <div class="progressbar-wrapper">
                            <ul class="progressbar">
                                <li class="active">Step 1</li>
                                <li class="active">Step 2</li>
                                <li class="active">Step 3</li>
                                <li class="active">Step 4</li>
                                <li class="active">Step 5</li>
                                <li class="active">Step 6</li>
                                <li class="active_now">Step 7</li>
                            	<li>Step 8</li>
                            	<li>Finish</li>
                            </ul>
                        </div>

                        <div class="col-12 my-7">
                            <h6 class="text-center">좋아하는 향조를 <b>두 개</b> 골라주세요.</h6>
                        </div>
                        <!--아쿠아틱-->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn9" type="button" id="AQ">
                                    <img src="../resources/assets/img/accords/aquatic.jpg" class="notes">
                                    <h6 class="product-title text-center mt-3">아쿠아틱</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 아로마틱 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn9" type="button" id="AR">
                                    <img src="../resources/assets/img/accords/aromatic.jpg" class="notes">
                                    <h6 class="product-title text-center mt-3">아로마틱</h6>
                                </div>
                            </div>
                        </div>
                        <!--시트러스-->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn9" type="button" id="CI">
                                    <img src="../resources/assets/img/accords/citrus.jpg" class="notes">
                                    <h6 class="product-title text-center mt-3">시트러스</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 플로럴 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn9" type="button" id="FL">
                                    <img src="../resources/assets/img/accords/floral.jpg" class="notes">
                                    <h6 class="product-title text-center mt-3">플로럴</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 프루티 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn9" type="button" id="FR">
                                    <img src="../resources/assets/img/accords/fruity.jpg" class="notes">
                                    <h6 class="product-title text-center mt-3">프루티</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 레더 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn9" type="button" id="LE">
                                    <img src="../resources/assets/img/accords/leather.jpg" class="notes">
                                    <h6 class="product-title text-center mt-3">레더</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 머스키 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn9" type="button" id="MU">
                                    <img src="../resources/assets/img/accords/musky.jpg" class="notes">
                                    <h6 class="product-title text-center mt-3">머스키</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 파우더리 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn9" type="button" id="PO">
                                    <img src="../resources/assets/img/accords/powdery.jpg" class="notes">
                                    <h6 class="product-title text-center mt-3">파우더리</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 스모키 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn9" type="button" id="SM">
                                    <img src="../resources/assets/img/accords/smoky.jpg" class="notes">
                                    <h6 class="product-title text-center mt-3">스모키</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 소피 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn9" type="button" id="SO">
                                    <img src="../resources/assets/img/accords/soapy.jpg" class="notes">
                                    <h6 class="product-title text-center mt-3">소피</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 스파이시 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn9" type="button" id="SP">
                                    <img src="../resources/assets/img/accords/spicy.jpg" class="notes">
                                    <h6 class="product-title text-center mt-3">스파이시</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 우디 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn9" type="button" id="WO">
                                    <img src="../resources/assets/img/accords/woody.jpg" class="notes">
                                    <h6 class="product-title text-center mt-3">우디</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> <!--질문 9번 끝-->
                
                <!-- 질문 10번 불호 향조-->
                <div class="card mt-5" id="no10" style="display:none;">

                   
                    <!-- 결과보기 내용 -->
                    <div class="row gy-4">

                         <!-- 진행바 -->
                        <div class="progressbar-wrapper">
                            <ul class="progressbar">
                                <li class="active">Step 1</li>
                                <li class="active">Step 2</li>
                                <li class="active">Step 3</li>
                                <li class="active">Step 4</li>
                                <li class="active">Step 5</li>
                                <li class="active">Step 6</li>
                                <li class="active">Step 7</li>
                            	<li class="active_now">Step 8</li>
                            	<li>Finish</li>
                            </ul>
                        </div>

                        <div class="col-12 my-7">
                            <h6 class="text-center">싫어하는 향조를 <b>두 개</b> 골라주세요.</h6>
                        </div>
                        <!--아쿠아틱-->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn10" type="button" id="AQ">
                                    <img src="../resources/assets/img/accords/aquatic.jpg" class="notes">
                                    <h6 class="product-title text-center mt-3">아쿠아틱</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 아로마틱 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn10" type="button" id="AR">
                                    <img src="../resources/assets/img/accords/aromatic.jpg" class="notes">
                                    <h6 class="product-title text-center mt-3">아로마틱</h6>
                                </div>
                            </div>
                        </div>
                        <!--시트러스-->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn10" type="button" id="CI">
                                    <img src="../resources/assets/img/accords/citrus.jpg" class="notes">
                                    <h6 class="product-title text-center mt-3">시트러스</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 플로럴 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn10" type="button" id="FL">
                                    <img src="../resources/assets/img/accords/floral.jpg" class="notes">
                                    <h6 class="product-title text-center mt-3">플로럴</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 프루티 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn10" type="button" id="FR">
                                    <img src="../resources/assets/img/accords/fruity.jpg" class="notes">
                                    <h6 class="product-title text-center mt-3">프루티</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 레더 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn10" type="button" id="LE">
                                    <img src="../resources/assets/img/accords/leather.jpg" class="notes">
                                    <h6 class="product-title text-center mt-3">레더</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 머스키 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn10" type="button" id="MU">
                                    <img src="../resources/assets/img/accords/musky.jpg" class="notes">
                                    <h6 class="product-title text-center mt-3">머스키</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 파우더리 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn10" type="button" id="PO">
                                    <img src="../resources/assets/img/accords/powdery.jpg" class="notes">
                                    <h6 class="product-title text-center mt-3">파우더리</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 스모키 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn10" type="button" id="SM">
                                    <img src="../resources/assets/img/accords/smoky.jpg" class="notes">
                                    <h6 class="product-title text-center mt-3">스모키</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 소피 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn10" type="button" id="SO">
                                    <img src="../resources/assets/img/accords/soapy.jpg" class="notes">
                                    <h6 class="product-title text-center mt-3">소피</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 스파이시 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn10" type="button" id="SP">
                                    <img src="../resources/assets/img/accords/spicy.jpg" class="notes">
                                    <h6 class="product-title text-center mt-3">스파이시</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 우디 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn10" type="button" id="WO">
                                    <img src="../resources/assets/img/accords/woody.jpg" class="notes">
                                    <h6 class="product-title text-center mt-3">우디</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> <!--질문 10번 끝-->
                
                <!-- 질문 11번 불호 향조 (2) -->
                <div class="card mt-5" id="no11" style="display:none;">

                   
                    <!-- 결과보기 내용 -->
                    <div class="row gy-4">

                         <!-- 진행바 -->
                        <div class="progressbar-wrapper">
                            <ul class="progressbar">
                                <li class="active">Step 1</li>
                                <li class="active">Step 2</li>
                                <li class="active">Step 3</li>
                                <li class="active">Step 4</li>
                                <li class="active">Step 5</li>
                                <li class="active">Step 6</li>
                                <li class="active">Step 7</li>
                            	<li class="active_now">Step 8</li>
                            	<li>Finish</li>
                            </ul>
                        </div>

                        <div class="col-12 my-7">
                            <h6 class="text-center">싫어하는 향조를 <b>두 개</b> 골라주세요.</h6>
                        </div>
                        <!--아쿠아틱-->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn11" type="button" id="AQ">
                                    <img src="../resources/assets/img/accords/aquatic.jpg">
                                    <h6 class="product-title text-center mt-3">아쿠아틱</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 아로마틱 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn11" type="button" id="AR">
                                    <img src="../resources/assets/img/accords/aromatic.jpg">
                                    <h6 class="product-title text-center mt-3">아로마틱</h6>
                                </div>
                            </div>
                        </div>
                        <!--시트러스-->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn11" type="button" id="CI">
                                    <img src="../resources/assets/img/accords/citrus.jpg">
                                    <h6 class="product-title text-center mt-3">시트러스</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 플로럴 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn11" type="button" id="FL">
                                    <img src="../resources/assets/img/accords/floral.jpg">
                                    <h6 class="product-title text-center mt-3">플로럴</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 프루티 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn11" type="button" id="FR">
                                    <img src="../resources/assets/img/accords/fruity.jpg">
                                    <h6 class="product-title text-center mt-3">프루티</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 레더 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn11" type="button" id="LE">
                                    <img src="../resources/assets/img/accords/leather.jpg">
                                    <h6 class="product-title text-center mt-3">레더</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 머스키 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn11" type="button" id="MU">
                                    <img src="../resources/assets/img/accords/musky.jpg">
                                    <h6 class="product-title text-center mt-3">머스키</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 파우더리 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn11" type="button" id="PO">
                                    <img src="../resources/assets/img/accords/powdery.jpg">
                                    <h6 class="product-title text-center mt-3">파우더리</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 스모키 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn11" type="button" id="SM">
                                    <img src="../resources/assets/img/accords/smoky.jpg">
                                    <h6 class="product-title text-center mt-3">스모키</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 소피 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn11" type="button" id="SO">
                                    <img src="../resources/assets/img/accords/soapy.jpg">
                                    <h6 class="product-title text-center mt-3">소피</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 스파이시 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn11" type="button" id="SP">
                                    <img src="../resources/assets/img/accords/spicy.jpg">
                                    <h6 class="product-title text-center mt-3">스파이시</h6>
                                </div>
                            </div>
                        </div>
                        <!-- 우디 -->
                        <div class="col-3 mt-5 image">
                            <div class="product-card-01">
                                <div class="product-media-hover btn11" type="button" id="WO">
                                    <img src="../resources/assets/img/accords/woody.jpg">
                                    <h6 class="product-title text-center mt-3">우디</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> <!--질문 11번 끝-->

                
                <!-- 버튼12 취향테스트 마치기 페이지-->
            	<div class="card mt-5" id="no12" style="display: none;">
            		<!-- 마치기 진행바 -->
                    <div class="progressbar-wrapper">
                        <ul class="progressbar">
                            <li class="active">Step 1</li>
                            <li class="active">Step 2</li>
                            <li class="active">Step 3</li>
                            <li class="active">Step 4</li>
                            <li class="active">Step 5</li>
                            <li class="active">Step 6</li>
                            <li class="active">Step 7</li>
                            <li class="active">Step 8</li>
                            <li class="active_now">Finish</li>
                        </ul>
                    </div>
                    
                    <!-- 제출하기 버튼 -->
                    <div class="card-body" >
                        <div class="col-3">
                            <div class="col-12">
                                <h6 class="my-10 text-md-center">
                                	끝났습니다. 결과를 확인해주세요.</h6>
                            </div>
                            <!-- 선택지 -->
                            <div class="col-3">
                                <div class="product-card-01">
                                    <div class="card mt-5">
											<form method="post" action="resultAnalysis.do">
	                                    		<button class="btn btn-primary" type="submit" id="submitBtn"> 결과보기  </button>
	                                    		<input type="hidden" id="input0" name="result_id" value=""/>
	                                    		<input type="hidden" id="input1" name="gender" value=""/>
	                                    		<input type="hidden" id="input2" name="age" value=""/>
	                                    		<input type="hidden" id="input3" name="strength" value=""/>
	                                    		<input type="hidden" id="input4" name="lasting" value=""/>
	                                    		<input type="hidden" id="input5" name="season" value=""/>
	                                    		<input type="hidden" id="input6" name="mood" value=""/>
	                                    		<input type="hidden" id="input7" name="mood2" value=""/>
	                                    		<input type="hidden" id="input8" name="user_likes" value=""/>
	                                    		<input type="hidden" id="input9" name="user_likes2" value=""/>
	                                    		<input type="hidden" id="input10" name="user_hates" value=""/>
	                                    		<input type="hidden" id="input11" name="user_hates2" value=""/>
	                                    		<input type="hidden" id="input12" name="result_code" value=""/>
                                    		</form>
                                    </div>
                                </div>
                            </div>                                 
                        </div>
                    </div>
                </div> <!-- 마치기 페이지 끝-->
            </div>
        	<!-- End Section -->
        </main>
        <!-- End Main -->
        
        <!-- Footer -->
		<jsp:include page="/WEB-INF/views/hf/footer.jsp"></jsp:include>
		
</body>
</html>