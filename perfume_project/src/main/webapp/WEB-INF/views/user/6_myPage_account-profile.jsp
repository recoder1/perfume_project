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
<link rel="shortcut icon" href="..resources/assets/img/logo_black_icon.png">
<!-- CSS Template -->
<link href = "../resources/assets/css/syh_theme.css" rel = "stylesheet">
<link href="../resources/assets/css/theme.css" rel="stylesheet">

<!-- jquery Modal -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<style>
    *{
        font-family: 'Noto Serif KR', serif;
    }
</style>
</head>

<body>

    <!-- 
    ========================
        Wrapper 
    ========================
    -->
   <!-- Start Header -->
   <jsp:include page = "/WEB-INF/views/hf/header.jsp"></jsp:include>
   <!-- End Header -->
   
        <!-- End Header -->
        <!-- End Header -->
        <!-- Main -->
        <main>
            
            <!--Page Title
            <section class="py-3 bg-gray-100">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-6 my-2">
                            <h1 class="m-0 h4 text-center text-lg-start">MY PAGE</h1>
                        </div>
                        <-- My Page 우측 nav display none --
                        <div style = "display : none " class="col-lg-6 my-2">
                            <ol class="breadcrumb dark-link m-0 small justify-content-center justify-content-lg-end">
                                <li class="breadcrumb-item"><a class="text-nowrap" href="#"><i class="bi bi-home"></i>Home</a></li>
                                <li class="breadcrumb-item text-nowrap active" aria-current="page">Profile</li>
                            </ol>
                        </div>
                        <-- My Page 우측 home/mypage 형식 display none --
                    </div>
                </div>
                <-- 개인정보수정 / 나의 보관함 선택 div 시작 --

                <-- css 는 theme.css 파일 참고--
                <div id ="myPage_Select">
                    <a id = "myPage_reWriteMyInfo">개인정보 수정</a> /
                    <a id = "myPage_myBag">나의 보관함</a>
                </div>
                <-- 개인정보수정 / 나의 보관함 선택 div 종료--

            </section>
            <-- End Page Title -->

            <!-- Page Title -->
            <section class="py-3 bg-gray-100" style="height: 200px;">
                <!-- style 추가-->
                <div class="container" style="padding-top: 35px;">
                    <div class="row align-items-center">
                        <!-- col-1g-6 12로 변경, h1에 text-lg-start 클래스 삭제-->
                        <div class="col-lg-12 my-2">
                            <h1 class="m-0 h4 text-center" style="font-size: 2.5rem;">마이페이지</h1>
                        </div>
                        <div class="col-lg-12 my-2" style="width: 100%">
                            <!-- ol태그 justify-content-lg-end 클래스 삭제 : 오른쪽정렬 > 가운데 정렬 / a 태그 컬러 변경-->
                            <ol class="breadcrumb dark-link m-0 small justify-content-center"
                                style="text-align: center">
                                <li class="breadcrumb-item"><a class="text-nowrap" href="#" style="color: #9397AD;"><i
                                            class="bi bi-home"></i>개인정보수정</a></li>
                                <li class="breadcrumb-item"><a class="text-nowrap" href="#" style="color: #9397AD;"><i
                                            class="bi bi-home"></i>나의보관함</a></li>
                            </ol>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Page Title-->
            
            <!-- Section -->
            <div class="section">
                <div class="container">
                    <div class="row align-items-start">
                        <div style = "display: none;" class="col-lg-4 pb-4 pb-lg-0 col-xxl-3  pe-xxl-5">
                            <div class="bg-white border border-bottom-0">
                                <ul class="list-unstyled mb-0 theme-link">
                                    <li class="border-bottom mb-0">
                                        <a class="nav-link-style d-flex align-items-center p-3" href="account-order.html">
                                            <i class="bi bi-bag me-2"></i> Order <div class="ms-auto badge-pill badge bg-primary rounded-3">5</div>
                                        </a>
                                    </li>
                                    <li class="border-bottom mb-0">
                                        <a class="nav-link-style d-flex align-items-center p-3" href="account-wishlist.html">
                                            <i class="bi bi-heart me-2"></i>Wishlist <div class="ms-auto badge-pill badge bg-primary rounded-3">5</div>
                                        </a>
                                    </li>
                                    <li class="border-bottom mb-0">
                                        <a class="nav-link-style d-flex align-items-center p-3" href="account-tickets.html">
                                            <i class="bi bi-bookmark me-2"></i>Support Tickets <div class="ms-auto badge-pill badge bg-primary rounded-3">0</div>
                                        </a>
                                    </li>
                                    <li class="border-bottom mb-0">
                                        <a class="nav-link-style d-flex align-items-center active p-3" href="account-profile.html">
                                            <i class="bi bi-person-circle me-2"></i>Profile info
                                        </a>
                                    </li>
                                    <li class="border-bottom mb-0">
                                        <a class="nav-link-style d-flex align-items-center p-3" href="account-address.html">
                                            <i class="bi bi-map-fill me-2"></i>Addresses
                                        </a>
                                    </li>
                                    <li class="border-bottom mb-0">
                                        <a class="nav-link-style d-flex align-items-center p-3" href="account-payment.html">
                                            <i class="bi bi-credit-card me-2"></i>Payment
                                        </a>
                                    </li>
                                    <li class="border-bottom mb-0">
                                        <a class="nav-link-style d-flex align-items-center p-3" href="#">
                                            <i class="bi bi-box-arrow-left me-2"></i>Logout
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- myPage header 개인정보 수정 div 시작 -->
                        <!-- css = theme.css 파일 참고 -->
                        <div id = "myPage_header_reWriteMyInfo">
                            개인정보 수정
                        </div>
                        <!-- myPage header 개인정보 수정 div 종료 -->

                         <!-- myPage header 나의 보관함 div 시작 -->
                          <!-- css = theme.css 파일 참고 -->
                         <div id = "myPage_header_myBag">
                            나의 보관함
                        </div>
                        <!-- myPage header 나의 보관함 div 종료 -->
                        <!-- myPage inputSection Start, display = flex 에서 display = block 으로 속성 변경-->
                        <div id = "myPage_changeProfileWrapper">
                            <form method = "post" name = "memberUpdate" action = "memberUpdate.do" enctype = "multipart/form-data">
                         <!-- 프로필 사진 변경을 위한 div -->
		                   	<div id = "myPage_profileImgDiv">
		                   	  <div id = "myPage_profileImgPreCheckDiv">
		                   	  	<img id  = "myPage_profileImgPreCheckImg" src = "../resources/profileImg/${sessionScope.user_fname_en}" onerror = "this.src='../resources/assets/img/profile_default.jpg';" />
		                   	  </div>
		                         <label for = "myPage_uploadProfileImg">프로필 사진 변경<span class="text-danger">* </span></label>
		                         <input id ="myPage_uploadProfileImg" type="file" name = "file" class="form-control" accept = "image/*">
		                    </div>
                          <!-- 프로필 사진 등록을 위한 div end-->
                                <div id = "myPage_inputSection" class="row gy-4">
                                    <div class="col-12 col-md-6">
                                        <label class="form-label" for="account_First_Name">
                                            ID *
                                        </label>
                                        <input class="form-control" id="user_id" type="text" placeholder="변경할 ID" value=${sessionScope.user_id} readonly name = "user_id">
                                         <span id = "id_dup" style = "color:red; font-size: small;"></span>
                                    </div>
                                    <!-- Last Name div Start display None -->
                                    <div class="col-12 col-md-6" style = "display : none;">
                                        <label class="form-label" for="account_Last_Name">
                                            Last Name *
                                        </label>
                                        <input class="form-control" id="account_Last_Name" type="text" placeholder="Last Name *" value="Drew" required="">
                                    </div>
                                    <!-- Last Name div end display None -->
                                    <div class="col-12">
                                        <label class="form-label" for="account_email">
                                            이메일 주소 *
                                        </label>
                                        <input style = "width: 471px;" name = "email" class="form-control" id="email" type="email" placeholder="이메일 주소" value=${sessionScope.email} required="">
                                        <span id = "email_dup" style = "color:red; font-size: small;"></span>
                                    </div>
                                    <div class="col-12 col-md-6">
                                        <label class="form-label" for="account_Password">
                                            변경할 비밀번호 *
                                        </label>
                                        <input class="form-control" name = "user_password" id="user_password" type="password" placeholder="변경할 비밀번호" value = ${sessionScope.user_password} required="">
                                    </div>
                                    
                                    <!-- 비밀번호 확인 div Start , Add checkPasswordBtn , css : theme.css 확인-->
                                    <div id = "myPage_inputSection_checkPassword" class="col-12 col-md-6">
                                        <label class="form-label" for="Account_New_Password">
                                            비밀번호 확인 *
                                        </label>
                                        <div id="myPage_inputSection_checkPassword_inputDiv"> 
                                            <input class="form-control" id="Account_New_Password" type="password" placeholder="비밀번호 확인" value = ${sessionScope.user_password } required="">
                                        </div>
                                    </div>
                                     <!-- 비밀번호 확인 div End -->

                                     <div id = "myPage_inputSection_changeNickname" class="col-12 col-md-6">
                                        <label class="form-label" for="account_First_Name">
                                            변경할 닉네임 *
                                        </label>
                                        <div id = "myPage_inputSection_changeNickname_inputDiv">
                                            <input class="form-control" name = "nickname" id="nickname" etype="text" placeholder="바꿀 닉네임" value=${sessionScope.nickname} required="">
                                            <span id = "nickname_dup" style = "color:red; font-size: small;"></span>
                                        </div>
                                    </div>
                                   
                                     <!-- Date of Birth div Start (display None) -->
                                    <div style = "display : none" class="col-12 col-lg-6">
                                        <!-- Label -->
                                        <label class="form-label">Date of Birth</label>
                                        <!-- Inputs -->
                                        <div class="row g-3">
                                            <div class="col-auto">
                                                <select class="form-select" id="account_Date">
                                                    <option>10</option>
                                                    <option>11</option>
                                                    <option selected="">12</option>
                                                </select>
                                            </div>
                                            <div class="col">
                                                <select class="form-select" id="account_Month">
                                                    <option>January</option>
                                                    <option selected="">February</option>
                                                    <option>March</option>
                                                </select>
                                            </div>
                                            <div class="col-auto">
                                                <select class="form-select" id="accountYear">
                                                    <option>1990</option>
                                                    <option selected="">1991</option>
                                                    <option>1992</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Date of Birth div end (display None) -->
                                    <!-- Gender Div Start , display = none -->
                                    <div style = "display : none " class="col-12 col-lg-6">
                                        <label class="form-label">Gender</label>
                                        <div class="btn-group-toggle" data-bs-toggle="buttons">
                                            <input type="radio" class="btn-check" name="options-outlined" id="danger-outlined">
                                            <label class="btn btn-outline-dark" for="danger-outlined">Male</label>
                                            <input type="radio" class="btn-check" name="options-outlined" id="success-outlined" checked>
                                            <label class="btn btn-outline-dark" for="success-outlined">Female</label>
                                        </div>
                                    </div>
                                    <!-- Gender Div End -->
                                    <div class="col-12 pt-3">
                                        <!-- Button -->
                                        <button class="btn btn-primary" id ="myPage_submitBtn" type="submit">변경사항 저장</button>
                                    </div>
                                </div>
                                <div id = "myPage_myBag_Section">
                                    <a id ="myPage_myBag_myArticle">My 게시글</a> /
                                    <a id ="myPage_myBag_myReview">My 리뷰</a> /
                                    <a id ="myPage_myBag_myComment">My 댓글</a> /
                                    <a id ="myPage_myBag_scrap">스크랩함</a>
                                </div>
                                <!-- myPage_myBag_myArticle div Start -->
                                <br>
                                <div id = "myPage_myBag_myArticle_div">
                                    <h5>my article</h5>
                                    <div id = "myPage_myBag_myArticle_form">
                                        <div id = "myPage_myBag_myArticle_1"> 
                                            <a style= "color : black " href="#"><strong>[말머리] 게시글 제목</strong></a>
                                            <br>
                                            <img src= "../resources/assets/img/avatar-1.jpg">
                                            <a style ="color: black;" href="#">가나다라마바사아자카타파하123456789abcdefghijklmnopq</a>
                                        </div>
                                        <div id = "myPage_myBag_myArticle_2"> 
                                            <a style= "color : black " href="#"><strong>[말머리] 게시글 제목</strong></a>
                                            <br>
                                            <img src = "../resources/assets/img/avatar-2.jpg">
                                            <a style ="color: black;" href="#">가나다라마바사아자카타파하123456789abcdefghijklmnopq</a>
                                        </div>
                                        <div id = "myPage_myBag_myArticle_3"> 
                                            <a style= "color : black " href="#"><strong>[말머리] 게시글 제목</strong></a>
                                            <br>
                                            <img src = "../resources/assets/img/avatar-3.jpg">
                                            <a style ="color: black;" href="#">가나다라마바사아자카타파하123456789abcdefghijklmnopq</a>
                                        </div>
                                        <div id = "myPage_myBag_myArticle_4"> 
                                            <a style= "color : black " href="#"><strong>[말머리] 게시글 제목</strong></a>
                                            <br>
                                            <img src = "../resources/assets/img/avatar-4.jpg">
                                            <a style ="color: black;" href="#">가나다라마바사아자카타파하123456789abcdefghijklmnopq</a>
                                        </div>
                                    </div>
                                </div>
                                <!-- myPage_myBag_myArticle div end -->

                                <div id = "myPage_myBag_myReview_div">
                                    <h5>my review</h5>
                                    <div id = "myPage_myBag_myReview_form">
                                        <div id = "myPage_myBag_myReview_1"> 
                                            <a style= "color : black " href="#"><strong>[말머리] 게시글 제목</strong></a>
                                            <br>
                                            <img src= "../resources/assets/img/avatar-1.jpg">
                                            <a style ="color: black;" href="#">가나다라마바사아자카타파하123456789abcdefghijklmnopq</a>
                                        </div>
                                        <div id = "myPage_myBag_myReview_2"> 
                                            <a style= "color : black " href="#"><strong>[말머리] 게시글 제목</strong></a>
                                            <br>
                                            <img src = "../resources/assets/img/avatar-2.jpg">
                                            <a style ="color: black;" href="#">가나다라마바사아자카타파하123456789abcdefghijklmnopq</a>
                                        </div>
                                        <div id = "myPage_myBag_myReview_3"> 
                                            <a style= "color : black " href="#"><strong>[말머리] 게시글 제목</strong></a>
                                            <br>
                                            <img src = "../resources/assets/img/avatar-3.jpg">
                                            <a style ="color: black;" href="#">가나다라마바사아자카타파하123456789abcdefghijklmnopq</a>
                                        </div>
                                        <div id = "myPage_myBag_myReview_4"> 
                                            <a style= "color : black " href="#"><strong>[말머리] 게시글 제목</strong></a>
                                            <br>
                                            <img src = "../resources/assets/img/avatar-4.jpg">
                                            <a style ="color: black;" href="#">가나다라마바사아자카타파하123456789abcdefghijklmnopq</a>
                                        </div>
                                    </div>
                                </div>

                                <div id = "myPage_myBag_myComment_div">
                                    <h5>my Comment</h5>
                                    <div id = "myPage_myBag_myComment_form">
                                        <div id = "myPage_myBag_myComment_1"> 
                                            <a style= "color : black " href="#"><strong>alphabravocharliedeltaechogolf</strong></a>
                                            <br>
                                            <a style ="color: black;" href="#">게시글 제목</a>
                                        </div>
                                        <div id = "myPage_myBag_myComment_2"> 
                                            <a style= "color : black " href="#"><strong>댓 글 내 용</strong></a>
                                            <br>
                                            <a style ="color: black;" href="#">게시글 제목</a>
                                        </div>
                                        <div id = "myPage_myBag_myComment_3"> 
                                            <a style= "color : black " href="#"><strong>댓 글 내 용</strong></a>
                                            <br>
                                            <a style ="color: black;" href="#">게시글 제목</a>
                                        </div>
                                        <div id = "myPage_myBag_myComment_4"> 
                                            <a style= "color : black " href="#"><strong>댓 글 내 용</strong></a>
                                            <br>
                                            <a style ="color: black;" href="#">게시글 제목</a>
                                        </div>
                                    </div>
                                </div>

                                <div id = "myPage_myBag_myScrap_div">
                                    <h5>my Scrap</h5>
                                    <div id = "myPage_myBag_myScrap_form">
                                        <div id = "myPage_myBag_myScrap_1"> 
                                            <a style= "color : black " href="#"><strong>스크랩한 글 제목</strong></a>
                                            <br>
                                            <a style ="color: black;" href="#">글 내용</a>
                                        </div>
                                        <div id = "myPage_myBag_myScrap_2"> 
                                            <a style= "color : black " href="#"><strong>스크랩한 글 제목</strong></a>
                                            <br>
                                            <a style ="color: black;" href="#">글 내용</a>
                                        </div>
                                        <div id = "myPage_myBag_myScrap_3"> 
                                            <a style= "color : black " href="#"><strong>스크랩한 글 제목</strong></a>
                                            <br>
                                            <a style ="color: black;" href="#">글 내용</a>
                                        </div>
                                        <div id = "myPage_myBag_myScrap_4"> 
                                            <a style= "color : black " href="#"><strong>스크랩한 글 제목</strong></a>
                                            <br>
                                            <a style ="color: black;" href="#">글 내용</a>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <form method = "post" action = "memberDelete.do">
                            	<div id = "deleteDiv">
	                           		<input style = "display : none" class="form-control" id="delete_standard_id" type="text" placeholder="변경할 ID" value=${sessionScope.user_id} readonly name = "user_id">
	                           		<input style="display: none" class="form-control" id="delete_standard_pw" type="text" placeholder="변경할 ID" value=${sessionScope.user_password} readonly name = "user_password">
	                           		<button class="btn btn-primary" id ="myPage_submitBtn2" type="submit">탈퇴하기</button>
                            	</div>
                            </form>
                            <div style = "display: none;">
                            	<input id="myPage_hidden_user_fname_en" type = "hidden" style = "display : none" src = "../resources/profileImg/${sessionScope.user_fname_en}">
                            	<input id = "myPage_hidden_user_id" type = "hidden" style = "display : none" value = ${sessionScope.user_id}>
                            	<input id = "myPage_hidden_email" type = "hidden" style = "display : none" value = ${sessionScope.email}>
                            	<input id ="myPage_hidden_user_password" type = "hidden" style = "display : none" value = ${sessionScope.user_password}>
                            	<input id= "myPage_hidden_nickname" type = "hidden" style = "display : none" value = ${sessionScope.nickname}>
                            </div> 
                      
                        </div>
                        <!-- myPage inputSection End, display = flex 에서 display = block 으로 속성 변경-->
                    </div>
                </div>
            </div>
            <!-- End Section -->
        </main>
        <!-- End Main -->
        <!-- Footer -->
         <jsp:include page = "/WEB-INF/views/hf/footer.jsp"></jsp:include>
   	

</html>