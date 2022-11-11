$(document).ready(function(){

    // change my page header when click header function start

    $("#myPage_myBag").click(function(){
       $("#myPage_header_myBag").css({"display" : "block"});
       $("#myPage_myBag_Section").css({"display" : "block"});
       $("#myPage_header_reWriteMyInfo").css({"display" : "none"});
       $("#myPage_inputSection").css({"display" : "none"});
       $("#myPage_myBag_myArticle_div").css({"display" : "none"});
       $("#myPage_myBag_myScrap_div").css({"display" : "none"});
    });

    $("#myPage_reWriteMyInfo").click(function(){
       $("#myPage_header_reWriteMyInfo").css({"display" : "block"});
       $("#myPage_inputSection").css({"display" : "block"});
        $("#myPage_header_myBag").css({"display" : "none"});
        $("#myPage_myBag_Section").css({"display" : "none"});
        $("#myPage_myBag_myArticle_div").css({"display" : "none"});
        $("#myPage_myBag_myReview_div").css({"display" : "none "});
        $("#myPage_myBag_myComment_div").css({"display" : "none"});
        $("#myPage_myBag_myScrap_div").css({"display" : "none"});
      });

     $("#myPage_myBag_myArticle").click(function(){
         $("#myPage_myBag_myArticle_div").css({"display" : "block"});
         $("#myPage_myBag_myReview_div").css({"display" : "none"});
         $("#myPage_myBag_myComment_div").css({"display" : "none"});
         $("#myPage_myBag_myScrap_div").css({"display" : "none"});
     });

     $("#myPage_myBag_myReview").click(function(){
        $("#myPage_myBag_myReview_div").css({"display" : "block"});
      $("#myPage_myBag_myArticle_div").css({"display" : "none"});
      $("#myPage_myBag_myComment_div").css({"display" : "none"});
      $("#myPage_myBag_myScrap_div").css({"display" : "none"});
     });

     $("#myPage_myBag_myComment").click(function(){
      $("#myPage_myBag_myComment_div").css({"display" : "block"});
      $("#myPage_myBag_myReview_div").css({"display" : "none"});
      $("#myPage_myBag_myArticle_div").css({"display" : "none"});
      $("#myPage_myBag_myScrap_div").css({"display" : "none"});
      });

      $("#myPage_myBag_scrap").click(function(){
         $("#myPage_myBag_myScrap_div").css({"display" : "block"});
         $("#myPage_myBag_myArticle_div").css({"display" : "none"});
         $("#myPage_myBag_myComment_div").css({"display" : "none"});
         $("#myPage_myBag_myReview_div").css({"display" : "none"});
      });

     // 탈퇴하기 버튼 클릭시 알림 출력
      
      $("#myPage_submitBtn2").click(function(){
    	  if(confirm("탈퇴하면 되돌릴 수 없습니다 탈퇴하시겠습니까?") == true){
    		  alert("탈퇴되었습니다.")
    	  }else{
    		  return false;
    	  }
      });
     // 탈퇴하기 버튼 클릭스 알림 출력 끝

    

      // show alert when click myPage_inputSection_changeNicknameBtn End
     
     // 이미지 미리보기 기능 시작
     
     $("#myPage_uploadProfileImg").on("change", handleImgFileSelect);
 	
		function handleImgFileSelect(e) {
	        let files = e.target.files;
	        let filesArr = Array.prototype.slice.call(files);
	
	        filesArr.forEach(function(f) {
	            if(!f.type.match("image.*")) {
	                alert("이미지 파일만 업로드 가능합니다.");
	                return false;
	            }
	
	            sel_file = f;
	
	            let reader = new FileReader();
	            reader.onload = function(e) {
	                $("#myPage_profileImgPreCheckImg").attr("src", e.target.result);
	            }
	            reader.readAsDataURL(f);
	        });
	    }
		
		 // 이미지 미리보기 기능 끝
		
		// 실시간 아이디 중복검사 기능 시작
    	$("#user_id").keyup(function(){
    		
    		  // ajax
    		$.ajax({
    			type : "post",
    			url  : "idCheck.do",
    			data : {'user_id' : $("#user_id").val() },
    			async: true,
    			contentType : 'application/x-www-form-urlencoded;charset=UTF-8',
    			success : function(resultData){
	    				if($("#user_id").val().length>0){
	    					$('#id_dup').html(resultData);
	    					$('#id_dup').css("display" , "block");
	    				}else{
	    					$('#id_dup').css("display" , "none");
	    				}
    				}
    					
    			
    		});
    			
    	});
    	// 실시간 아이디 중복검사 종료
    	
    	
    	// 실시간 이메일 중복검사 시작
    	$("#myPage_email").keyup(function(){
    		
  		  // ajax
  		$.ajax({
  			type : "post",
  			url  : "emailCheck.do",
  			data : {'email' : $("#myPage_email").val() },
  			async: true,
  			contentType : 'application/x-www-form-urlencoded;charset=UTF-8',
  			success : function(resultData){
  				
	  				if($("#myPage_email").val().length>0){
						$('#myPage_email_dup').html(resultData);
						$('#myPage_email_dup').css("display" , "block");
					}else{
						$('#myPage_email_dup').css("display" , "none");
					}
  				}
  					
  			
  		});
  	});
    	
    	
    	// 실시간 이메일 중복검사 종료    		

    	// 실시간 닉네임 중복검사 시작
    	
    	$("#myPage_nickname").keyup(function(){
    		
    		  // ajax
    		$.ajax({
    			type : "post",
    			url  : "nicknameCheck.do",
    			data : {'nickname' : $("#myPage_nickname").val() },
    			async: true,
    			contentType : 'application/x-www-form-urlencoded;charset=UTF-8',
    			success : function(resultData){
    				
	    				if($("#myPage_nickname").val().length>0){
	    					$('#myPage_nickname_dup').html(resultData);
	    					$('#myPage_nickname_dup').css("display" , "block");
	    				}else{
	    					$('#myPage_nickname_dup').css("display" , "none");
	    				}
	    				
    				}
    					
    			
    		});
    	});
    	// 실시간 닉네임 중복검사 종료
    	
    	// 마이페이지 유효성 검사 시작
    	$("#myPage_submitBtn").click(function(){
    		let regExp = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
    		
    		
    		// 아이디와 비밀번호가 같을때
    		if($("#myPage_user_id").val() == $("#user_password").val()){
    			alert("아이디와 비밀번호가 같습니다.")
    			$("#user_password").focus(); 
    			return false;
    		}
    		
    		// 아이디와 닉네임이 같을때
    		if($("#myPage_user_id").val()==$("#email").val()){
    			alert("아이디와 닉네임이 같습니다");
    			$("#myPage_nickname").focus();
    			return false;
    		}
    		
    		// 비밀번호 확인 값과 변경할 비밀번호 값이 일치하지 않을때
    		if($("#myPage_user_password").val() != $("#Account_New_Password").val()){
    			alert("비밀번호가 다릅니다");
    			$("#myPage_user_password").focus();
    			return false;
    		}
    		
    		// 비밀번호와 닉네임이 같을때
    		if($("#myPage_user_password").val()==$("#nickname").val()){
    			alert("비밀번호와 닉네임이 같습니다.");
    			$("#myPage_user_password").focus();
    			return false;
    		}
    		
    		// 비밀번호 입력칸에 공백이 있을 경우
    		if($("#myPage_user_password").val().search(/\s/) != -1){
    			alert('비밀번호에 공백이 있습니다');
    			$('myPage_user_password').focus();
    			return false;
    		}
    		
    		// 비밀번호가 숫자 or 영문 으로만 이루어져있을때
    		if($("#myPage_user_password").val().search(/[0-9]/g)<0||$("#user_password").val().search(/[a-z]/ig)<0||$("#user_password").val().search(/[~!@#$%^&*()_+|<>?:{}]/)<0){
    			alert('비밀번호는 숫자, 영문, 특수문자를 혼합하여 작성해주세요')
    			$('#myPage_user_password').focus();
    			return false;
    		}
    		
    		// 비밀번호 자릿수 설정
    		if($("#myPage_user_password").val().length<7||$("#user_password").val().length>20){
    			alert('비밀번호는 7자리 이상, 20자리 미만으로 작성해주세요');
    			$("#myPage_user_password").focus();
    			return false;
    		}
    		
    		// 닉네임에 공백이 있을 경우
    		if($("#myPage_nickname").val().search(/\s/) != -1){
    			alert('닉네임은 공백 없이 입력해주세요');
    			$('#myPage_nickname').focus();
    			return false;
    		}
    		
    		// 닉네임 자릿수 설정
    		if($("#myPage_nickname").val().length>20){
    			alert('닉네임은 20글자 미만으로 입력해주세요')
    			$("#myPage_nickname").focus();
    			return false;
    		}
    		
    		// 이메일 형식 검사	    		
    		if(!regExp.test($("#myPage_email").val())){
    			alert('유효하지 않은 이메일 주소입니다.');
    			$('#myPage_email').focus();
    			return false;
    		}
    		
    		if($("#myPage_email_dup").val() == "중복된 이메일입니다."){
        		alert("중복되는 이메일은 사용할 수 없습니다.");
        		return false;
        	}
    		
    	});
});