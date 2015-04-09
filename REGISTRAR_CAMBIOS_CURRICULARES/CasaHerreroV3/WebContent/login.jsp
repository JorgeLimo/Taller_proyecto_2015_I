<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
	<meta charset="utf-8" />
	<title>Taller de Proyecto 2015-1</title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta name="description" content="">
	<meta name="keywords" content="">
	<meta name="author" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<!-- BEGIN GLOBAL MANDATORY STYLES -->
	<link href="assets/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<link href="assets/lib/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
	<link href="assets/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
	<link href="assets/css/style-metro.css" rel="stylesheet" type="text/css"/>
	<link href="assets/css/stylelogin.css" rel="stylesheet" type="text/css"/>
	<link href="assets/css/style-responsive.css" rel="stylesheet" type="text/css"/>
	<link href="assets/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color"/>
	<link href="assets/lib/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" type="text/css" href="assets/lib/select2/select2_metro.css" />
	<!-- END GLOBAL MANDATORY STYLES -->
	<!-- BEGIN PAGE LEVEL STYLES -->
	<link href="assets/css/pages/login-soft.css" rel="stylesheet" type="text/css"/>
	<!-- END PAGE LEVEL STYLES -->
	<link rel="shortcut icon" href="favicon.ico" />
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="login">
	<!-- BEGIN LOGO -->
	<div class="logo" style="margin-top:10px;">
      <a href="#"><img src="assets/img/logo.png" width="143" height="116" alt="Ourlimm"></a></h1>      
	</div>
	<!-- END LOGO -->
	<!-- BEGIN LOGIN -->
	<div class="content">
		<!-- BEGIN LOGIN FORM -->
		<form class="form-vertical login-form" action="Login" method="post">
			<h3 class="form-title" style="text-shadow: 0.1em 0.1em 0.2em black" ><center>Ingreso para el sistema CASA HERERRO</center></h3>
			<div class="alert alert-error hide">
				<button class="close" data-dismiss="alert"></button>
				<span>Ingrese su usuario y contraseña.</span>
			</div>
			<div class="control-group">
				<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
				<label class="control-label visible-ie8 visible-ie9">Usuario</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-user"></i>
						<input class="m-wrap placeholder-no-fix" type="text" autocomplete="off" placeholder="Usuario" name="usuario"/>
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label visible-ie8 visible-ie9">Contraseña</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-lock"></i>
						<input class="m-wrap placeholder-no-fix" type="password" autocomplete="off" placeholder="Contraseña" name="clave"/>
					</div>
				</div>
			</div>
			<div class="form-actions">
				<label class="checkbox" style="margin-left:20px">
						<input type="checkbox" name="remember" value="1"/> Recordarme
				</label>
				<button type="submit" class="btn red pull-right">
				Ingresar <i class="m-icon-swapright m-icon-white"></i>
				</button>            
			</div>
			<div class="forget-password">
				<h4  style="text-shadow: 0.1em 0.1em 0.2em black" >Olvidaste tu contraseña ?</h4>
				<center>
				<p  style="text-shadow: 0.1em 0.1em 0.2em black" >
					No te preocupes, da click <a href="javascript:;"  id="forget-password" style="color:#900">aqui</a>
					para recuperar la contraseña.
				</p>
				</center>
			</div>

		</form>
		<!-- END LOGIN FORM -->        
		<!-- BEGIN FORGOT PASSWORD FORM -->
		<form class="form-vertical forget-form" action="index.html" method="post">
			<h3 style="text-shadow: 0.1em 0.1em 0.2em black"  >Olvidaste tu contraseña ?</h3>
			<p style="text-shadow: 0.1em 0.1em 0.2em black" >Escribe tu correo para poder enviarte tu contraseña.</p>
			<div class="control-group">
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-envelope"></i>
						<input class="m-wrap placeholder-no-fix" type="text" placeholder="Correo Electronico" autocomplete="off" name="email" />
					</div>
				</div>
			</div>
			<div class="form-actions">
				<button type="button" id="back-btn" class="btn">
				<i class="m-icon-swapleft"></i> Regresar
				</button>
				<button type="submit" class="btn red pull-right">
				Enviar <i class="m-icon-swapright m-icon-white"></i>
				</button>            
			</div>
		</form>
		<!-- END FORGOT PASSWORD FORM -->

	</div>
	<!-- END LOGIN -->
	<!-- BEGIN COPYRIGHT --><br>
	<div class="copyright">
		 <p style="text-shadow: 0.1em 0.1em 0.2em black" >Sede Lima: Av. La Fontana 1250 Urb. Sta. Patricia 2da Etapa La Molina, Lima - Perú, Teléfonos: (511) 2086000.</p>
	</div>
	<!-- END COPYRIGHT -->
	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
	<!-- BEGIN CORE PLUGINS -->   <script src="assets/lib/jquery-1.10.1.min.js" type="text/javascript"></script>
	<script src="assets/lib/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
	<script src="assets/lib/jquery-ui/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      
	<script src="assets/lib/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="assets/lib/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js" type="text/javascript" ></script>
	<!--[if lt IE 9]>
	<script src="assets/lib/excanvas.min.js"></script>
	<script src="assets/lib/respond.min.js"></script>  
	<![endif]-->   
	<script src="assets/lib/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="assets/lib/jquery.blockui.min.js" type="text/javascript"></script>  
	<script src="assets/lib/jquery.cookie.min.js" type="text/javascript"></script>
	<script src="assets/lib/uniform/jquery.uniform.min.js" type="text/javascript" ></script>
	<!-- END CORE PLUGINS -->
	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<script src="assets/lib/jquery-validation/dist/jquery.validate.min.js" type="text/javascript"></script>
	<script src="assets/lib/backstretch/jquery.backstretch.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="assets/lib/select2/select2.min.js"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="assets/scripts/app.js" type="text/javascript"></script>
	<script src="assets/scripts/login-soft.js" type="text/javascript"></script>      
	<!-- END PAGE LEVEL SCRIPTS --> 
	<script>
		jQuery(document).ready(function() {     
		  App.init();
		  Login.init();
		});
	</script>
	<!-- END JAVASCRIPTS -->
	
</body>
<!-- END BODY -->
</html>