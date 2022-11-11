<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx" class="dark">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

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
        
        .col-md-12 {
        	padding-top : 18px !important;
        }
       
        .btn-outline-dark {
        	width : 130px;
        	height : 45px;	
        	border-color : #c0c1c3;
        	border-radius: 2px;
        }
        
        
    </style>
    
</head>

<script type="text/javascript">
   
    $(document).ready(function(){
		
		// 상품상태 체크
		if( $('label[for="condition1"]').text() == $('#mm_use').val() ){
			$('label[for="condition1"]').prev().attr('checked', true);
		}else if( $('label[for="condition2"]').text() == $('#mm_use').val() ){
			$('label[for="condition2"]').prev().attr('checked', true);
		}else if( $('label[for="condition3"]').text() == $('#mm_use').val() ){
			$('label[for="condition3"]').prev().attr('checked', true);
		}
		
		// 거래방식 체크
		if( $('label[for="condition4"]').text() == $('#mm_saleway').val() ){
			$('label[for="condition4"]').prev().attr('checked', true);
		}else if( $('label[for="condition5"]').text() == $('#mm_saleway').val() ){
			$('label[for="condition5"]').prev().attr('checked', true);
		}else if( $('label[for="condition6"]').text() == $('#mm_saleway').val() ){
			$('label[for="condition6"]').prev().attr('checked', true);
		}
		
		// 거래상태 체크
		if( $('label[for="condition7"]').text() == $('#mm_status').val() ){
			$('label[for="condition7"]').prev().attr('checked', true);
		}else if( $('label[for="condition8"]').text() == $('#mm_status').val() ){
			$('label[for="condition8"]').prev().attr('checked', true);
		}
		
		$("#updateBtn").click(function(){
			
			if ($('input[name="m_title"]').val() == "") {
				alert("글 제목을 입력해주세요");
				$('input[name="m_title"]').focus();
				return;
			}
			if ($('input[name="m_title"]').val().length > 100 ){
				alert('제목은 100자 이내로 작성해주세요');
				$('input[name="m_title"]').focus();
				return false;
			} 
	
			if ($('input[name="m_product"]').val() == "" ){
				alert('상품명을 입력해주세요');
				$('input[name="m_product"]').focus();
				return false;
			} 
			
			if ($('input[name="m_pastprice"]').val() == "" ){
				alert('실구매가를 입력해주세요');
				$('input[name="m_pastprice"]').focus();
				return false;
			} 
			
			if ($('input[name="m_saleprice"]').val() == "" ){
				alert('희망가격을 입력해주세요');
				$('input[name="m_saleprice"]').focus();
				return false;
			} 
			
			if ($('input[name="m_purdate"]').val() == "" ){
				alert('구매날짜를 입력해주세요');
				$('input[name="m_purdate"]').focus();
				return false;
			} 
			
			if ($('input[name="m_expdate"]').val() == "" ){
				alert('유통기한을 입력해주세요');
				$('input[name="m_expdate"]').focus();
				return false;
			} 
			
			if ($('input[name="m_place"]').val() == "" ){
				alert('구매처를 입력해주세요');
				$('input[name="m_place"]').focus();
				return false;
			} 
			
			if ($('input[name="m_brand"]').val() == "" ){
				alert('브랜드를 입력해주세요');
				$('input[name="m_brand"]').focus();
				return false;
			} 
			
			if ($('input[name="m_size"]').val() == "" ){
				alert('용량을 입력해주세요');
				$('input[name="m_size"]').focus();
				return false;
			} 
	
			if($('input[name="m_use"]:radio:checked').length < 1 ){
				alert("상품상태를 선택해주세요");
				$('input[name="m_use"]').focus();
				return false;
			}
			
			if($('input[name="m_saleway"]:radio:checked').length < 1 ){
				alert("거래방식을 선택해주세요");
				$('input[name="m_saleway"]').focus();
				return false;
			}
			
			if($('input[name="m_status"]:radio:checked').length < 1 ){
				alert("거래상태 선택해주세요");
				$('input[name="m_status"]').focus();
				return false;
			}
			
			if ($('textarea[name="m_content"]').val().length > 1300 ){
				alert('내용은 1300자 이내로 작성해주세요');
				$('input[name="m_content"]').focus();
				return false;
			}
			
			document.formUpdate.action="updateMarket.do";
			document.formUpdate.submit();
		});
		
	});	
   
</script>

<body>
	<!-- 상품 상태 -->
	<input id="mm_use" type="hidden" value="${market.m_use}">
	<!-- 거래 방식 -->
	<input id="mm_saleway" type="hidden" value="${market.m_saleway}">
	<!-- 거래 상태 -->
	<input id="mm_status" type="hidden" value="${market.m_status}">
	
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
                             <li class="breadcrumb-item"><a class="text-nowrap" href="story_list.do" style="color: #9397AD;"><i
                                         class="bi bi-home"></i>향수이야기</a></li>
                             <li class="breadcrumb-item"><a class="text-nowrap" href="market_list.do" style="color: #e63946;"><i
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
                      <h6 class="mb-0 h4">중고거래 글쓰기</h6>
                  </div>
                  <div class="card-body">
                      <div class="row gy-4">
                      
                      <!-- form -->
                      <form name="formUpdate" role="formUpdate" enctype="multipart/form-data" method="post">
                          <div class="col-12 mb-3 input-group" style="width: 100%">
                          <input type="hidden" name="m_article_id" value="${market.m_article_id}"></input>
						   <input type="hidden" name="user_id"></input>
                             <!-- 셀렉트 -->
                               <select class="form-select" name="m_head" style="flex:none; width: 20%;">
                                   <option value="판매하기">판매하기</option>
                                   <option value="구매하기">구매하기</option>
                               </select>
                               <!-- Search input -->
                               <input class="form-control" type="text" name="m_title" placeholder="제목" value="${market.m_title}">
                           </div>
                           
                           <!-- 내용 -->
                           <div class="col-12 col-md-12">
	                           <label class="form-label" for="market_write3" style="display:block" >
	                                 	상품명
	                           </label>
                               <input class="form-control" id="market_write2" type="text" name="m_product" value="${market.m_product}" placeholder="상품명">
                           </div>
                           <div class="col-12 col-md-12">
                              <label class="form-label" for="market_write3" style="display:block;">
                                 	실구매가
                              </label>
                              <input class="form-control" id="market_write3" type="text" name="m_pastprice" value="${market.m_pastprice}" 
	                              placeholder="구매한 가격을 입력해주세요" style="display:inline; width:230px;"
	                              onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" />
                              <span> 원</span>
                           </div>
                           <div class="col-12 col-md-12">
                               <label class="form-label" for="market_write4" style="display:block;">
                                   	희망판매가
                                </label>
                                <input class="form-control" id="market_write4" type="text" name="m_saleprice" 
                                	placeholder="희망 판매가격을 입력해주세요" value="${market.m_saleprice}" style="display:inline; width:230px;"
                                	onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" />
                                <span>원</span>
                           </div>
                           
                           <div class="col-12 col-md-12">
                               <label class="form-label" for="market_write5">
                                   	구매날짜
                               </label>
                               <input class="form-control" id="market_write5" type="date" name="m_purdate" value="${market.m_purdate}" style="width: 230px;">
                           </div>
                           <div class="col-12 col-md-12">   	
                               <label class="form-label" for="market_write6">
                                   	유통기한
                               </label>
                               <input class="form-control" id="market_write6" type="date" name="m_expdate" value="${market.m_expdate}" style="width: 230px;">
                           </div>
                           
                           <div class="col-12 col-md-12">
                               <label class="form-label" for="market_write7">
                                   	구매처
                               </label>
                               <input class="form-control" id="market_write7" type="text" name="m_place" placeholder="구매처를 입력해주세요"  value="${market.m_place}">
                           </div>
                           <div class="col-12 col-md-12">
                               <label class="form-label" for="market_write8">
                                  	 브랜드
                               </label>
                               <input class="form-control" id="market_write8" type="text" name="m_brand" placeholder="브랜드를 입력해주세요"  value="${market.m_brand}">
                           </div>
                           <div class="col-12 col-md-12">
                               <label class="form-label" for="market_write9" style="display:block; ">
                                  	 용량
                               </label>
                               <input class="form-control" id="market_write9" type="text" name="m_size" 
                               	placeholder="용량을 입력해주세요" value="${market.m_size}" style="display:inline; width: 230px"
                               	onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" />
                                <span> ml</span>
                           </div>
                           <div class="col-12 col-md-12">
                               <label class="form-label" for="market_write10">
                                   	상품상태(사용감)
                               </label>
                               <!-- 내가 선택한거에 input checked 되야함 -->
                               <div class="btn-group-toggle" data-bs-toggle="buttons" >
                                   <input type="radio" class="btn-check" name="m_use" id="condition1" value="미개봉">
                                   <label class="btn btn-outline-dark" for="condition1">미개봉</label>
                                   <input type="radio" class="btn-check" name="m_use" id="condition2" value="거의 새것">
                                   <label class="btn btn-outline-dark" for="condition2">거의 새것</label>
                                   <input type="radio" class="btn-check" name="m_use" id="condition3" value="사용감있음">
                                   <label class="btn btn-outline-dark" for="condition3">사용감있음</label>
                               </div>
                           </div>
                           <div class="col-12 col-md-12">
                               <label class="form-label" for="market_write11" >
                                   	거래방식
                               </label>
								<div class="btn-group-toggle" data-bs-toggle="buttons">
	                               <input type="radio" class="btn-check" name="m_saleway" id="condition4" value="택배">
	                               <label class="btn btn-outline-dark" for="condition4">택배</label>
	                               <input type="radio" class="btn-check" name="m_saleway" id="condition4" value="직거래">
	                               <label class="btn btn-outline-dark" for="condition5">직거래</label>
	                               <input type="radio" class="btn-check" name="m_saleway" id="condition6" value="기타">
	                               <label class="btn btn-outline-dark" for="condition6">기타</label>
                           	   </div>
                           </div>
                           <div class="col-12 col-md-12">
                               <label class="form-label" for="market_write12">
                                   	상세설명
                               </label>
                               <textarea class="form-control" id="market_write12" type="text" name="m_content" placeholder="판매하실 상품에 대해 알려주세요" required=""  value="${market.m_content}"></textarea>
                           </div>
                           <div class="col-12 col-lg-12" style="padding-top:10px;">
                                <label class="form-label">거래상태 선택</label>
                                <div class="btn-group-toggle" data-bs-toggle="buttons">
	                                <input type="radio" class="btn-check" name="m_status" id="condition7" value="희망">
	                                <label class="btn btn-outline-dark" for="condition7">희망</label>
	                                <input type="radio" class="btn-check" name="m_status" id="condition8" value="완료">
                                	<label class="btn btn-outline-dark" for="condition8">완료</label>
                                </div>
                           </div>
                           <div class="col-12 col-md-12">
                               <label class="form-label">
                                   	사진첨부
                               </label>
                               <input class="form-control" name="file" type="file" >
                           </div>
                           <div class="col-12 pt-3 text-end">
                              <!-- Button -->
                              <button class="btn btn-primary" type="button" id="updateBtn">올리기</button>
                           	  <button class="btn btn-primary" type="button" onclick="location.href='market_list.do'">취소</button>
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
    
</body>
</html>