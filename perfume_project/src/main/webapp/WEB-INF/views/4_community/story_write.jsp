<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link rel="shortcut icon" href="../resources/assets/img/logo_black_icon.png" >
    <!-- CSS Template -->
    <link href="../resources/assets/css/theme.css" rel="stylesheet">
    <style>
        *{
            font-family: 'Noto Serif KR', serif;
        }
        
    </style>
</head>

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		$("#insertBtn").click(function(){
			if ($('input[name="ps_title"]').val() == "") {
				alert("글 제목을 입력해주세요");
				$('input[name="ps_title"]').focus();
				return;
			}
			if ($('input[name="ps_title"]').val().length > 100 ){
				alert('제목은 100자 이내로 작성해주세요');
				$('input[name="ps_title"]').focus();
				return false;
			} 
			
			if ($('textarea[name="ps_content"]').val().length > 1300 ){
				alert('내용은 1300자 이내로 작성해주세요');
				$('input[name="ps_content"]').focus();
				return false;
			} 
			
			document.formSave.action="saveBoard.do";
			document.formSave.submit();
			
		});
	});	
</script>

<body>
	<!-- header -->
	<jsp:include page="/WEB-INF/views/hf/header.jsp"></jsp:include>

     <!-- Main -->
     <main>
         <!-- Page Title -->
         <section class="py-3 bg-gray-100" style="height: 200px;">
             <!-- style 추가-->
             <div class="container" style="padding-top: 35px;">
                 <div class="row align-items-center">
                     <!-- col-1g-6 12로 변경, h1에 text-lg-start 클래스 삭제-->
                     <div class="col-lg-12 my-2">
                         <h1 class="m-0 h4 text-center" style="font-size: 2.5rem;">커뮤니티</h1>
                     </div>
                     <div class="col-lg-12 my-2" style="width: 100%">
                         <!-- ol태그 justify-content-lg-end 클래스 삭제 : 오른쪽정렬 > 가운데 정렬 / a 태그 컬러 변경-->
                         <ol class="breadcrumb dark-link m-0 small justify-content-center"
                             style="text-align: center">
                             <li class="breadcrumb-item"><a class="text-nowrap" href="story_list.do"  style="color: #e63946;"><i
                                         class="bi bi-home"></i>향수이야기</a></li>
                             <li class="breadcrumb-item"><a class="text-nowrap" href="market_list.do" style="color: #9397AD;"><i
                                         class="bi bi-home"></i>중고거래</a></li>
                         </ol>
                     </div>
                 </div>
             </div>
         </section>
         <!-- End Page Title -->
         <!-- Section -->
         <div class="section m-auto" style="width: 800px;">
            <div class="card mt-5">
              <div class="card-header py-3">
                  <h6 class="mb-0 h4">향수이야기 글쓰기</h6>
               </div>
                 
               <div class="card-body">
                 <div class="row gy-4">
                 
                    <form method='post' name="formSave" role="formSave" enctype="multipart/form-data">
                       <div class="col-12 mb-3 input-group" style="width: 100%">
                       		
						   <input type="hidden" name="user_id" value="${sessionScope.user_id}">
                         
                          <!-- 셀렉트 -->
                          
	                          <select class="form-select" name="ps_head" style="flex:none; width: 20%;">
	                          	 <option value="질문하기">질문하기</option>
	                          	 <option value="할인 &이벤트">할인&이벤트</option>     
	                             <option value="기타">기타</option>
	                          </select>
	                           <!-- Search input -->
	                           <input class="form-control" type="text" name="ps_title" placeholder="제목" required="" />
                         
                        </div>
                        <!-- 내용 쓰는 부분-->
                        <div class="col-12">
                            <label class="form-label" for="community_form1" >
                                	내용
                            </label>
                            <textarea class="form-control" id="coumnity_form1" name="ps_content" style="height: 500px" ></textarea>
                        </div>
                        <!-- 사진첨부 -->
                        <div class="col-12">
                            <label class="form-label">
                                	사진첨부
                            </label>
                            <input class="form-control" type="file" name='file'>
                        </div>
                        <!-- 버튼 -->
                        <div class="col-12 pt-3 text-end">
                            <button class="btn btn-primary" type="submit" id="insertBtn">올리기</button>
                             <button class="btn btn-primary" type="button" onclick="location.href='story_list.do'">취소</button>
                        </div>
                    </form>
                  </div>
              </div>
           </div>
        </div>
        <!-- End Section -->
    </main>
    <!-- End Main -->
    
    <!-- Footer -->
	<jsp:include page="/WEB-INF/views/hf/footer.jsp"></jsp:include>
	<!-- End Footer -->

</body>
</html>