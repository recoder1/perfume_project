<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
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
    <link rel="shortcut icon" href="../resources/assets/img/logo_black_icon.png" >
    <!-- CSS Template -->
    <link href="../resources/assets/css/theme.css" rel="stylesheet">
    <style>
        *{
            font-family: 'Noto Serif KR', serif;
        }


        /* footer 하단 고정을 위한 값*/
       	html, body {
		    height: 100%;
		}
		main {
			min-heigth : 100%;
			max-height : 950px;
			padding-bottom : 283px;
			position: relative;	
		}
		footer {
			bottom:0;
		}
        .section {
            padding-top: 20px !important;
            width: 800px;
        }
 
        .card{
            font-size: 10pt;
            width: 800px;
            border : none;
            display: inline-block !important;   
            position: relative !important;
            margin : 5px 0 0px !important;
        }

        .form-select, .form-control {  
            display: inline-block !important;
            height: 40px;
        }

        .btn{
            width : 85px ;
            height: 42px ;
            border-radius: 3px !important ;
            display: inline-block !important;
            font-size: 9.2pt;
            padding-bottom: 20px ;
        }

        .insertBtn {
            width : 95px !important;
            height: 40px !important;
            background-color: rgba(0, 0, 0, 0.788);
            color : white;
            border: none;
            border-radius: 3px !important ;
            display: inline-block !important;
            font-size: 10pt !important;
            float : right;
            vertical-align: middle ;
        }
       
        #search {
            margin-bottom: 1px !important;
        }

        table {
            font-size: 10.2pt;
            text-align: center;
        }

        .table > :not(caption) > * > * {
            padding : 10px;
            
        }

        th {
            padding-top: 5px;
            padding-bottom: 5px;
            border-left: none;
            border-right: none ;
        }

        td {
            text-overflow: ellipsis !important;
            white-space:nowrap !important;
            overflow: hidden !important;
            max-width: 400px;
            border-left: none;
            border-right: none ;
        }
   
        tr {
            border-left: none;
            border-right: none ;
        }

        #title {
            text-align: left !important;
        }


        /* 페이지 이동 번호 */ 
        .ms-lg-auto {
            position: relative !important;
            margin : 40px 0 !important;
            display: grid !important;
            place-items: center;
        }
        
        .page-link:hover {
        	background-color: #e63946;
        	border-color: #e63946;
        	color: #fff;
        }
    </style>
    
    
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
 		$('#searchBtn').click(function() {
			var url = document.location.href;
			url= "?searchType="+$("#searchType").val()
				+"&keyword="+$("#keywordInput").val();
			location.href= url;
		});
 	});
</script>

</head>
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
                              <li class="breadcrumb-item"><a class="text-nowrap" href="story_list.do" style="color: #9397AD;"><i
                                         class="bi bi-home"></i>향수이야기</a></li>
                             <li class="breadcrumb-item"><a class="text-nowrap" href="market_list.do"  style="color: #e63946;"><i
                                         class="bi bi-home"></i>중고거래</a></li>
                           </ol>
                       </div>
                   </div>
               </div>
           </section>
           <!-- End Page Title -->
           <!-- Section -->
           <div class="section" style="width: 800px; margin: auto">

              <!-- 글쓰기 버튼 -->
              <div id="insertBtnDiv" class="card mt-5">
              	<c:if test="${not empty sessionScope.user_id}">
                  <button class="btn insertBtn" onclick="location.href='market_write.do'" >
                      	글쓰기
                  </button>
                </c:if>
              </div>

	 		<!-- 검색div -->
              <div class="card mt-5" id="search">
                 
                <select class="form-select" style="width: 140px" >
                    <option selected="">카테고리</option>
                    <option>구매</option>
                    <option>판매</option>
                </select>
                <select name="searchType" id="searchType" class="form-select" style="width: 120px">
                     <option value="all"<c:out value="${cri.searchType eq 'all' ? 'selected' : '' }"/>>전체</option>
                     <option value="title"<c:out value="${cri.searchType eq 'title' ? 'selected' : '' }"/>>제목</option>
                     <option value="user_id"<c:out value="${cri.searchType eq 'user_id' ? 'selected' : '' }"/>>작성자</option>
                     <option value="product"<c:out value="${cri.searchType eq 'product' ? 'selected' : '' }"/>>상품명</option>
                </select>
                <input class="form-control" type="text" placeholder="검색" required="" style="width: 443.03px" id="keywordInput" value="${cri.keyword}"/>
                <button type="submit" class="btn btn-primary" id="searchBtn">
                    	검색
                </button>
             </div>

              <div class="card mt-5">
                    <!-- 글 목록 테이블 -->
                    <table class="table table-bordered table-hover mb-0" >
                      <thead class="text-700 bg-gray-200" id="communityListIndex" >
                          <tr>
                              <th class="fw-600" style="width: 100px">번호</th>
                              <th class="fw-600" style="width: 120px">카테고리</th>
                              <th class="fw-600" >제목</th>
                                  <th class="fw-600" style="width: 140px">작성자</th>
                                  <th class="fw-600" style="width: 100px">작성일</th>
                                  <th class="fw-600" style="width: 72px">조회</th>
                          </tr>
                      </thead>
                      <tbody class="border-top-0">
                      	<c:forEach items="${list_m}" var="market">
                          <tr>
                              <td style="width: 50px">${market.m_article_id }</td>
                              <td style="width: 80px">${market.m_head }</td>
                              <td id="title" style="width: 800px; height: 20px;">
                              	<a href="market_view.do?m_article_id=${market.m_article_id }&page=${cri.page}&perPageNum=${cri.perPageNum}&searchType=${cri.searchType}&keyword=${cri.keyword}"> 
                              	${market.m_title }	
                              	<c:if test="${market.m_commCnt > 0}">
									<small>(${market.m_commCnt})</small>
								</c:if>						
								</a>
                              </td>
                              <td id="writer" style="width: 100px">${market.user_id }</td>
                              <td style="width: 80px"><fmt:formatDate value="${market.m_date }" pattern="yyyy.MM.dd"/></td>
                              <td style="width: 50px">${market.m_count }</td>
                          </tr>
						</c:forEach>
                      </tbody>
                  </table>  
            </div> 

           <!-- 페이징 페이지번호 버튼-->
           <div class="ms-lg-auto">
              <ul class="pagination m-0">
			     <c:if test="${pagemaker_m.prev }">
					<li class="page-item">
					<a class="page-link" aria-label="Previous" href="market_list.do?${pagemaker_m.makeSearch(pagemaker_m.startPage -1)}">«</a></li>
 				 </c:if>
 				 
              	<c:forEach begin="${pagemaker_m.startPage}" end="${pagemaker_m.endPage}" var="pageNum">
                  <li class="page-item"><a class="page-link" href="market_list.do${pagemaker_m.makeSearch(pageNum)}">${pageNum }</a></li>
             	<!-- 클래스명에  active 달기-->
             	</c:forEach>
             	
             	<c:if test="${pagemaker_m.next && pagemaker_m.endPage >0 }">
	                <li class="page-item">
	                   <a class="page-link" href="market_list.do${pagemaker_m.makeSearch(pagemaker_m.endPage+1)}">»</a>
	                </li>
   				</c:if>
              </ul>
          	</div>
          </div>
          <!-- End Section -->
      </main>
        <!-- End Main -->
        
       <!-- Footer -->
       <jsp:include page="/WEB-INF/views/hf/footer.jsp"></jsp:include>
                  
</body>
</html>