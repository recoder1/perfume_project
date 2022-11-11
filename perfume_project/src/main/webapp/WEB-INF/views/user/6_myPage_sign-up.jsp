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
    <!-- font : Google Noto Serif Korean -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    
    <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@200;300;400;500;600;700;900&display=swap" rel="stylesheet">
    <!-- Favicon -->
    <link rel="shortcut icon" href="../resources/assets/img/logo_black_icon.png">
    <!-- CSS Template -->
    <link href="../resources/assets/css/theme.css" rel="stylesheet">
    <link href="../resources/assets/css/syh_theme.css" rel="stylesheet">
    
    
   
	
	
    <style>
        *{
            font-family: 'Noto Serif KR', serif;
        }
    </style>
</head>

<body>
	
	<!-- Start Header -->
   <jsp:include page = "/WEB-INF/views/hf/header.jsp"></jsp:include>
   <!-- End Header -->
   
        <main>
        
         <!-- modal div start -->
                                 
                                  <div class ="modal fade" id = "SignUp_termsModal" tabindex = "-1" role = "dialog" aria-labelledby="SignUp_termsModalLabel">
                                    	<div class = "modal-dialog" role = "document">
                                    		<div class = "modal-content">
                                    			<div class ="modal-header">
		                                    		<h1 class ="modal-title" id = "SignUp_termsModalLabel">개인 정보 수집 제공, 이용 동의</h1>
		                                    	</div>
		                                   		<div class ="modal-body">
			                                    	<br>
			                                    	<hr>
			                                    	<br>
			                                    		<textarea cols = "50" rows ="5" readonly>
			가. 수집하는 개인정보 항목의 첫번째, 당사는 회원가입 및 원할한 서비스의 제공을 위해 최초 회원가입 당시 하기와 같은 최소한의 개인정보를 필수 항목으로 수집하고 있습니다.
			  - 이름, 연락처, 이메일
			나. 서비스 이용과정이나 사업처리 과정에서 하기와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.
			  - IP address, 쿠키, 방문일시, 서비스 이용기록
			                                    		</textarea>
			                                    		<br>
			                                    		<br>
		                                    	</div>
		                                    	<div class= "modal-footer">
		                                    		<a href = "#" id = "SignUp_termsClose" data-dismiss ="modal"> 개인정보 수집 및 이용에 동의합니다.</a>
		                                    	</div>
		                                	</div>
                                    	</div>
                                    </div> 
                                    
            <!-- modal div end -->
            <!-- Page Title -->
            <section class="py-3 bg-gray-100" style="height: 200px;">
                <!-- style 추가-->
                <div class="container" style="padding-top: 35px;">
                    <div class="row align-items-center">
                        <!-- col-1g-6 12로 변경, h1에 text-lg-start 클래스 삭제-->
                        <div class="col-lg-12 my-2">
                            <h1 class="m-0 h4 text-center" style="font-size: 2.5rem;">회원가입</h1>
                        </div>
                        <div class="col-lg-12 my-2" style="width: 100%">
                            <!-- ol태그 justify-content-lg-end 클래스 삭제 : 오른쪽정렬 > 가운데 정렬 / a 태그 컬러 변경-->
                            <ol class="breadcrumb dark-link m-0 small justify-content-center"
                                style="text-align: center">
                                <li class="breadcrumb-item"><a href= "6_myPage_login.do" class="text-nowrap" href="#" style="color: #9397AD;"><i
                                            class="bi bi-home"></i>로그인</a></li>
                                <li class="breadcrumb-item"><a class="text-nowrap" href="#" style="color: #9397AD;"><i
                                            class="bi bi-home"></i>회원가입</a></li>
                                
                            </ol>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Page Title -->
            <!-- Section -->
            <section class="section">
                <div class="container">
                    <div class="justify-content-center row">
                        <div class="col-lg-10 col-xxl-6">
                            <div class="card">
                                <div class="card-header bg-transparent py-3">
                                    <h3 class="h4 mb-0">등록 </h3>
                                </div>
                                <div class="card-body">
                                    <form method="post" action = "userInsert.do" name="userInsert" enctype="multipart/form-data">
                                    <!-- 프로필 사진 등록을 위한 div -->
                                    	<div class="form-group mb-3">
                                    	  <div id = "SignUp_profileImgPreCheckDiv">
                                    	  	<img id  = "SignUp_profileImgPreCheckImg" src = ../resources/assets/img/profile_default.jpg />
                                    	  </div>
	                                          <label class="form-label">프로필 사진 등록<span class="text-danger">*</span></label>
	                                          <input id ="SignUp_uploadProfileImg" type="file" class = "form-control" name = "file" accept = "image/*">
                                        </div>
                                    <!-- 프로필 사진 등록을 위한 div end-->
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group mb-3">
                                                    <label class="form-label">ID<span class="text-danger">*</span></label>
                                                    <input type="text" id="user_id" name ="user_id" class="form-control" placeholder="원하시는 ID 를 입력해주세요">
                                                    <span id = "id_dup" style = "color:red; font-size: small;"></span>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group mb-3">
                                                    <label class="form-label">Email<span class="text-danger">*</span></label>
                                                    <input type="email" id="email" name = "email" class="form-control" placeholder="E-mail">
                                                    <span id = "email_dup" style = "color:red; font-size: small;"></span>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group mb-3">
                                                    <label class="form-label col" >비밀번호<span class="text-danger">*</span></label>
                                                    <input type="password" class="form-control" name="user_password" id="user_password" placeholder="*********">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group mb-3">
                                                    <label class="form-label col" for="exampleInputPassword1">비밀번호 확인<span class="text-danger">*</span></label>
                                                    <input type="password" class="form-control"  id="user_password2" placeholder="*********">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group mb-3">
                                                    <label class="form-label col" >닉네임<span class="text-danger">*</span></label>
                                                    <input type="text" class="form-control" name = "nickname" id="nickname" placeholder="원하시는 닉네임을 입력해주세요">
                                                    <span id = "nickname_dup" style = "color: red; font-size: small;"></span>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group mb-3">
                                                    <label class="form-label col">전화번호<span class="text-danger">*</span></label>
                                                    <input type="text" class="form-control" name = "tel" id="tel" placeholder="010-XXXX-XXXX">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group mb-3">
                                                    <label class="form-label col">이름<span class="text-danger">*</span></label>
                                                    <input type="text" class="form-control" name = "name" id="name" placeholder="이름을 입력해주세요">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-check mb-4">
                                            <input class="form-check-input" type="checkbox" value="" id="form2Example3" checked="">
                                            <label class="form-check-label" for="form2Example3"> 회원가입시  <a id ="SignUp_termsClick" href="#" style="color : blue;" data-toggle ="modal" data-target = "#SignUp_termsModal">약관</a>을 읽었고 이에 동의합니다.</label>
                                            <!-- theme.css #SignUp_termsClick 확인 -->
                                        </div>
                                        <div class="form-group row align-items-center">
                                            <div class="col">
                                                <button id="SignUp_createAccountBtn" type="submit" class="btn btn-primary">
                                                    계정 생성하기
                                                </button>
                                            </div>
                                            <div class="col-12 col-sm text-sm-end mt-3 mt-sm-0">
                                                <span class="text-muted">계정이 이미 있으신가요?? <a href='6_myPage_login.do'>로그인</a></span>
                                            </div>
                                        </div>
                                    </form>
                                   
                               
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Section -->
        </main>
        <!-- End Main -->
        
        <!-- Start Footer -->
        <jsp:include page = "/WEB-INF/views/hf/footer.jsp"></jsp:include>
        <!-- End Footer -->

</html>