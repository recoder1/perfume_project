<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
    <title>오드비 - Eau de Vie</title>zz
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

        .section {
            padding-top: 0;
            font-size:11pt;
        }

        .card{
            font-size: 10pt;
            display: inline-block;
        }

        .mt-5 {
            margin: 25px 0px 10px!important;
        }
    
        /* 전체글 조회 버튼 */
        #allListBtn {
            border: none;
            margin-top: 10px !important;
            margin-bottom: -7px !important;
            float: right;
        }
            
        .btn{
            width : 130px !important;
            height: 42px;
            font-size: 9pt !important;   
            border-radius: 3px ;
        }

        th, td, tr {
            padding-top:12px !important;
            padding-bottom: 12px !important;
            padding-left: 60px !important;
            padding-right: 60px !important;
            height: 28px !important ;
            border-left: none;
            border-right: none;
            vertical-align: middle;
        }

        .table {
            --bs-table-hover-bg: transparent;
            width: 798px;
            table-layout:fixed;

        }

        td {
            border-style: hidden !important;
            padding-left: 40px ;
            padding-right: 40px ;
        }

        .mainText {
            padding: 30px 50px 35px!important;
            font-size : 12.7pt;
        }

        #fw-600 {
            width: 180px;
            text-align: center;
        }

        #deleteBtn, #modifyBtn, #delCommBtn, #modCommBtn, .main-header-01 {
            float: right;
            margin: 2px;
            padding : 1px;
        }

	
/*         #reportBtn, #scrapBtn { */
/*             float: right; */
/*             margin: 2px; */
/*         } */

        /* 댓글 */
        #commList td {
            padding: 10px !important;         
            text-align: center;
            font-size: 14.8px;   
        }
        #commList .psc_content {
            text-align: left;
            font-size: 13.2px;
        }
         #commList .psc_date {
            font-size: 12.5px;
        }
       
   
        .btn-sm {
            height: 28px;
            width : 48px !important;
            background-color: white;
            padding: 1px;
        }
    
        #insertBtn {
            width: 100% !important;
            padding-top: 1px;
            padding-bottom: 4px;
            background-color: #e2e3e7;
            border-color: #9397AD;
            margin-bottom: 8px;
        }
        
		/* 본문 줄바꿈 */
        pre {
        	font-family: 'Noto Serif KR', serif; 
        	white-space: pre-wrap;
        	margin-bottom : -3px;
        }
        
        
        

    </style>
</head>


<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	
		var formObj = $("form[name='viewForm']");

		// 삭제
		$('#deleteBtn').on("click", function(){
			var deledtck = confirm("정말 삭제할까요?")
			
			if(deledtck){
				formObj.attr("action", "deleteBoard.do");
				formObj.attr("method", "post");
				formObj.submit();
			}else{
				return false;
			}
		})
		
		// 수정
		$('#modifyBtn').on("click", function(){
			formObj.attr("action", "story_modify.do");
			formObj.attr("method", "get");
			formObj.submit();
		})
		
		// 파일 다운
		$('#fileDown').on("click", function(){
			 $('#ps_fname').attr("value",ps_fname);
		      formObj.attr("action","fileDown.do");
		      formObj.submit();
		})
		
		// 전체글 보기버튼
		$('#allListBtn').on("click", function(){
			
			var listurl = "story_list.do?page=${cri.page}"+ "&perPageNum=${cri.perPageNum}"
			+"&searchType=${cri.searchType}" +"&keyword=${cri.keyword}";
			
			location.href = listurl;
		})
		
	
	// 댓글 -----
		commentList();	
		
		// 댓글 목록
		function commentList(){
			
			var html = "";
			
			$.ajax({        
				url : 'commList.do',        
				type : 'POST',     
				dataType: 'json',   
				data : { 
					'ps_article_id': $('#ps_article_id').val()
				},       
				success : function(data){                     
				    $(data).each(function(){
						$('#commList').append(   
							'<tr>'
								+'<td class="psc_user_id">'
									+'<i class="fi-user" name="psc_user_id"> </i>'+(this.psc_user_id)
								+'</td>'
								+'<td id="psc_content'+(this.psc_comment_id)+'" class="psc_content">'
									+(this.psc_content)
								+'</td>'
								+'<td class="psc_date">'
									+(this.psc_date)
								+'</td>'
								+'<td id="modifyDelete'+(this.psc_comment_id)+'">'
			                    +'</td>'
		                    +'</tr>'
						);
						
						// 로그인 아이디와 작성자 아이디가 같을 경우만 append 수정 취소 버튼
						if( $('#logUser_id').val() == (this.psc_user_id) ){
							$('#modifyDelete'+(this.psc_comment_id)).append(
									'<button class="btn btn-sm w-100 btn-outline-dark modCommBtn">수정</button>'
		                        	+'<button class="btn btn-sm w-100 btn-outline-dark delCommBtn">삭제</button>'
		                        	+'<input type="hidden" value="'+(this.psc_comment_id)+'">'
							);
						}      
					})  				
				}	
			}); // ajax 끝
		}// commentList() 끝
		

		// 댓글 등록
		$('#insertBtn').click(function(){
			
			if( $('#logUser_id').val() == ""){ // footer에 로그인 아이디 저장되어 있음
				alert("로그인 후 이용해 주세요");
				$('.psc_content').val(''); // 댓글 창 지우기
				return false;
			}else if($("#psc_content").val().trim() ==''){ // 내용 입력 확인, 내용 없을 때 등록 안 됨
				alert("내용을 써주세요.");
				$("#psc_content").focus();
	    		return false;
			} 
			
			// 댓글 등록 logUser_id
			$.ajax({
				url: 'insertComm.do',
				type: 'POST',			
				data:{ "ps_article_id" : $('#ps_article_id').val(),
						"psc_user_id": $('#logUser_id').val(), // footer에 로그인 아이디 적혀있음
						"psc_content": $('#psc_content').val(), 
						
				},
				success : function(){
					$('#commList').empty(); // 댓글 테이블 삭제
					commentList();
					$('#psc_content').val('');
				}						
					 	
			});
			return false;	// submit 전송되지 않도록 막아줌
	    })
	    
	    
	    
		// 댓글 삭제
		$('#commList').on("click",".delCommBtn", function(){
			var msg = confirm('댓글을 삭제하시겠습니까?');
			if(msg){ // 확인 눌렀을 때
				$.ajax({
					url: 'deleteComm.do',
					type: 'POST',
					data: { 'psc_comment_id' : $(this).next().val(),
							'ps_article_id' :  $('#ps_article_id').val()
						},
					success: function(){
						$('#commList').empty();
						commentList();
					}
				});
			
			}else{
				return false; // 삭제 취소
			}
			
		})
		
		
		// 댓글 수정
		$('#commList').on("click",".modCommBtn", function(){
			if( $("textarea[id^='stCommText']").length ){ // input 태그가 있다면
				alert("댓글 수정을 마무리 해주세요");
			}else{
				// 댓글 번호
				var psc_comment_id = $(this).next().next().val();
				// 댓글 내용
				var psc_content = $('#psc_content'+psc_comment_id).html();
				//댓글 수정 폼
				$('#psc_content'+psc_comment_id).html(
					"<textarea id='stCommText"+psc_comment_id+"' style='width:100%; overflow:visible;'></textarea>"
				)
				$('#stCommText'+psc_comment_id).val(psc_content).focus();
				// 수정 삭제 btn >> 등록 취소 btn
				$('#modifyDelete'+psc_comment_id).html(
						'<button id="stReUpdBtn" class="btn btn-sm w-100 btn-outline-dark" ex="'+psc_comment_id+'">등록</button>'
                       	+'<button id="stReCanBtn" class="btn btn-sm w-100 btn-outline-dark">취소</button>'
                       	+'<input type="hidden" value="'+(this.psc_comment_id)+'">'
				);
			};
		});
		
		// 댓글 수정 >> 등록 버튼 눌렀을 때
		$('#commList').on("click","#stReUpdBtn", function(){
			$.ajax({
				url: 'updateComm.do',
				type: 'post',
				data: {
					'psc_comment_id' : $(this).attr('ex'), // 댓글 번호
					'psc_content' : $("textarea[id^='stCommText']").val() // 댓글 수정 내용
				},
				success: function(){
					$('#commList').empty(); // 댓글 테이블 삭제
					commentList();
				}
			});
		});
		
		// 댓글 수정 >> 취소 버튼 눌렀을 때
		$('#commList').on("click","#stReCanBtn", function(){
			$('#commList').empty(); // 댓글 테이블 삭제
			commentList();
		});
		
		
		
	    
	
		
});
	

	

</script>
	

<body>
     <!-- 헤더 -->
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
                                <li class="breadcrumb-item"><a class="text-nowrap" href="story_list.do" style="color: #e63946;""><i
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
            <div class="section" style="width: 800px; margin: auto">
            
				<!-- 게시글 번호 -->
				<input id="ps_article_id" type="hidden" value="${board.ps_article_id}">
				<!-- 로그인 유저 아이디 -->
		
            	
                <div class="card mt-5" id="allListBtn">
                    <button class="btn btn-primary" id ="allListBtn" >
                    <!-- onclick="location.href='story_list.do'" -->
                        	전체글 보기
                    </button>
                </div>
                <div class="card mt-5">
                	<form name="viewForm" role="form" method="post">
                	
                		<!-- 파일 다운로드를 위함 -->
                		<input type="hidden" name="ps_fname" id="ps_fname" value=""/>
	                	
	                	<!-- url 설정을 위한 설정값 -->
	                	<input type="hidden" name="ps_article_id" value="${board.ps_article_id}"/>
	               		<input type="hidden" name="page" value="${cri.page}"/>
	               		<input type="hidden" name="perPageNum" value="${cri.perPageNum}"/>
	               		<input type="hidden" name="searchType" value="${cri.searchType}"/>	
	               		<input type="hidden" name="keyword" value="${cri.keyword}"/>
	               
	                    <table class="table table-bordered table-hover mb-0" >
	                        <thead class="text-700 bg-gray-200" id="communityListIndex" >
	                            <tr class="titleWriter">
	                                <th class="fw-600" id="fw-600">제목</th>
	                                <th class="fw-600" colspan="2" name="ps_title">${board.ps_title }</th>
	                            </tr>
	                            <tr class="titleWriter">
	                                <th class="fw-600" id="fw-600">작성자</th>
	                                <th class="fw-600" colspan="2" >${board.user_id }</th>
	                            </tr>
	                            <tr class="writeDate">
	                                <th class="fw-600" id="fw-600">작성일</th>
	                                <th class="fw-600" id="writeDate"><fmt:formatDate value="${board.ps_date }" pattern="yyyy.MM.dd"/></th>
	                                <th class="fw-600" id="modifyDelete">
		                            	<!-- 포스트 수정 /삭제 버튼 >> 로그인 아이디랑 포스트 작성자랑 같을 경우만 버튼 뜸 -->
										<c:if test="${sessionScope.user_id eq board.user_id}">
	                                       <button class="btn btn-sm w-100 btn-outline-dark" id="deleteBtn">삭제</button>
	                                       <button class="btn btn-sm w-100 btn-outline-dark" id="modifyBtn">수정</button>
	                                     </c:if>
	                                </th>
	                            </tr>
	                        </thead>
		
		                        <!-- 본문 들어가는 곳-->
		                    <tbody class="border-top-0" >
		                    	<tr>
		                            <td colspan = "3">
			                            <c:choose>
										    <c:when test="${board.ps_fname != null }">
										   		<!-- 파일이 있다면 실행할 로직 -->
										   		<img src="../resources/assets/upload/codingisveryhard.jpg">
										   		<a href="#" id="fileDown" onclick="fileDown('${board.ps_fname }'); return false;">${board.ps_fname }</a>
										    </c:when>			
										</c:choose>
		                            </td>                 
		                        </tr>
		                     
		                        <tr>
		                            <td colspan = "3" class="mainText">
		                            	<c:choose>
										    <c:when test="${board.ps_fname != null }">
										   		<!-- 파일이 있다면 실행할 로직 -->
										   		<img src="../resources/assets/upload/${board.ps_fname_en}"><br/><br/>
										    </c:when>			
										</c:choose>   
			                            <pre style="min-height : 230px !important">${board.ps_content }</pre>
			                        </td>                 
		                        </tr>
<!-- 		                        <tr> -->
<!-- 	                            	<td colspan = "3"> -->
<!-- 	                                	<div class="main-header-01" > -->
<!-- 		                                    <button class="btn btn-sm w-100 btn-outline-dark" id= "reportBtn">신고</button> -->
<!-- 		                                    <button class="btn btn-sm w-100 btn-outline-dark" id="scrapBtn">스크랩</button> -->
	                             
<!-- 	                                	</div> -->
	                                
<!-- 	                            	</td> -->
<!-- 	                        	</tr> -->
	                    	</tbody>
	                	</table> <!-- 본문 끝 -->
					</form>
					
                <!-- 댓글 목록 테이블-->
                
                <table class="table table-bordered table-hover mb-0" >
	                <thead class="text-700 bg-gray-200" >
                        <tr>
                            <th class="fw-600" id="fw-600">댓글</th>
                            <th colspan="3" class="fw-600"></th>
                        </tr>
	                 </thead> 
                    <thead class="text-700 bg-gray-200 comment" id="commList">
                    
                    </thead> 
               </table>
           	
            	<form id="insertCommForm" action="insertComm.do" >
            	
            		<input type="hidden" name="ps_article_id" value="${board.ps_article_id}"/>
    
	                 <div class="bg-gray-200">
	                    <div class="fw-600" id="commentText" >
	                        <textarea class="form-control" id="psc_content" name="psc_content" placeholder="댓글을 남겨주세요"></textarea>
	                       	<button class="btn btn-sm w-100 btn-outline-dark" id="insertBtn">입력</button> 
	                    </div>
                   </div>
              </form>
        
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