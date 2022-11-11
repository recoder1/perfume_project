<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="zxx" class="dark">

<head>
    <!-- metas -->
<meta charset="utf-8">
<meta name="author" content="pxdraft" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="keywords" content="Crikon – Multipurpose Template" />
<meta name="description" content="Crikon – Multipurpose Template" />
<!-- title -->
<title>오드비 - Eau de Vie</title>
<!-- Favicon -->
<link rel="shortcut icon" href="../resources/assets/img/logo_black_icon.png" >
<!-- CSS Template -->
<link href="../resources/assets/css/theme.css" rel="stylesheet">

<!-- font : Google Noto Serif Korean -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&display=swap" rel="stylesheet">

<style>
    *{
    	font-family: 'Noto Serif KR', serif;
    }
    
    .dropdown{
    	margin-top: 50px;
    }
    
    .dropdown-item{
    	cursor: pointer;
    }
</style>
</head>

<body>
	    <!-- Skippy & Prload -->
	    <!-- skippy -->
	<a id="skippy" class="skippy visually-hidden-focusable overflow-hidden" href="#content">
	    <div class="container">
	        <span class="u-skiplink-text">Skip to main content</span>
	    </div>
	</a>
	<!-- End skippy -->
	<!-- Preload -->
	<div id="loading" class="loading-preloader">
	    <div class="spinner-border text-primary" role="status">
	        <span class="visually-hidden">Loading...</span>
	    </div>
	</div>
	<!-- End Preload -->
	    <!-- 
	    ========================
	        Wrapper 
	    ========================
	    -->
	<div class="wrapper">
	
	<!-- Header -->
	<jsp:include page="/WEB-INF/views/hf/header.jsp"></jsp:include>
	<!-- End Header -->
	
	<!-- Main -->
	<main>
		<!-- Page Title -->
	    <section class="py-3 bg-gray-100" style="height: 200px;"> <!-- style 추가-->
		    <div class="container" style="padding-top: 35px;">
		        <div class="row align-items-center">
		            <!-- col-1g-6 12로 변경, h1에 text-lg-start 클래스 삭제-->
		            <div class="col-lg-12 my-2">
		                <h1 class="m-0 h4 text-center" style="font-size: 2.5rem;">향수공부</h1>
		            </div>
		            <div class="col-lg-12 my-2" style="width: 100%">
		                <!-- ol태그 justify-content-lg-end 클래스 삭제 : 오른쪽정렬 > 가운데 정렬 / a 태그 컬러 변경-->
		                <ol class="breadcrumb dark-link m-0 small justify-content-center" style="text-align: center">
		                    <li class="breadcrumb-item"><a class="text-nowrap" href="../learn/2_terms.do" style="color: #9397AD;"><i class="bi bi-home"></i>기본 용어</a></li>
		                    <li class="breadcrumb-item"><a class="text-nowrap" href="../learn/2_notes.do" style="color: #9397AD;"><i class="bi bi-home"></i>향조</a></li>       
		                    <li class="breadcrumb-item"><a class="text-nowrap" href="../learn/2_houses.do" style="color: #9397AD;"><i class="bi bi-home"></i>하우스</a></li>       
		                </ol>
		            </div>
		        </div>
		    </div>
	    </section>
		<!--셀렉트박스 수정-->
		<div class="brand dropdown">
		    <a class="dropdown-toggle brand-select" href="#" data-bs-toggle="dropdown">하우스 선택</a>
		        <div class="dropdown-menu dropdown-menu-lg brand-one">
		            <div class="brand-big">
		                <ul class="list-unstyled">
		                    <!-- 한칸당 6개씩함... 가나다순 나열이 아니어서 정리 필요-->
		                    <li class="dropdown-item">전체보기</li>
		                    <li class="dropdown-item">Acqua di Parma</li>
		                    <li class="dropdown-item">Buly 1803</li>
		                    <li class="dropdown-item">By Kilian</li>
		                    <li class="dropdown-item">Byredo</li>
		                    <li class="dropdown-item">Creed</li>		         
		                </ul>
		            </div>
		            <div class="brand-big">
		                <ul class="list-unstyled">
		                	<li class="dropdown-item">Diptyque</li>
		                    <li class="dropdown-item">Frederic Malle</li>
		                    <li class="dropdown-item">Goutal</li>
		                    <li class="dropdown-item">Hermès</li>
		                    <li class="dropdown-item">Jo Loves</li>
		                    <li class="dropdown-item">Jo Malone</li>		                    
		                </ul>
		            </div>
		            <div class="brand-big">
		                <ul class="list-unstyled">
		                	<li class="dropdown-item">Le Labo</li>
		                    <li class="dropdown-item">Maison Francis Kurkdjian</li>
		                    <li class="dropdown-item">Malin+Goetz</li>
		                    <li class="dropdown-item">Santa Maria Novella</li>
		                    <li class="dropdown-item">Tom Ford</li>  
		                </ul>
		            </div>           
		        </div>
		</div> <!-- End Page Title -->    
		<!--
		    css에 추가
		
		    /*향수공부 브랜드 나열*/
		    .brand .dropdown-menu {
		        width: auto;
		    }
		
		    /*리스트 각각*/
		    .brand .dropdown-item {
		        width: 210px;
		        margin-right: 0;
		    }
		
		    /*리스트들의 큼직한 부위를 나눈 것*/
		    .brand-big {
		        width: 210px;
		        display: inline-block;
		        float: left;
		    }
		
		    /*하우스 선택 버튼*/
		    .brand-select {
		        margin-left: 20px;
		        padding: 10px 10px ;
		        border: 0.3px solid #c6d4cb;    /*색 나중에 정하기...*/
		        
		        text-align: center;
		
		    }
		
		    /*리스트의 젤 큰 테두리*/
		    .brand-one {
		        background-color: ghostwhite;   /*색 나중에 정하기...*/
		    }
		
		-->      
	   
		<!-- Section1 - Acqua di Parma -->
		<section class="section acqua-di-parma brand-story">
		    <div class="container">
		        <div class="row gy-4 align-items-center">
		            <div class="col-lg-6 pe-xl-12">
		                <h6 class="text-primary">이탈리아의 우아함을 일상속으로</h6>
		                <h3 class="h1 pb-3">Acqua di Parma</h3>
		                <p>1916년 이탈리아 바론 카를로 마그나 니가 파리, 런던, 뉴욕을 여행하던 중 향을 창조하여 성공하기로 결심한 순간부터 시작되었습니다.</p>
		                <p>현재 Acqua di Parma는 전통적인 이탈리아 장인 정신이 담긴 진정한 걸작을 생산하며 고급 브랜드 시장의 선두주자가 되었습니다.</p>
		                <p><b>"아쿠아 디 파르마는 향수 브랜드 그 이상입니다. 우리는 우리의 유산, 역사 및 가치를 매우 자랑스럽게 생각합니다. 또한 우리는 더 나은 미래를 지향하는 것도 잊지 않기 위해 노력하고 있습니다. <br/> Bringing style ― Italian style ― into life" </p>
		                <p> - Laura Burdese, Acqua di Parma 회장 겸 CEO</b></p>
		                <p> Acqua di Parma는 브랜드로서 확고한 신념을 가지고 있습니다. 단순함이 곧 우아함이며, 이는 이탈리아 우아함에 필수적이라는 것입니다. 핸드메이드 제작을 통해 오랜 시간 공들여 만든 것들로 영감을 불어넣어 줄 때, 불완전한 제품들은 진정한 형태를 갖춘 제품으로 탄생됩니다. </p>
		            </div>
		            <div class="col-lg-6">
		                <img src="../resources/assets/img/house/acqua ceo.jpg" title="" alt="사진">
		            </div>
		        </div>
		    </div>
		</section>
		<section class="section acqua-di-parma">
		    <div class="container">
		        <div class="row gy-4 align-items-center flex-row-reverse">
		            <div class="col-lg-6 ps-xl-12">
		                <h6 class="text-primary">Company Information</h6>
		                <h3 class="h1 pb-3">Acqua di Parma</h3>
		                <p>설립연도 : 1916</p>
		                <p>회장 겸 CEO : Laura Burdese</p>
		                <p>본사 : Via Ripamonti, 99,20141 Milan ― Italy</p>
		                <p>대표작 : 콜로니아(Colonia), 블루 메디테라네오 미르토 디 파나레아(Blu Mediterraneo Mirto di Panarea) </p>
		                <p>웹사이트 : https://www.acquadiparma.com/ </p>
		            </div>
		            <div class="col-lg-6">
		                <img src="../resources/assets/img/house/acqua colonia.jpg" title="" alt="사진">
		            </div>
		        </div>
		    </div>
		</section> <!-- End Section -->
		
		<!-- Section2 - Buly 1803 -->
		<section class="section buly-1803">
		    <div class="container">
		        <div class="row gy-4 align-items-center">
		            <div class="col-lg-6 pe-xl-12">
		                <h6 class="text-primary">19세기 유러피언 쿠튀르 뷰티의 전통을 고집하는</h6>
		                <h3 class="h1 pb-3">Buly 1803</h3>
						<p>1803년 파리 생 오노레 가에서, 약사이자 화학자이자 조향사였던 장 뱅상 불리가 운영하는 뷰티샵에서부터 시작되었습니다.</p>
		                <p>초창기 그는 특별한 식초 화장수를 개발하여 판매하면서 많은 사랑을 받았고, 19세기 뷰티와 향에 조예가 깊었던 조제핀 드 보아 르네와 그의 남편 나폴레옹의 영향으로 향에 대한 관심이 증폭되었고, 조제핀이 들여온 새로운 품종의 꽃들과 불리만의 특별한 기술들 덕분에 불리의 향수는 더욱더 유명세를 얻게 됩니다.</p>
						<p>발자크 소설에도 언급될 만큼 유명했던 장 뱅상 불리의 정신이 되살아난 건 2014년 파리의 람단 투하미, 빅투아르 드 타야크 부부에 의해서였습니다. 두 사람은 19세기가 뷰티의 황금기였다고 여겨, 이 시절에 개발된  뷰티 레시피를 중심으로 21세기식 화장품을 만드는 데 착수했습니다.</p>
		                <p>2019년, 루브르의 위대한 유산을 새로운 차원으로 경험하는 기회를 만들기 위해, ‘불리 1803 X 루브르 뮤지엄 콜라보레이션’ 프로젝트가 추진되었습니다. 세계적인 조향사 8명이 각 작품의 예술적 가치를 가장 잘 구현할 수 있는 최적의 향을 배합했습니다. 향기라는 또 다른 작품으로 탄생한 루브르 에디션은 전세계 애호가들의 뜨거운 사랑을 받고 있습니다.</p>
		                <p>불리 오 트리쁠 향수의 큰 강점 중 하나는 워터 베이스라는 점입니다. 알코올 베이스의 향수들에 비해 피부 자극도가 현저히 낮습니다.  </p>
		            </div>
		            <div class="col-lg-6">
		                <img src="../resources/assets/img/house/buly old store.jpg" title="" alt="사진">
		            </div>
		        </div>
		    </div>
		</section>
		<section class="section buly-1803">
		    <div class="container">
		        <div class="row gy-4 align-items-center flex-row-reverse">
		            <div class="col-lg-6 ps-xl-12">
		                <h6 class="text-primary">Company Information</h6>
		                <h3 class="h1 pb-3">Buly 1803</h3>
		                <p>최초설립연도 : 1803</p>
		                <p>최초설립자 : Jean-Vincent Bully </p>
		                <p>재창립연도 : 2014 </p>
		                <p>재창립자 : Ramdane Touhami, Victoire de Taillac-Touhami </p>
		                <p>본사 : 6 rue Bonaparte, 75006, Paris ― France </p>
		                <p>대표작 : 목욕하는 여인(La baigneuse), 공원에서의 대화(Conversation dans un Parc) </p>
		                <p>웹사이트 : https://buly1803.com/ </p>
		                
		            </div>
		            <div class="col-lg-6">
		                <img src="../resources/assets/img/house/buly bottle.jpg" title="" alt="사진">
		            </div>
		        </div>
		    </div>
		</section> <!-- End Section -->
		
		<!-- Section3 - By Kilian -->
		<section class="section by-kilian">
		    <div class="container">
		        <div class="row gy-4 align-items-center">
		            <div class="col-lg-6 pe-xl-12">
		                <h6 class="text-primary">꼬냑 명가 헤네시, 향수를 예술로 재창조해내다</h6>
		                <h3 class="h1 pb-3">By Kilian</h3>
						<p>킬리안은 킬리안 헤네시가 2007년 런칭한 럭셔리 향수 브랜드입니다. 럭셔리 분야의 선구자인 코냑을 만드는 집안 ‘헤네시(Henessy)’의 상속자로 태어난 킬리안은 선조들을 따라 새로운 럭셔리 브랜드를 만드는 것이 매우 가치 있는 일이라 믿고 가문의 전통을 이을 만한 새로운 도전인 자신의 이름을 건 브랜드를 선보이게 됩니다.</p>
						<p>우아함과 화려함의 완벽한 균형을 추구하는 브랜드 킬리안은 그의 독특한 개성과 우아한 기품을 다양하게 갖추고 있습니다. 그의 어린 시절 경험 중 빼놓을 수 없는 곳이 바로 코냑에 있는 그의 가족 소유의 저장고입니다. 킬리안의 대부분의 향수들에는 이런 알코올에 섞인 슈가 그리고 코냑을 숙성시키는 나무통을 회상케 하는 어린 시절의 추억들이 담겨 있습니다.</p>
						<p><b>"저는 조향 기술을 그 근본으로 돌려놓고 싶습니다. 향수의 진실로 되돌아가는 것이죠. 19세기 말과 20세기 초에 향수를 제조했던 방식을 재현하되, 동시에 현대적인 반전을 주는 것입니다."</p>
						<p>- Kilian Hennessy, By Kilian 창립자</b></p>
		            </div>
		            <div class="col-lg-6">
		                <img src="../resources/assets/img/house/kilian founder1.jpg" title="" alt="사진">
		            </div>
		        </div>
		    </div>
		</section>
		<section class="section by-kilian">
		    <div class="container">
		        <div class="row gy-4 align-items-center flex-row-reverse">
		            <div class="col-lg-6 ps-xl-12">
		                <h6 class="text-primary">Company Information</h6>
		                <h3 class="h1 pb-3">By Kilian</h3>
		                <p>설립연도 : 2007</p>
		                <p>설립자 : Kilian Hennessy </p>
		                <p>본사 : 48 Rue Cambon, 75001 Paris ― France </p>
		                <p>대표작 : 굿 걸 곤 배드(Good Girl Gone Bad), 엔젤스 셰어(Angel's Share) </p>
		                <p>웹사이트 : https://www.bykilian.com/ </p>
		                
		            </div>
		            <div class="col-lg-6">
		                <img src="../resources/assets/img/house/kilian bottle.jpg" title="" alt="사진">
		            </div>
		        </div>
		    </div>
		</section> <!-- End Section -->
		
		<!-- Section4 - Byredo -->
		<section class="section byredo">
		    <div class="container">
		        <div class="row gy-4 align-items-center">
		            <div class="col-lg-6 pe-xl-12">
		                <h6 class="text-primary">북유럽의 미니멀리즘을 그대로 담은 향수</h6>
		                <h3 class="h1 pb-3">BYREDO</h3>
						<p>바이레도는 2006년 벤 고햄이라는 조향사에 의해 스톡홀름에서 출발한 향수 브랜드 입니다. ‘향기에 의해’를 뜻하는 ‘By Redolence’를 간단하게 줄여 그 이름이 탄생했을 만큼 바이레도의 제품들은 순수한 향기에 충실합니다. </p>
						<p>스웨덴에서 태어난 벤 고햄은 인도인 어머니와 캐나다인 아버지 사이에서 다양한 경험과 풍부한 감성을 물려 받았으며, 세계적인 조향사 피에르 울프를 만나면서 조향사로의 진로를 결정하게 됩니다.</p>	
						<p>바이레도에 숨어있는 향기 비밀은 명쾌하고 심플합니다. 향수의 기본이 되는 원료의 수를 제한해 각각의 향에 명확한 정체성과 존재의 이유를 부여한 것이죠. 혼합방법 역시 최대한 절제해 원료가 가진 고유의 향을 가장 잘 살릴 수 있도록 고안했습니다. 바이레도의 향수들은 모두 유럽에서 제조되고, 향수에 들어가는 모든 성분과 원료는 바이레도만을 위해 특별히 개발됩니다.</p>
						<p><b>"아름다움이라는 것은 사람들에게 많은 것을 의미할 수 있습니다. 사람들이 그들 자신이 되도록 영감을 주는 것, 그것이 우리가 할 일입니다."</p>
						<p>- Ben Gorham, BYREDO 창립자</b></p>
		            </div>
		            <div class="col-lg-6">
		                <img src="../resources/assets/img/house/byredo founder.jpg" title="" alt="사진">
		            </div>
		        </div>
		    </div>
		</section>
		<section class="section byredo">
		    <div class="container">
		        <div class="row gy-4 align-items-center flex-row-reverse">
		            <div class="col-lg-6 ps-xl-12">
		                <h6 class="text-primary">Company Information</h6>
		                <h3 class="h1 pb-3">BYREDO</h3>
		                <p>설립연도 : 2006</p>
		                <p>설립자 : Ben Gorham </p>
		                <p>본사 : Stockholm, 103 61 ― Sweden</p>
		                <p>대표작 : 블랑쉬(Blanche), 모하비 고스트(Mojave Ghost) </p>
		                <p>웹사이트 : https://www.byredo.com/ </p>
		                
		            </div>
		            <div class="col-lg-6">
		                <img src="../resources/assets/img/house/byredo bottle.jpg" title="" alt="사진">
		            </div>
		        </div>
		    </div>
		</section> <!-- End Section -->
		
		<!-- Section5 - Creed -->
		<section class="section creed">
		    <div class="container">
		        <div class="row gy-4 align-items-center">
		            <div class="col-lg-6 pe-xl-12">
		                <h6 class="text-primary">세기를 초월하는 조향의 유산</h6>
		                <h3 class="h1 pb-3">Creed</h3>
						<p>1760년부터 시작된 크리드의 역사는 올해로 262년이 되었습니다. 크리드의 창립자 제임스 헨리 크리드는 영국 런던에 '하우스 오브 크리드'사를 설립했습니다. 본래는 맞춤형 양복점으로 시작하였다가 1781년부터 킹 조지 3세의 명령으로 인해 향수를 만들기 시작했습니다. </p> 
						<p>최고급 원료만을 사용하고 수작업으로 향수를 만든다는 이야기가 전해지자 명성을 얻게 된 하우스 오브 크리드는 나폴레옹 3세와 유지니 황후, 헝가리왕족, 엘리자베스 여왕을 비롯해 많은 유럽 왕실의 찬사를 받기 시작했습니다. 이렇듯 설립 초기에는 상류층에서만 비밀스럽게 누려온 크리드의 독창적인 향기는 그 작품성을 인정받아 왕실들의 공식 향수업체로 지정되며 대중에게도 알려지고, 지금까지 많은 사랑을 받고 있습니다.</p>
						<p>1854년, 나폴레옹 3세와 유지니 황후에 의해 크리드의 가문 전체는 프랑스로 이주하게 되고 현재까지도 프랑스에 자리를 잡고 있습니다.</p>
						<p>크리드의 또 다른 인기 요소는 유명인들의 선택으로 만들어지는 '크리드-오더메이드' 방식입니다. 해당 방식은 주문자의 특성과 성향에 맞는 특별한 생산방식으로, 마스터 퍼퓨머와 2~3회 가량 인터뷰를 진행 후 이를 통해 원하는 성향이나 콘셉트를 직접 지정할 수 있게 하는 것입니다.</p>
		            </div>
		            <div class="col-lg-6">
		                <img src="../resources/assets/img/house/creed history.jpg" title="" alt="사진">
		            </div>
		        </div>
		    </div>
		</section>
		<section class="section creed">
		    <div class="container">
		        <div class="row gy-4 align-items-center flex-row-reverse">
		            <div class="col-lg-6 ps-xl-12">
		                <h6 class="text-primary">Company Information</h6>
		                <h3 class="h1 pb-3">Creed</h3>
		                <p>설립연도 : 1760 </p>
		                <p>설립자 : James Henry Creed </p>
		                <p>최고경영자 : Oliver Creed</p>
		                <p>본사 : 45 W 25th Street, 7th Floor, 10010 New York ― United States </p>
		                <p>대표작 : 어벤투스(Aventus), 그린 아이리시 트위드(Green Irish Tweed) </p>
		                <p>웹사이트 : https://creedboutique.com/ </p>
		                
		            </div>
		            <div class="col-lg-6">
		                <img src="../resources/assets/img/house/creed bottle1.jpg" title="" alt="사진">
		            </div>
		        </div>
		    </div>
		</section> <!-- End Section -->
		
		<!-- Section6 - Diptyque -->
		<section class="section diptyque">
		    <div class="container">
		        <div class="row gy-4 align-items-center">
		            <div class="col-lg-6 pe-xl-12">
		                <h6 class="text-primary">향수는 예술이며, 예술은 여정이다</h6>
		                <h3 class="h1 pb-3">Diptyque</h3>
						<p>딥티크는 친구 사이였던 세 명의 예술인들이 창립한 하우스입니다. 무대장식과 연극을 사랑했던 이브 쿠에랑, 인테리어 디자이너였던 크리스티앙 고트로 그리고 화가였던 데스몬드 녹스-리트. 1961년 이들이 의기투합해 만든 파리의 작은 패브릭 부티크가 바로 딥티크의 시작이었습니다.</p>
						<p>현재의 딥티크는 향수 브랜드이지만 딥티크에서 본격적으로 향수 사업에 뛰어든 건 사업을 개시한지 무려 15년 뒤였습니다. 그들은 재정난을 극복하기 위해 패브릭에서 오브제, 이후에는 향초 등 새로운 주력상품에 계속 도전하던 중 1968년 드디어 최초의 딥티크 향수인 로(L'eau)를 출시합니다. 이후 1973년, 1975년에 새로이 출시한 향수들까지 줄줄이 성공을 거두자 그들은 향 사업에 본격적으로 전념하기로 결심합니다.</p>
						<p><strong>“딥티크와 일한 경험은 다른 향수 회사와 일했을 때와 전혀 달랐습니다. 아무 제약 없이 자유롭게, 저만의 방식대로 만들 수 있었죠. 딥티크는 향수계의 ‘트렌드세터’라기보다 일종의 ‘혁신가’로 봐야 합니다.”</p>
						<p>- Fabrice Pellegrin, Diptyque 조향사</strong></p>
		            </div>
		            <div class="col-lg-6">
		                <img src="../resources/assets/img/house/diptyque founders.jpg" title="" alt="사진">
		            </div>
		        </div>
		    </div>
		</section>
		<section class="section diptyque">
		    <div class="container">
		        <div class="row gy-4 align-items-center flex-row-reverse">
		            <div class="col-lg-6 ps-xl-12">
		                <h6 class="text-primary">Company Information</h6>
		                <h3 class="h1 pb-3">Diptyque</h3>
		                <p>설립연도 : 1961</p>
		                <p>설립자 : Christiane Gautrot, Desmond Knox-Leet and Yves Coueslant </p>
		                <p>최고경영자 : Julien Gommichon </p>
		                <p>본사 : 34 Boulevard Saint-Germain, 75005 Paris ― France </p>
		                <p>대표작 : 플뢰르 드 뽀(Fleur de Peau), 도 손(Do Son) </p>
		                <p>웹사이트 : https://www.diptyqueparis.com/en_us/</p>
		                
		            </div>
		            <div class="col-lg-6">
		                <img src="../resources/assets/img/house/diptyque bottles.jpg" title="" alt="사진">
		            </div>
		        </div>
		    </div>
		</section> <!-- End Section -->
		
		<!-- Section7 - Frederic Malle -->
		<section class="section frederic-malle">
		    <div class="container">
		        <div class="row gy-4 align-items-center">
		            <div class="col-lg-6 pe-xl-12">
		                <h6 class="text-primary">향수 출판사의 편집장, 조향의 거장</h6>
		                <h3 class="h1 pb-3">Frederic Malle</h3>
						<p>에디션 드 퍼퓸(Editions de Parfums), 프랑스어로 향수 출판사를 뜻합니다. 도미니크 로피옹, 장 클로드 엘레나, 피에르 부르댕, 올리비아 지아코베티를 비롯해 톱 클래스 조향사 13인으로 구성된 이 향기로운 출판사의 지휘자는 '천재 조향사'라 불리는 프레데릭 말. 출판사 대표가 소속 작가에게 집필 기회를 제공하는 것처럼 프레데릭 말은 현존하는 최고의 조향사들에게 향기 제조의 자율권을 부여합니다.</p>
						<p>프레데릭 말은 사업가, 예술가 및 조향사로 구성된 프랑스 가정에서 태어났습니다. 그의 할아버지 세르주 헤프틀러 루이쉐는 크리스찬 디올 향수의 설립자이며, 프레데릭 말의 어머니에게 이후 경영권을 넘겨주었습니다. 프레데릭 말은 스스로 자신의 가문의 3세대 향수 전문가라 표현하고 있으며 향수 제조에 있어 세계적인 권위자입니다.</p>
						<p><b>"프레데릭 말은 아무것도 감추고 있지 않다고 자신 있게 말할게요. 많은 향수 회사에서 자사 향수에 대해 말할 때 화려한 이미지를 보여줘야 한다고 느껴요. 하지만 진짜 아름다움은 향수병 속에 있어야죠. 우리는 원료와 아티스트에 투자하는 예산과 시간에 상한선을 두지 않습니다."</p>
						<p>- Frédéric Malle, Frederic Malle 창립자 겸 CEO </b></p>
		            </div>
		            <div class="col-lg-6">
		                <img src="../resources/assets/img/house/frederic founder.jpg" title="" alt="사진">
		            </div>
		        </div>
		    </div>
		</section>
		<section class="section frederic-malle">
		    <div class="container">
		        <div class="row gy-4 align-items-center flex-row-reverse">
		            <div class="col-lg-6 ps-xl-12">
		                <h6 class="text-primary">Company Information</h6>
		                <h3 class="h1 pb-3">Frederic Malle</h3>
		                <p>설립연도 : 2000</p>
		                <p>설립자 겸 최고경영자: Frederic Malle </p>		             
		                <p>본사 : 37, rue de Grenelle,75007 Paris ― France</p>
		                <p>대표작 : 포트레이트 오브 어 레이디(Portrait of a Lady), 뮤스크 라바줴(Musc Ravageur)</p>
		                <p>웹사이트 : https://www.fredericmalle.com/ </p>
		                
		            </div>
		            <div class="col-lg-6">
		                <img src="../resources/assets/img/house/frederic bottle.jpg" title="" alt="사진">
		            </div>
		        </div>
		    </div>
		</section> <!-- End Section -->
		
		<!-- Section8 - Goutal -->
		<section class="section goutal">
		    <div class="container">
		        <div class="row gy-4 align-items-center">
		            <div class="col-lg-6 pe-xl-12">
		                <h6 class="text-primary">순수함과 사랑스러움의 대명사</h6>
		                <h3 class="h1 pb-3">Goutal Paris</h3>
						<p>1981년 여성 조향사 아닉 구딸이 프랑스 파리에서 시작한 하우스입니다. 강렬하고 자극적인 패션 하우스 향수들이 유행을 지배하던 시기에, 기존의 향수들과는 전혀 다른 섬세하고도 자연에 가까운 향기, 그리고 아닉 구딸 자신만의 감성과 본연의 우아함을 담아내며 프랑스 니치향수계를 선도했다는 평가를 받고 있습니다. </p>
						<p>플로럴 계열을 많이 사용하며 여름에 어울리는 가볍고 산뜻한 향의 제품이 주를 이루며 레오나르도 디카프리오, 산드라 블록, 니콜 키드먼, 마돈나, 마이클 더글러스, 베네딕트 컴버배치 등 할리우드 배우들이 사랑한 향수 브랜드로도 잘 알려져 있습니다. 국내에서도 많은 스타들이 구딸 향수에 대한 애정을 밝힌 바 있죠.</p>
						<p>창립자 아닉 구딸은  1945년 프랑스 남부지방인 엑상프로방스에서 태어나 피아노 연주, 패션 모델, 앤티크 딜링 등 다재다능한 예술적 면모를 지닌 신여성이었습니다. 그녀는 우연히 방문한 그라스 지방에서 영감을 얻고, 향의 세계에 입문하게 됩니다.</p>
						<p>1999년 아닉 구딸의 별세 이후 현재는 그녀의 딸 카밀 구딸(Camille Goutal)과 그녀의 오랜 파트너이자 친구였던 이자벨 도옌(Isabelle Doyen)이 함께 조향을 이어가고 있습니다.</p>
		            </div>
		            <div class="col-lg-6">
		                <img src="../resources/assets/img/house/goutal founder.jpg" title="" alt="사진">
		            </div>
		        </div>
		    </div>
		</section>
		<section class="section goutal">
		    <div class="container">
		        <div class="row gy-4 align-items-center flex-row-reverse">
		            <div class="col-lg-6 ps-xl-12">
		                <h6 class="text-primary">Company Information</h6>
		                <h3 class="h1 pb-3">Goutal Paris</h3>
		                <p>설립연도 : 1981</p>
		                <p>설립자 : Annick Goutal </p>
		                <p>최고경영자 : Camille Goutal</p>
		                <p>본사 : 16 RUE DE BELLECHASSE, 75007 PARIS ― France</p>
		                <p>대표작 : 로즈 폼퐁(Rose Pompon), 쁘띠 쉐리(Petite Chérie)</p>
		                <p>웹사이트 : https://www.goutalparis.com/ </p>
		                
		            </div>
		            <div class="col-lg-6">
		                <img src="../resources/assets/img/house/goutal bottle.jpg" title="" alt="사진">
		            </div>
		        </div>
		    </div>
		</section> <!-- End Section -->
		
		<!-- Section10 - Hermès -->
		<section class="section hermes">
		    <div class="container">
		        <div class="row gy-4 align-items-center">
		            <div class="col-lg-6 pe-xl-12">
		                <h6 class="text-primary">명품이라는 이름, 그 이상의 가치</h6>
		                <h3 class="h1 pb-3">Hermès</h3>
						<p>럭셔리 브랜드의 대명사와도 같은 에르메스는 오래된 향수 하우스이기도 합니다. 패션 브랜드 에르메스는 1837년 파리에서 시작되었으나, 에르메스 최초의 향수는 1951년에야 출시된 조향사 에드몽 루드니츠카의  Eau d’Hermes입니다. 이후 1961년 두번째 향수인 Calèche를, 1970년 세 번째 향수인 Équipage를 출시합니다.</p>
						<p>에르메스 향수의 황금기는 2004년 장 클로드 엘레나가 에르메스사 전속 조향사로 오게 되면서 시작되는데, 에르메스는 오래된 역사의 여러 럭셔리 브랜드 중에서도 최초로 전속 조향사를 둔 기업입니다. </p>
						<p>엘레나는 조향사 집안에서 태어나 어려서부터 아버지가 향수를 만드는 것을 보고 자랐습니다. 향수학교에서 전문적인 조향 공부를 마쳤고, 현재 그는 소수의 원료를 가지고 간결한 방법으로 조화로운 향을 찾아내는 사람으로 알려져 있습니다. 에르메스의 조향사가 된 엘레나는 떼르 데르메스(Terre D'Hermès), 에르메상스 컬렉션, 쟈르뎅(jardin) 컬렉션 등 수많은 명작들을 지금까지 출시하고 있습니다.</p>
						<p>"우리는 유행 대신에, 전통과 장인에 대한 클래식한 가치에 바탕을 둔 동시에 모던함을 추구합니다. 예를 들면 에르메스는 1951년부터 향수를 만들기 시작했는데 지금까지 만든 모든 향수가 여전히 판매되고 있죠. 대부분 스무 살이 되면 자기만의 첫 향수를 삽니다. 이후 다양한 향수를 시도하다가 스무 살 때 뿌렸던 향을 다시 찾고 싶을 때, 그게 에르메스였다면 그 향수를 다시 찾을 수 있습니다. 난 이것이 에르메스 향수가 지닌 힘이라고 생각합니다."</p>
						<p>- Jean-Claude Ellena, Hermès 조향사</p>
		            </div>
		            <div class="col-lg-6">
		                <img src="../resources/assets/img/house/hermes perfumer.jpg" title="" alt="사진">
		            </div>
		        </div>
		    </div>
		</section>
		<section class="section hermes">
		    <div class="container">
		        <div class="row gy-4 align-items-center flex-row-reverse">
		            <div class="col-lg-6 ps-xl-12">
		                <h6 class="text-primary">Company Information</h6>
		                <h3 class="h1 pb-3">Hermès</h3>
		                <p>설립연도 : 1837 </p>
		                <p>설립자 : Thierry Hermès </p>
		                <p>최고경영자 : Olivier Fournier</p>
		                <p>본사 : 24 Rue du Faubourg Saint-Honore, Paris ― France</p>
		                <p>대표작 : 떼르 데르메스(Terre D'Hermès), 쟈르뎅 수르 닐(Un Jardin Sur Le Nil)</p>
		                <p>웹사이트 : https://www.hermes.com/kr/ko/ </p>
		                
		            </div>
		            <div class="col-lg-6">
		                <img src="../resources/assets/img/house/hermes bottle1.jpg" title="" alt="사진">
		            </div>
		        </div>
		    </div>
		</section> <!-- End Section -->
		
		<!-- Section11 - Jo Loves -->
		<section class="section jo-loves">
		    <div class="container">
		        <div class="row gy-4 align-items-center">
		            <div class="col-lg-6 pe-xl-12">
		                <h6 class="text-primary">천재 조향사 조 말론의 새로운 이름</h6>
		                <h3 class="h1 pb-3">Jo Loves</h3>
						<p>천재적인 조향사 조 말론 CBE(대영제국 훈장)는 2006년 암 투병을 위해 '조 말론 런던'사를 떠났다가 긴 투병생활을 마치고 2011년 영국 런던에서 새로운 그녀만의 브랜드를 런칭했습니다. 그것이 바로 '조 러브스'로, 개인의 취향이나 기준에 따라 호불호가 갈리는 향수가 아닌 기호와 시대를 뛰어넘는 향수를 만들겠다는 결심으로부터 시작됩니다. 사실 대중에게는 '조 말론'이 조향사의 이름보다는 향수 하우스의 이름으로 더 익숙한데, "조 말론에는 조 말론이 없다"는 우스갯소리가 생기게 된 것이죠.</p>
						<p>조 러브스라는 하우스의 이름은 조 말론이 지금까지 조향해온 모든 향을 그 자리에 있게 한 추억들과 경험들을 의미합니다.</p>
						<p><b>"이 새로운 브랜드는 추억에 관한 것이며, 그것은 내가 현재 서 있는 위치이자 '나'라는 사람 그 자체입니다."</p>
						<p>- Jo Malone, Jo Loves 창립자</b></p>
						<p>조 러브스의 모든 향은 조 말론 CBE의 개인적인 추억과 소중한 기억에서 영감을 얻어 제작되었습니다. 브랜드 첫 향수이자 글로벌 베스트셀러 제품인 '포멜로'는 그의 5년 간의 투병생활 뒤, 잃어버린 후각과 창의력을 되찾기 위해 방문한 휴가지에서 영감을 얻었다고 합니다.</p>
		            </div>
		            <div class="col-lg-6">
		                <img src="../resources/assets/img/house/joloves founder.jpeg" title="" alt="사진">
		            </div>
		        </div>
		    </div>
		</section>
		<section class="section jo-loves">
		    <div class="container">
		        <div class="row gy-4 align-items-center flex-row-reverse">
		            <div class="col-lg-6 ps-xl-12">
		                <h6 class="text-primary">Company Information</h6>
		                <h3 class="h1 pb-3">Jo Loves</h3>
		                <p>설립연도 : 2011</p>
		                <p>설립자 : Jo Malone</p>
		                <p>최고경영자 : Gary Willcox </p>
		                <p>본사 : 42 Elizabeth Street London ― England</p>
		                <p>대표작 : 조 바이 조 러브스(Jo by Jo Loves), 망고 타이 라임(Mango Thai Lime)</p>
		                <p>웹사이트 : https://www.joloves.com/ </p>
		                
		            </div>
		            <div class="col-lg-6">
		                <img src="../resources/assets/img/house/joloves bottle.jpg" title="" alt="사진">
		            </div>
		        </div>
		    </div>
		</section> <!-- End Section -->
		
		<!-- Section12 - Jo Malone -->
		<section class="section jo-malone">
		    <div class="container">
		        <div class="row gy-4 align-items-center">
		            <div class="col-lg-6 pe-xl-12">
		                <h6 class="text-primary">자연에서 모티브를 얻어 원료 본연의 향을 살리다</h6>
		                <h3 class="h1 pb-3">Jo Malone London</h3>
						<p>런던의 조향사 조 말론이 1994년 창립한, 대중적인 하우스입니다. 자연을 표방하는 자연스러운 느낌의 고급스러운 향수 컬렉션들로 전세계인의 사랑을 받고 있습니다.</p>
						<p>조 말론 런던의 창립자이자 조향사였던 조 말론은 천부적인 후각의 소유자입니다. 그녀의 후각 수준은 암 세포의 냄새까지 구별해낼 수 있을 정도였다고 합니다. 하지만 이러한 재능을 찾기까지 쉽지만은 않은 길이 존재했습니다.</p>
						<p>불우한 유년시절을 보내고 런던으로 이사한 조 말론은 피부미용과 화장품 판매 업계에 종사하게 되었는데, 찾아오는 고객들에게 감사의 표시로 목욕용 오일을 작은 병에 담아 선물했습니다. 몇 년 후 크리스마스에는 오일을 수백 병 만들어야 할 정도로 입소문이 퍼졌습니다. 이를 지켜본 남편 개리 월콕스는 조 말론의 재능으로 사업을 펼쳐볼 것을 제안합니다. </p>
						<p>타 브랜드에서 잘 사용하지 않는 얼그레이, 블랙베리 등의 독특한 향료를 조합해 기존의 향수들과 차별화를 이루었고, 어렵고 추상적인 향수명 대신에 향료들의 이름을 사용하여 직관적인 향수명을 붙였습니다.</p>
						<p>뉴욕 진출에도 성공하는 등 사업이 커지자 에스티로더사에 조 말론 런던을 매각하고 이후에는 크리에이티브 디렉터로 활동했으나, 2006년에는 자신의 모든 지분을 에스티로더에 매각합니다. 이후 긴 암투병 끝에 2011년, 다른 이름으로 그녀만의 새로운 브랜드를 다시 런칭하게 됩니다.</p>
		            </div>
		            <div class="col-lg-6">
		                <img src="../resources/assets/img/house/jomalone store.jpg" title="" alt="사진">
		            </div>
		        </div>
		    </div>
		</section>
		<section class="section jo-malone">
		    <div class="container">
		        <div class="row gy-4 align-items-center flex-row-reverse">
		            <div class="col-lg-6 ps-xl-12">
		                <h6 class="text-primary">Company Information</h6>
		                <h3 class="h1 pb-3">Jo Malone London</h3>
		                <p>설립연도 : 1993</p>
		                <p>설립자 : Jo Malone</p>
		                <p>최고경영자 : Bill Olios</p>
		                <p>본사 : 767 Fifth Avenue, New York ― USA</p>
		                <p>대표작 : 잉글리쉬 페어 앤 프리지아(English Pear & Freesia), 우드 세이지 앤 시솔트(Wood Sage & Sea salt)</p>
		                <p>웹사이트 : https://www.jomalone.com/ </p>
		                
		            </div>
		            <div class="col-lg-6">
		                <img src="../resources/assets/img/house/jomalone bottles.jpg" title="" alt="사진">
		            </div>
		        </div>
		    </div>
		</section> <!-- End Section -->		
				
		<!-- Section13 - Le Labo -->
		<section class="section le-labo">
		    <div class="container">
		        <div class="row gy-4 align-items-center">
		            <div class="col-lg-6 pe-xl-12">
		                <h6 class="text-primary">당신의 삶을 바꿀 실험적인 향기</h6>
		                <h3 class="h1 pb-3">LE LABO</h3>
						<p>실험실 또는 연구실(the lab)의 불어표기인 LE LABO는 뉴욕 롤리타에 위치한 향수제조부티크로, 단 한명을 위한 향수제조로 유명해진 브랜드입니다. 광고 없이 입소문만으로 널리 알려지게 되었고, 기성품으로 나온 10종류의 향수를 기반으로 150여개의 향수원액중 고객이 직접 고른 향을 믹스하여 직접 만들어 주기도 합니다. 국내의 르 라보 매장에서는 기성품으로 나온 향수만을 취급하고 있습니다.</p>
						<p>르 라보는 2006년 프랑스 출신 파브리스 페노와 에디 로시에 의해 설립되었습니다. 스위스 출신의 에디 로시는 대학에서 화학 공부를 한 뒤 세계적인 조향 회사 피르메니히(Firmenich)에서 조향사로서 발돋움을 내디뎠습니다. 그러나 매출과 수익 증대만 바라보는 회사와 전통적인 대량생산에 싫증을 느낀 그는, 자신과 같은 뜻을 품은 파브리스 페노를 만나 프랑스 그라스에서 르 라보를 론칭하고 뉴욕에서 첫 매장을 오픈하게 됩니다.</p>
						<p>파브리스 페노는 많은 향수가 오래도록 지속되는 양질의 경험을 제공하지 못한다고 말합니다. 르 라보는 향수 자체뿐 아니라 제품 뒤에 숨어 있는 장인 정신을 공유합니다. 대표적으로 상탈 33은 무려 3년간 400회가 넘는 시향을 거쳤으며 고집스러운 제조 과정을 거쳐 탄생했습니다.</p>
						<p><b>“우리의 샘플을 가져가보세요. 르 라보가 당신의 삶을 바꾸는 것을 보게 될 것입니다.”</p>
						<p>- Fabrice Penot, LE LABO 공동 창립자</b></p>
		            </div>
		            <div class="col-lg-6">
		                <img src="../resources/assets/img/house/lelabo founders1.jpg" title="" alt="사진">
		            </div>
		        </div>
		    </div>
		</section>
		<section class="section le-labo">
		    <div class="container">
		        <div class="row gy-4 align-items-center flex-row-reverse">
		            <div class="col-lg-6 ps-xl-12">
		                <h6 class="text-primary">Company Information</h6>
		                <h3 class="h1 pb-3">LE LABO</h3>
		                <p>설립연도 : 2005 </p>
		                <p>설립자 : Eddie Roschi, Fabrice Penot </p>
		                <p>최고경영자 : Deborah Royer</p>
		                <p>본사 : 233 Elizabeth Street, New York ― USA</p>
		                <p>대표작 : 상탈 33(Santal 33), 어나더 13(Another 13)</p>
		                <p>웹사이트 : https://www.lelabofragrances.com/ </p>
		                
		            </div>
		            <div class="col-lg-6">
		                <img src="../resources/assets/img/house/lelabo bottle.jpg" title="" alt="사진">
		            </div>
		        </div>
		    </div>
		</section> <!-- End Section -->
				
		<!-- Section14 - Maison Francis Kurkdjian -->
		<section class="section maison-francis-kurkdjian">
		    <div class="container">
		        <div class="row gy-4 align-items-center">
		            <div class="col-lg-6 pe-xl-12">
		                <h6 class="text-primary">결코 만족하지 않는 천재의 완벽주의 조향</h6>
		                <h3 class="h1 pb-3">Maison Francis Kurkdjian</h3>
						<p>2009년 세계적인 천재 조향사 프란시스 커정이 마크 차야와 함께 자신의 이름을 걸고 설립한 하우스입니다.</p>
						<p>조향사 프란시스 커정은 24세 젊은 나이에, 지난 20년 동안 가장 많이 팔린 남성 향수 중 하나인 장 폴 고티에의 르말(Le male)을 만들었습니다. 또한 수많은 하이엔드 브랜드와 함께 향수를 제작하면서 현재 세계에서 가장 유명한 조향사 중 한 명으로 알려져 있습니다.</p>
						<p>커정의 조향은 심플하면서 섬세하다는 특징을 가집니다. 그의 대부분의 향수들은 노트 구성이 복잡하지 않은 편입니다. 조 말론을 필두로 최근의 니치 향수 브랜드들이 특정 노트의 자연적인 느낌을 강조하고자 하는 것과는 달리, 향수 그 자체의 고유한 이미지를 담아내고자 섬세하게 블렌딩합니다.</p>
						<p>다수의 향수들에서 이른바 '쇠 냄새'가 나는 것으로도 유명한데, 약간의 적응을 거치면 독보적인 럭셔리함을 가진 향으로 느껴지게 됩니다. </p>
						<p><b>"내가 만든 모든 향기는 매일 우리의 낮과 밤을 함께 하는 동반자, 향수의 일부분입니다. 메종 프란시스 커정은 조향사의 집이며 조향의 진실된 예술 둥지입니다. 내 작품은 시대를 향기로 해석하며, 감성과 감정을 통해 재료 그대로 무언가를 이야기하도록 합니다."</p>
						<p>- Francis Kurkdjian, Maison Francis Kurkdjian 창립자 겸 조향사</b></p>
		            </div>
		            <div class="col-lg-6">
		                <img src="../resources/assets/img/house/francis founder1.jpg" title="" alt="사진">
		            </div>
		        </div>
		    </div>
		</section>
		<section class="section maison-francis-kurkdjian">
		    <div class="container">
		        <div class="row gy-4 align-items-center flex-row-reverse">
		            <div class="col-lg-6 ps-xl-12">
		                <h6 class="text-primary">Company Information</h6>
		                <h3 class="h1 pb-3">Maison Francis Kurkdjian</h3>
		                <p>설립연도 : 2009</p>
		                <p>설립자 : Francis Kurkdjian </p>
		                <p>최고경영자 : Marc Chaya</p>
		                <p>본사 : 41 rue Etienne Marcel, 75001 Paris ― France</p>
		                <p>대표작 : 바카라 루쥬 540(Baccarat Rouge 540), 그랑 수아르(Grand Soir)</p>
		                <p>웹사이트 : https://www.franciskurkdjian.com/int-en/ </p>
		                
		            </div>
		            <div class="col-lg-6">
		                <img src="../resources/assets/img/house/francis bottle.jpg" title="" alt="사진">
		            </div>
		        </div>
		    </div>
		</section> <!-- End Section -->
								
		<!-- Section15 - Malin+Goetz -->
		<section class="section malin-goetz">
		    <div class="container">
		        <div class="row gy-4 align-items-center">
		            <div class="col-lg-6 pe-xl-12">
		                <h6 class="text-primary">심플하고 건강한, 자연주의 향기</h6>
		                <h3 class="h1 pb-3">MALIN+GOETZ</h3>
						<p>매튜 맬린과 앤드류 게츠가 2004년 뉴욕 Chelsea 지역에서 론칭한 스킨케어 및 프래그런스 브랜드입니다. 미국 Barney's, 영국 Liberty 백화점 및 국내외 유명 럭셔리 호텔 내 어메니티로 입점되는 등 높은 퀄리티를 인정받으며 많은 사랑을 받고 있습니다.</p>
						<p>처음에는 뉴욕 시의 작은 아파트에서 여섯 개의 스킨케어 상품으로 사업을 시작했습니다. 스킨케어 전문 브랜드로, 향수 분야로는 이후에 뛰어들었으나 향수 전문 브랜드 못지않게 개성있고 특별한 향을 자랑합니다. </p>
						<p>그들은 최상 품질의 천연 원료와 그들의 진보적인 기술을 접목시킵니다. 전통적인 약재상들이 사용하던 재료에서 영감을 얻어와 고급스러운 향을 배합해냅니다.</p>
						<p>맬린 앤 게츠는 전제품을 뉴욕에서 생산하며 동물실험을 거치지 않는 착한 브랜드이며, 감각적이고 현대적인 패키지 디자인을 자랑하기도 합니다.</p>
						<p><b>"우리는 '덜어내고도 더 좋아지는' 방식이 있다고 믿습니다."</p>
						<p>- Matthew Malin & Andrew Goetz, MALIN+GOETZ 공동 창업자 겸 CEO</b></p>
		            </div>
		            <div class="col-lg-6">
		                <img src="../resources/assets/img/house/malingoetz founders.jpg" title="" alt="사진">
		            </div>
		        </div>
		    </div>
		</section>
		<section class="section malin-goetz">
		    <div class="container">
		        <div class="row gy-4 align-items-center flex-row-reverse">
		            <div class="col-lg-6 ps-xl-12">
		                <h6 class="text-primary">Company Information</h6>
		                <h3 class="h1 pb-3">MALIN+GOETZ</h3>
		                <p>설립연도 : 2004</p>
		                <p>설립자 : Matthew Malin, Andrew Goetz</p>
		                <p>최고경영자 : Bradley Horowitz</p>		                
		                <p>본사 : 330 7th Ave, New York ― USA</p>
		                <p>대표작 : 다크 럼(Dark Rum), 스트로베리(Strawberry)</p>
		                <p>웹사이트 : https://www.malinandgoetz.com/ </p>
		                
		            </div>
		            <div class="col-lg-6">
		                <img src="../resources/assets/img/house/malingoetz bottle.jpg" title="" alt="사진">
		            </div>
		        </div>
		    </div>
		</section> <!-- End Section -->		
										
		<!-- Section16 - Maison Margiela -->
		<section class="section maison-margiela">
		    <div class="container">
		        <div class="row gy-4 align-items-center">
		            <div class="col-lg-6 pe-xl-12">
		                <h6 class="text-primary">추억 속 한 장면을 불러일으키는 향기</h6>
		                <h3 class="h1 pb-3">Maison Margiela</h3>
						<p>마르탱 마르지엘라는 1959년 벨기에, 가발업과 향수업을 하는 집안에서 태어났습니다. 그는 1984년 벨기에의 앤트워프(AntWerp) 아카데미를 졸업하고, 1988년 사업 파트너인 제니 메이렌스와 함게 파리에 본사를 둔 패션 브랜드 메종 마르지엘라를 설립합니다. 지나치게 상업화된 패션 산업에 환멸을 느낀 마르지엘라는 자신만의 특별한 철학을 바탕으로 브랜드 가치를 쌓아갑니다.</p>
						<p>마르지엘라는 남성복, 여성복, 액세서리 등 제품군을 넓혀가던 중에도 그의 가업이었던 향수에 지속적인 관심을 가지고 있었습니다. 2008년 로레알(L'Oréal)사는 마르지엘라의 가치를 알아보고, 메종 마르지엘라의 향수 라이센스를 취득합니다. 그리고 2010년 1월, 메종 마르지엘라는 로레알과의 합작으로 첫 향수 언타이틀'(untitle)'을 세상에 선보입니다. </p>
						<p>휴일에 해변을 산책한다거나, 코코넛 선크림을 바른다거나, 아침 일찍 일어나 상쾌한 공기를 들이마시는 등의 특별한 장소 또는 추억을 불러일으키는 컨셉을 각각의 향수에 입혀, 사용자의 감정을 그 추억으로 환기시킨다는 모토를 담아냅니다.</p>
		            </div>
		            <div class="col-lg-6">
		                <img src="../resources/assets/img/house/margiela store.jpg" title="" alt="사진">
		            </div>
		        </div>
		    </div>
		</section>
		<section class="section maison-margiela">
		    <div class="container">
		        <div class="row gy-4 align-items-center flex-row-reverse">
		            <div class="col-lg-6 ps-xl-12">
		                <h6 class="text-primary">Company Information</h6>
		                <h3 class="h1 pb-3">Maison Margiela</h3>
		                <p>설립연도 : 1988</p>
		                <p>설립자 : Martin Margiela </p>
		                <p>최고경영자 : Gianfranco Gianangeli</p>		
		                <p>본사 : 163 Rue Saint-Maur, Paris ― France </p>
		                <p>대표작 : 레이지 선데이 모닝(Lazy Sunday Morning), 재즈 클럽(Jazz Club)</p>
		                <p>웹사이트 : https://www.maisonmargiela.com/ko-kr/ </p>
		                
		            </div>
		            <div class="col-lg-6">
		                <img src="../resources/assets/img/house/margiela bottle.jpg" title="" alt="사진">
		            </div>
		        </div>
		    </div>
		</section> <!-- End Section -->
										
		<!-- Section17 - Santa Maria Novella -->
		<section class="section santa-maria-novella">
		    <div class="container">
		        <div class="row gy-4 align-items-center">
		            <div class="col-lg-6 pe-xl-12">
		                <h6 class="text-primary">역사 속에 숨쉬는 고결한 전통</h6>
		                <h3 class="h1 pb-3">Santa Maria Novella</h3>
						<p>산타 마리아 노벨라는 세상에서 가장 오래된 약국들 중 하나로도 잘 알려져 있습니다. 1216년 성 도미니크에 의해 설립된 도미니크 수도회는 수도사들의 건강을 위해 직접 약초를 재배하고 약품을 조제해왔습니다. 그러던 중 산타 마리아 노벨라에서 제조한 약이 효능이 좋다는 소문이 퍼지면서, 1612년 산타 마리아 노벨라는 정식 약국으로서의 허가를 받고 그들의 공식적인 역사를 시작합니다.</p>
						<p>1533년, 당시 14세였던 카트린 드 메디치가 프랑스 왕국 앙리 2세와 결혼하는 것을 기념하여 왕비의  전용 향을 만들 기회를 얻게 되어 산타 마리아 노벨라의 명성은 더욱 위대해집니다.
						<p>산타 마리아 노벨라는 초기 수도사들의 방식을 계승하기 위해 전통적인 수공 제작 절차를 고수하고 있으며, 모든 제품은 전통 약초와 천연 오일만을 이용하여 제작됩니다.</p>
						<p>산타 마리아 노벨라 약국은 오늘날까지도 운영되면서 수백년 전통의 방식으로 여전히 그들의 고유한 향수를 제작하고 있고, 세계인들의 사랑을 받고 있습니다.</p>
		            </div>
		            <div class="col-lg-6">
		                <img src="../resources/assets/img/house/santamaria store.jpg" title="" alt="사진">
		            </div>
		        </div>
		    </div>
		</section>
		<section class="section santa-maria-novella">
		    <div class="container">
		        <div class="row gy-4 align-items-center flex-row-reverse">
		            <div class="col-lg-6 ps-xl-12">
		                <h6 class="text-primary">Company Information</h6>
		                <h3 class="h1 pb-3">Santa Maria Novella</h3>
		                <p>설립연도 : 1221</p>
		                <p>설립자 : Dominican friars(도미니크 수도사들)</p>
		                <p>최고경영자 : Gian Luca Perris</p>
		                <p>본사 : Via della scala 16, Firenze ― Italy</p>
		                <p>대표작 : 프리지아(Fresia), 멜로그라노(Melograno(Pomegranate))</p>
		                <p>웹사이트 : https://us.smnovella.com/ </p>
		                
		            </div>
		            <div class="col-lg-6">
		                <img src="../resources/assets/img/house/santamaria bottle1.jpg" title="" alt="사진">
		            </div>
		        </div>
		    </div>
		</section> <!-- End Section -->
										
		<!-- Section18 - Tom Ford -->
		<section class="section tom-ford">
		    <div class="container">
		        <div class="row gy-4 align-items-center">
		            <div class="col-lg-6 pe-xl-12">
		                <h6 class="text-primary"></h6>
		                <h3 class="h1 pb-3">Tom Ford</h3>
		                <p>텍사스 주 오스틴에서 1961년에 태어난 톰 포드는 어릴 적부터 패션에 관심이 많았습니다. 파슨즈에서 건축학을 전공했으나 자신의 적성은 패션에 있다는 것을 깨닫고 1985년 패션업계에 뛰어듭니다. 그리고 9년만에 구찌의 수석 디자이너가 되었다는 것은 그의 천부적인 능력을 입증합니다. </p>
		                <p>톰 포드가 자신의 이름으로 브랜드를 런칭한 것은 2006년입니다. 그는 인간의 욕망 중 하나인 성을 패션 철학으로 삼아, 제품에 성적인 이미지를 적극적으로 어필하며 획기적이고 차별화된 브랜드를 만들었습니다.</p>
						<p>패션 브랜드 톰포드는 의류로도 못지않게 향수로도 유명합니다. 톰포드 향수 컬렉션은  다른 곳에서 찾아보기 힘든 개성있는 향들을 다양하게 가지고 있어 본인만의 시그니쳐 향수를 원하는 사람들의 사랑을 받고 있습니다. 타 향수 브랜드에 비해 역사가 짧음에도 톰포드 향수의 시장 파괴력은 엄청났으며, 관능적인 향수 광고로도 유명세를 얻었습니다.</p>
						<p><b>"좋은 매너 그리고 당신을 상징할 수 있는 좋은 향기는 신사가 되는 필수 조건입니다."</p>
						<p>- Tom Ford, Tom Ford 창립자</b></p>
		            </div>
		            <div class="col-lg-6">
		                <img src="../resources/assets/img/house/tomford ad.jpg" title="" alt="사진">
		            </div>
		        </div>
		    </div>
		</section>
		<section class="section tom-ford">
		    <div class="container">
		        <div class="row gy-4 align-items-center flex-row-reverse">
		            <div class="col-lg-6 ps-xl-12">
		                <h6 class="text-primary">Company Information</h6>
		                <h3 class="h1 pb-3">Tom Ford</h3>
		                <p>설립연도 : 2005</p>
		                <p>설립자 : Tom Ford </p>
		                <p>최고경영자 : Anthony Rodriguez </p>
		                <p>본사 : 672 Madison Avenue New York ― USA</p>
		                <p>대표작 : 블랙 오키드(Black Orchid), 솔레이 블랑(Soleil Blanc)</p>
		                <p>웹사이트 : https://www.tomford.com/ </p>
		                
		            </div>
		            <div class="col-lg-6">
		                <img src="../resources/assets/img/house/tomford bottle.jpg" title="" alt="사진">
		            </div>
		        </div>
		    </div>
		</section> <!-- End Section -->
		 
	</main> <!-- End Main -->
	<!-- Footer -->
	<jsp:include page="/WEB-INF/views/hf/footer.jsp"></jsp:include>
	<script  src="../resources/assets/js/gyu_jquery.js"></script>
</body>

</html>