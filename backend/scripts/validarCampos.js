function validarLogin(){
	if(document.formLogin.txtNome.value==""){
		alert("Nome nÃ£o informado");
		return false;
	}
	if(document.formLogin.txtUsuario.value==""){
		alert("UsuÃ¡rio nÃ£o informado");
		return false;
	};
	if(document.formLogin.txtSenha.value==""){
		alert("Senha nÃ£o informada");
		return false;
	};
	document.formLogin.submit();
}

