$(document).ready(function(){
	
	let sel_file;
	
	// 업로드한 이미지 미리보기 기능 시작
	$("#SignUp_uploadProfileImg").on("change", handleImgFileSelect);
	
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
	                $("#SignUp_profileImgPreCheckImg").attr("src", e.target.result);
	            }
	            reader.readAsDataURL(f);
	        });
	    }
	
		
	// 업로드한 이미지 미리보기 기능 종료
	
	// modal function start
		
//		function wrapWindowByMask(){
//			
//			let maskHeight = $(document).height();
//			let maskWidth = $(window).width();
//			
//			$("#SignUp_mask").css({'width' : maskWidth, 'height' : maskHeight});
//			$("#SignUp_mask").fadeIn(1000);
//			$("#SignUp_mask").fadeTo("slow", 1);
//			
//			$("#SignUp_termsModal").show();
//		}
//		
//		$("#SignUp_termsClick").click(function(e){
//			e.preventDefault();
//			wrapWindowByMask();
//		});
//		
//		$("#SignUp_termsClose").click(function(e){
//			e.preventDefault();
//			$("#SignUp_mask, #SignUp_termsModal").fadeOut(1000);
//		});
	// modal function end
	
	// 유효성 검사 관련 기능 시작
	// 번호 입력할때 하이픈 자동 삽입
	$("#tel").on("keyup", function(){
		$(this).val( $(this).val().replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-") );
	});
	
	// 회원 가입 약관 관련 기능 시작
	
		// 회원가입 페이지 들어왔을때 약관 체크박스 체크해제
	$("#form2Example3").prop('checked', false);
	
		// 약관 체크박스 그냥 클릭하면 약관 읽으라고 함
	$("#form2Example3").click(function(){
		$("#form2Example3").prop('checked', false);
		alert("약관 버튼을 클릭하여 약관을 읽어주세요");
	});
	
		// 약관 링크 누르면 체크박스 체크
	$("#SignUp_termsClick").click(function(){
		$("#form2Example3").prop('checked', true);
	});
	
	// 회원 가입 약관 관련 기능 종료
	
	
	
	
		



     // make event when click "Create Account Btn"
    	//--------------------------유효성 검사 시작
    	$("#SignUp_createAccountBtn").click(function(){
    		
    		// 유효성 검사용 변수
    		let trimUsrIdVal = $.trim($("#user_id").val());
    		let trimUsrPwVal = $.trim($("#user_password").val());
    		let usrIdVal = $("#user_id").val();
    		let usrPwVal = $("#user_password").val();
    		let usrEmailVal = $("#email").val();
    		let usrNicknameVal = $("#nickname").val();
    		let usrNameVal = $("#name").val();
    		let usrTelVal = $("#tel").val();
    		let booleanFalse = false;
    		let idDup = $("#id_dup").text();
    		let emailDup = $("#email_dup").text();
    		let nicknameDup = $("#nickname_dup").text();
    		var regExp = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
    		
    		
    		
    		
    		
    		// 아이디 유효성 검사 시작
    		
    				// 아이디 입력칸이 공백일 경우
	    		if(usrIdVal==''){
	    			alert('아이디를 입력해주세요');
	    			$('#user_id').focus();
	    			return false;
	    		}
	    		
	    		
	    			// 아이디 입력값에 공백이 있을 경우
	    		if(usrIdVal.search(/\s/) != -1){
	    			alert('아이디는 공백 없이 입력해주세요');
	    			$('#user_id').focus();
	    			return false;
	    		}
	    		
	    			// 비밀번호랑 아이디가 같을 경우
	    		if(usrIdVal==usrPwVal){
	    			alert('비밀번호와 아이디가 같습니다');
	    			$('#user_id').focus();
	    			return false;
	    		}
	    		
	    			// 아이디가 30자가 넘어갈경우
	    		if(usrIdVal.length>30){
	    			alert('아이디는 30자 미만으로 입력해주세요');
	    			$('#user_id').focus();
	    			return false;
	    		}
	    		
	    		// 아이디가 중복일 경우
	    		if(idDup=="중복된 ID 입니다."){
	    			alert("중복된 ID 로는 가입할 수 없습니다.");
	    			$("#user_id").focus();
	    			return false;
	    		}
    		
	    		
	    		
	    		// 아이디 유효성 검사 종료
	    		
	    		// 비밀번호 유효성 검사 시작
	    		
	    			// 비밀번호 입력칸이 공백일 경우
	    		if(usrPwVal==''){
	    			alert('비밀번호를 입력해주세요');
	    			$('#user_password').focus();
	    			return false;
	    		}
	    		
	    			// 비밀번호 확인칸에 값이 없을 경우
	    		if($("#user_password2").val()==''){
	    			alert('비밀번호 확인칸에 비밀번호를 입력해주세요');
	    			$('#user_password2').focus();
	    			return false;
	    		}
	    		
	    			// 비밀번호 확인란과 비밀번호칸의 값이 다를 경우
	    		if(usrPwVal != $('#user_password2').val()){
	    			alert('비밀번호가 다릅니다!');
	    			$('#user_password').focus();
	    			return false;
	    		}
	    		
	    			// 비밀번호 입력값에 공백이 있을 경우
	    		if(usrPwVal.search(/\s/) != -1){
	    			alert('비밀번호에 공백이 있습니다');
	    			$('user_password').focus();
	    			return false;
	    		}
	    		
	    			// 비밀번호가 숫자 or 영문 으로만 이루어져있을때
	    		if(usrPwVal.search(/[0-9]/g)<0||usrPwVal.search(/[a-z]/ig)<0||usrPwVal.search(/[~!@#$%^&*()_+|<>?:{}]/)<0){
	    			alert('비밀번호는 숫자, 영문, 특수문자를 혼합하여 작성해주세요')
	    			$('#user_password').focus();
	    			return false;
	    		}
	    		
	    			// 비밀번호 자릿수 설정
	    		if(usrPwVal.length<7||usrPwVal.length>20){
	    			alert('비밀번호는 7자리 이상, 20자리 미만으로 작성해주세요');
	    			$("#user_password").focus();
	    			return false;
	    		}
	    		
	    		
	    		// 비밀번호 유효성 검사 종료
	    		
	    		// 닉네임 유효성 검사 시작
	    		
	    			// 닉네임 입력칸이 공백일 경우
	    		if(usrNicknameVal == ''){
	    			alert('닉네임을 입력해주세요');
	    			$('#nickname').focus();
	    			return false;
	    		}
	    		
	    			// 닉네임에 공백이 있을 경우
	    		if(usrNicknameVal.search(/\s/) != -1){
	    			alert('닉네임은 공백 없이 입력해주세요');
	    			$('#nickname').focus();
	    			return false;
	    		}
	    		
	    			// 닉네임이 비밀번호와 같을 경우
	    		if(usrNicknameVal==usrPwVal){
	    			alert('닉네임은 비밀번호와 다르게 입력해주세요');
	    			$('#user_password').focus();
	    			return false;
	    		}
	    		
	    			// 닉네임 자릿수 설정
	    		if(usrNicknameVal.length>20){
	    			alert('닉네임은 20글자 미만으로 입력해주세요')
	    			$("#nickname").focus();
	    			return false;
	    		}
	    		
	    			// 닉네임이 중복일 경우
	    		
	    		if(nicknameDup =="중복된 닉네임 입니다."){
	    			alert("중복된 닉네임으로는 가입할 수 없습니다.")
	    			$("#nickname").focus();
	    			return false;
	    		}
	    
	    		// 닉네임 유효성 검사 종료
	    		
	    		// 이름 유효성 검사 시작
	    		
	    			// 이름 입력칸이 비어있을 경우
	    		if(usrNameVal==''){
	    			alert('이름을 입력해주세요');
	    			$('#name').focus();
	    			return false;
	    		}
	    		
	    			// 이름이 id 와 같을 경우
	    		if(usrNameVal==usrIdVal){
	    			alert('id 와 다른 이름을 입력해주세요');
	    			$('#name').focus();
	    			return false;
	    		}
	    		
	    			// 이름이 닉네임과 같을 경우
	    		if(usrNameVal==usrNicknameVal){
	    			alert('닉네임과 다른 이름을 입력해주세요');
	    			$("#name").focus();
	    			return false;
	    		}
	    		
	    			// 이름이 비밀번호와 같을 경우
	    		if(usrNameVal==usrPwVal){
	    			alert('비밀번호와 다른 이름을 입력해주세요');
	    			$("#name").focused();
	    			return false;
	    		}
	    		
	    			// 이름이 너무 길 경우
	    		if(usrNameVal.length>6){
	    			alert('이름은 6글자 이하로 입력해주세요');
	    			$("#name").focus();
	    			return false;
	    		}
	    		
	    			// 이름에 특수문자가 있을 경우
	    		if(usrNameVal.search(/[~!@#$%^&*()_+|<>?:{}]/)!=-1){
	    			alert('이름은 특수문자를 제외하고 입력해주세요');
	    			$("#name").focus();
	    			return false;
	    		}
	    			
	    			// 이름에 공백이 있을 경우
	    		if(usrNameVal.search(/\s/) != -1){
	    			alert('이름은 공백 없이 입력해주세요');
	    			$('#name').focus();
	    			return false;
	    		}
	    		
	    		// 이름 유효성 검사 종료
	    		
	    		// 이메일 유효성 검사 시작
	    		
	    			// 이메일칸이 공백일 경우
	    		
	    		if(usrEmailVal==''){
	    			alert('이메일을 입력해주세요');
	    			$('#email').focus();
	    			return false;
	    		}
	    		
	    			// 이메일 형식 검사	    		
	    		if(!regExp.test(usrEmailVal)){
	    			alert('유효하지 않은 이메일 주소입니다.');
	    			$('#email').focus();
	    			return false;
	    		}
	    		
	    			// 이메일이 중복일 경우
	    		
	    		if(emailDup == "중복된 이메일 입니다."){
	    			alert("중복된 이메일로는 가입할 수 없습니다.");
	    			$("#email").focus();
	    			return false;
	    		}
	    		
	    		// 이메일 유효성 검사 종료
	    		
	    		
	    		//	전화번호 유효성 검사 시작
	    		
	    			// 전화번호 칸이 공백일 경우
	    		if(usrTelVal==''){
	    			alert('전화번호를 입력해주세요');
	    			$('#tel').focus();
	    			return false;
	    		}
	    		
	    		//	전화번호 유효성 검사 종료
	    		
	    		// 체크박스 유효성 검사 시작
	    		
	    			// 약관을 눌러서 체크박스에 체크하지 않으면 false return
	    		if($("#form2Example3").is(':checked')==booleanFalse){
	    			alert('약관을 읽은 후 회원가입 버튼을 눌러주세요');
	    			return false;
	    		}
	    		
	    		// 체크박스 유효성 검사 종료
	    
    	    	
    		}); // submit 버튼 클릭 이벤트 종료
    	
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
    		
    	}); // 실시간 아이디 중복검사 종료
    	
    	
    	// 실시간 이메일 중복검사 기능 시작
    	$("#email").keyup(function(){
    		$.ajax({
    			type : "post",
    			url  : "emailCheck.do",
    			data : {'email' : $("#email").val() },
    			async: true,
    			contentType : 'application/x-www-form-urlencoded;charset=UTF-8',
    			success : function(resultData){
    				
	    				if($("#email").val().length>0){
	    					$('#email_dup').html(resultData);
	    					$('#email_dup').css("display" , "block");
	    				}else{
	    					$('#email_dup').css("display" , "none");
	    				}
    					
    				}	
    		});
    	});
    		// 실시간 이메일 중복검사 종료
    	
    	// 실시간 닉네임 중복검사 기능 시작
    	$("#nickname").keyup(function(){
    		$.ajax({
    			type : "post",
    			url  : "nicknameCheck.do",
    			data : {'nickname' : $("#nickname").val() },
    			async: true,
    			contentType : 'application/x-www-form-urlencoded;charset=UTF-8',
    			success : function(resultData){
    				
	    				if($("#nickname").val().length>0){
	    					$('#nickname_dup').html(resultData);
	    					$('#nickname_dup').css("display" , "block");
	    				}else{
	    					$('#nickname_dup').css("display" , "none");
	    				}
	    				
    				}	
    		});
    	});
    		// 실시간 닉네임 중복검사 종료
	    //----------------------------유효성 검사 관련 기능 종료
     
    	
    	
});