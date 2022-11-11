$(function() {


	// 리뷰 업로드
	$('#review-upload').click(function() {	    	
		
	    var form = $('#review_upload')[0];
	    
	    var data = new FormData(form);

			if($('#review-text').val().trim() == ""){
				alert('리뷰를 입력해주세요');
			}else{
				
				$.ajax({
					type: 'post',
					enctype: 'multipart/form-data',   
					url: 'review_upload.do',
					data : data,
					processData: false,    
			        contentType: false,     
					async:true,
					success: function(data) {
						
						location.reload();
		
					
						$('#review-text').val('');				
		            
						
						
					},
					error :function(request, status, error){       //요청 실패시 에러 확인을 위함
			              alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			              alert("리뷰를 입력해주세요");
			        }
					
				}); // ajax 끝
			}
//	    }
//		}
		
		$('#review-text').val('');
		
	})// 리뷰 업로드 끝
	
	
	// 리뷰 삭제
	$('.review_delete_btn').click(function() {
		var msg = confirm('리뷰를 삭제 하시겠습니까?');
		
		if(msg){
			
			$.ajax({
				type: 'post',
				url: 'review_delete.do',
				data:{
					'review_id' : $(this).parent().parent().nextAll('input[name=review_id]').val(),
					'productid' : $(this).parent().parent().nextAll('input[name=productid]').val()
					},
				async:true,
				success: function(data) {
					location.reload();
					
				},
				error :function(request, status, error){       //요청 실패시 에러 확인을 위함
		              alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		        }			
			})// ajax 끝
		
		}else{
			return false;
		}
	})// 리뷰 삭제 끝
	
	// 리뷰 수정
	$('.review_update_btn').click(function() {
		
		re_id = $(this).parent().parent().nextAll('input[name=review_id]').val();
		
		$('.re_update_btn').click(function() {
			
		
			$.ajax({
				
			
				type: 'post',
				url: 'review_update.do',
				data:{
					'review_id' : re_id,
					're_content' : $('.re_update_text').val()
					},
				async:true,
				success: function() {
					location.reload();
					
				},
				error :function(request, status, error){       //요청 실패시 에러 확인을 위함
		              alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		        }
				
				
			});//ajax 끝
		})
	})// 리뷰 수정 끝
	
	
	
	$('.review_full').click(function() {
		
		if($('.review_full').text() == "리뷰 전체보기"){
			$('.review_full').text("리뷰 줄이기");
		}else{
			$('.review_full').text("리뷰 전체보기");
		}
		
		$('.review-box2').toggle().toggleClass('d-flex');
		
	})
	
	// 페이지 클릭했을 때  왜 안돼
	const urlParams = new URL(location.href).searchParams;
	const page = urlParams.get('page');
	
    console.log(page);
    
    $('.page-link').filter(":contains("+page+")").eq(0).parent('.page-item').addClass('active');
    	
	// 검색
	$(function(){
 		$('#searchBtn').click(function() {
			var url = document.location.href;
			url= "?brand=all"
				+"&keyword="+$("#keywordInput").val();
			location.href= url;
		});
 	});
	
	
	// 이미지 미리 보기
    $("input[type=file]").on("change", function(){
    	
       var file = event.target.files[0];
       var reader = new FileReader();
       reader.onload = function(e){
          
          $('#post_img').attr("src", e.target.result);
       }
       reader.readAsDataURL(file);
    })
	

	// 향수공부 브랜드
    $('.dropdown-item').click(function() {
    	
    	if($(this).text() == '전체보기'){
    		$('section').css('display', 'block');
    	}else{
    		
	    	var brand = $(this).text();
	    	brand = brand.replace(/\s/g, "-").toLowerCase();
	    	brand = brand.replace("+", "-").toLowerCase();
	    	brand = brand.replace("è", "e").toLowerCase();
	    	$('.section').css('display', 'none');
	    	$("."+brand).css('display', 'block');
    	}
    });
	
	
	
	
	
	
	
	
	
	
	
	
	
})















