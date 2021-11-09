
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sistema Login</title>
<link href="https://fonts.googleapis.com/css?family=Work+Sans:400,700" rel="stylesheet" />
<link rel="stylesheet" media="all" href="./bootstrap/bootstrap.min.css" />
<link rel="stylesheet" media="all" href="./css/styles.css" />

<script type="text/javascript" src="validarCampos.js">
	
</script>

<body background="">

	<header class="header header-main">
        <div class="container">
            <nav class="navbar navbar-expand-lg">
                <a class="navbar-brand" href="/">
                    <div class="navbar-logo">
                        <img class="navbar-pic" src="http://demo.niceverynice.com/foundation/img/foundation.jpg" srcset="./logo.png 2x" alt="Foundation" />
                    </div>
                    <div class="navbar-group">
                        <div class="navbar-title">UrbES</div>
                        <div class="navbar-text">Sem iluminação? Buracos em ruas? </br>Falta de água? Marca na #UrbES!  </div>
                    </div>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarDropdown" aria-controls="navbarDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
                <div class="collapse navbar-collapse" id="navbarDropdown">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link active" href="index.html">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#map">Reclame</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link nav-link-drop" href="#contact">
                                <span>Sugestões?</span>
                            </a>

                        </li>
                    </ul>

                    <a class="btn btn-primary" href="remover.jsp">Sair</a>
                </div>
            </nav>
        </div>
    </header>


	 <!-- Start banner -->
	 <div class="col-12 py-sm-5" >
		<h2 class="font-weight-bold text-center" id="contact">Insights das reclamações:</h3>
			<h4>
				A cidade de <strong>Vitória</strong> possui <strong>5</strong>
				interações sendo consideradas reclamações e pontos críticos.
			</h4>

			<h4>
				A cidade com maior repercursão em um mesmo ponto é <strong>Presidente
					Kennedy</strong> com <strong>5</strong> <em>reclamações</em> sobre o
				assunto <strong>postes no meio da pista</strong>, categoria <strong>estradas</strong>.
			</h4>
<div class="inner" id="map">
	<div class="section section-main" style="background: #f3c6bd00;">
		<div class="d-flex flex-column flex-fill">
			<div class="flex-fill">
				<div class="bg-base-0 position-relative">
					<div class="container position-relative py-5 py-sm-6">
						<div class="row">
							<object data="./mapa-preenchido.html" scrolling="no" height="400" width="140%" style="border-radius: 15px;"></object>
							 <!-- Start banner 
							<div id="mapid"></div>
							 <!-- Start banner -->
				</div>
			</div>
		</div>
	</div>
	<div class="col-12 py-sm-5" >
	<h2 class="font-weight-bold text-center" id="contact">Cadastre uma nova reclamação com base na sua localização: </h3>
</br>
	
<!-- BEGIN inner -->

<div class="section-white">
  <div class="container container-sm">
	<form class="contacts" name="formLogin" action="CadastroSugestao" method="post">
		<div class="form-group">
			<label for="Email">Seu nome:</label>
			<input type="txt" name="txtNome" class="form-control" placeholder="Seu nome" required="">
		  </div>
	  <div class="form-group">
		<label for="Email">Seu endereço de e-mail:</label>
		<input type="text" name="txtEmail" class="form-control" placeholder="seu@email.com" required="">
	  </div>

	  
	  <div class="form-group">
		<label for="Email">Reclamação:</label>
		<input type="txt" name="name" class="form-control" placeholder="Sua reclamação" required="">
	  </div>
	  
	  <div class="form-group">
		<label for="Subject">Sugestões:</label>
		<select name="txtTopico">
			<option value="saneamento">Saneamento</option>
			<option value="estradas">Estradas</option>
			<option value="energia">Energia Eletrica</option>
			<option value="mobilidade">Mobilidade</option>
			<option value="seguranca">Seguranca</option>
			<option value="outros">Outros Assuntos</option>
			</select><br>
	  </div>
	  <div class="form-group">
		<label for="Subject">Risco de acidentes:</label>
		<select name="txtTopico">
			<option value="saneamento">Baixo risco</option>
			<option value="estradas">Médio risco</option>
			<option value="energia">Alto risco</option>
			</select><br>
	  </div>

	  <div class="form-group">
		<label for="Message">Mensagem:</label>
		<textarea class="form-control" name="txtSugestao" placeholder="Escreva aqui a sua mensagem..." rows="4" required=""></textarea>
	  </div>
	  <button class="btn btn-primary btn-block" type="submit">Enviar mensagem</button>
	</form>
  </div>
</div>
</div>





	

</body>
</html>