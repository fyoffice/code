var xmlHttp;
function jqAjaxCheckLogin(){
	$.ajax({
		type:"post",
		url:"ajaxLoginCheck.do",
		data:{userName:$("#userName").val(),password:$("#password").val(),vcode:$("#vcode").val()},
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