$(function(){
	
	$('.hyFwBtn').click(logCk);
	$('.hyMyBtn').click(logCk);
	
	// 로그인 했을 경우만 following / My 로 이동 가능
	function logCk(e){
		if( $('#logUser_id').val() == "" ){
			alert("로그인 후 이용해 주세요");
			e.preventDefault(); // a 태그를 눌렀을 때 href 링크로 이동하지 않게 함
		};
	};
	
});	