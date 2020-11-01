var xmlHttp;
function jqAjaxCheckLogin(){
	if(!userName_correct||!password_correct||!vcode_correct){
		$("#userName").blur();
		$("#password").blur();
		$("#vcode").blur();
		return;
	}
	var data = {userName:$("#userName").val(),password:$("#password").val(),vcode:$("#vcode").val()};
	if($("#autoLogin").prop("checked"))
		data.autoLogin="y";
	$.ajax({
		type:"post",
		url:"ajaxLoginCheck.do",
		data:data,
		dataType:"json",
		success:function(response){
			if(response.code==0){
				window.location.href = "main.jsp";
			}else{
				$("#checkError").text(response.info);
			}
		}
	});
}