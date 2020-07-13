/*function login(){
	window.open('signin.jsp','login','left=300,top=100,width=500,height=800');
}*/

$(function(){
	$/*("a#login").click(function(){
		if($(this).text()=='login'){
			login();
		}else if($(this).text()=='logout'){
			$(this).text('login');
		}
	});*/
	$("a#signin").click(function(){
		if($("input#id").val().length==0 || $("input#pw").val().length==0){
			alert("id/pw check!");
			$("input#id").val('');
			$("input#pw").val('');
			$("input#id").focus();
		}/*else if($("input#id").val()=='admin' && $("input#pw").val()=='1234'){
			self.close();
			window.opener.document.getElementById("slogin").innerHTML = 'logout';
		}*/
	});
	$("a#signin").click(function(){
		$("form[role='form']").submit();
	});
	/*if($("input#identifier").val().length==0){
		alert("id Check!");
	}*/
	
	/*$("a#signup").click(function(){
		if($("input#id").val().length==0){
			alert("id Check!");
			$("input#id").val('');
			$("input#id").focus();
		}
		if($("input#name").val().length==0 || !isNaN($("input#name").val())){
			alert("name Check!");
			$("input#name").val('');
			$("input#name").focus();
		}
		if($("input#nickname").val().length==0){
			alert("nick-name Check!");
			$("input#nickname").val('');
			$("input#nickname").focus();
		}
		if($("input#pw").val().length==0 ||$("input#pw2").val().length==0 || $("input#pw").val()!=$("input#pw2").val()){
			alert("pw Check!");
			$("input#pw").val('');
			$("input#pw2").val('');
			$("input#pw").focus();
		}else{
			$("input#signpassword").val($("input#pw").val());
		}
		if($("input#birth").val().length==0 || $("input#birth").val().length!=6 || isNaN($("input#birth").val())){
			alert("birth Check!");
			$("input#birth").val('');
			$("input#birth").focus();
		}
		
		if($("input#phonenumber").val().length==0 || $("input#phonenumber").val().length!=11 || isNaN($("input#phonenumber").val())){
			alert("tel Check!");
			$("input#phonenumber").val('');
			$("input#phonenumber").focus();
		}
		if($("input#email").val().length==0){
			alert("email Check!");
			$("input#email").val('');
			$("input#email").focus();
		}
		
	});
	
	$("a#signup").click(function(){
		$("form[role='form']").submit();
	});*/
	
});