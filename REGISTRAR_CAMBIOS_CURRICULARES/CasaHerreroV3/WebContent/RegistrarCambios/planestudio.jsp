<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE>

<html>
<head>

<link href="css/style.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script data-turbolinks-track="true" src="js/row.js"></script>
<script type="text/javascript" src="js/typeahead.min.js"></script>

<style type="text/css">
.actions {
	white-space: nowrap;
	width: 1px;
}

div.clear {
	clear: both;
}
</style>

<script type="text/javascript">
	//Autocompletado de cursos
	$(document).ready(function() {
		$('input.typeahead').typeahead({
			name : 'cursos',
			limit : 10,
			remote : '../G1JsonCursoServlet?descripcion=%QUERY'
		});

	});
</script>

<!-- Crear Curso -->
	<script>
	$().ready(function() {
		$('#bcrearcurso').click(function() {
// 			var nomCurso = $('#nomCursoRequisito').val();
			$.post('../G1RealizarCambioPlan', {
				opc : 'crearcurso',
				nomCurso : nomCurso
			}, function(rsp) {
				$('#datosCursoCrear').empty();
				$('#datosCursoCrear').html(rsp);
				$('#datosCursoCrear').show();
				
			});

			return false;
		});
		
		$('#bscrearcurso').click(function() {
// 			$('#nomCursoRequisito').val("");
			$('#editrequisito').modal('toggle');
			return false;
		});
	});
	

</script>
<!-- Fin Crear Curso -->

<!-- Dar de baja- -->

<script>
	$(document).ready(function() {
		$('#bdardebaja').click(function() {
			var nomCurso = $('#nomCurso').val();
			$.post('../G1RealizarCambioPlan', {
				opc : 'dardebaja',
				nomCurso : nomCurso
			}, function(rsp) {
				if(rsp!="No puede dar de baja, el curso se encuentra inactivo."){
					$('#dardebaja').modal('toggle');
					
				}
				alert(rsp);
				
			});
			return false;
		});
		
		$('#bsdardebaja').click(function() {
			$('#nomCurso').val("");
			$('#dardebaja').modal('toggle');
			return false;
		});
		
	});
</script>

<!-- Fin dar de baja -->

<!-- Editar Credito -->
	<script>
	$().ready(function() {
		$('#beditcredito').click(function() {
			var nomCurso = $('#nomCursoCredito').val();
			$.post('../G1RealizarCambioPlan', {
				opc : 'editcredito',
				nomCurso : nomCurso
			}, function(rsp) {
				$('#datosCurso').html(rsp);
				$('#datosCurso').show();
				
			});

			return false;
		});
		
		
		$('#baeditcredito').click(function() {
			var idCurso = $('#idCurso').val();
			var cantCredito = $('#cantCredito').val();
			$.post('../G1RealizarCambioPlan', {
				opc : 'editcredito',
				idCurso : idCurso,
				cantCredito: cantCredito
			}, function(rsp) {
				if(rsp!="Ocurrio algun problema al modificar la cantidad de credito"){
					$('#editcredito').modal('toggle');
				}

				alert(rsp);

			});

			return false;
		});
		
		$('#bseditcredito').click(function() {
			$('#nomCursoCredito').val("");
			$('#editcredito').modal('toggle');
			return false;
		});
		
		
		$('.bEliminar').click(function() {
// 			$('#nomCursoCredito').val("");
// 			$('#editcredito').modal('toggle');
			alert("aaaaaa");

			return false;
		});
		
	
		
	});
</script>


<!-- Fin Editar Credito -->

<!-- Editar Horas -->

	<script>
	$().ready(function() {
		$('#bedithoras').click(function() {
			var nomCurso = $('#nomCursoHoras').val();
			$.post('../G1RealizarCambioPlan', {
				opc : 'edithoras',
				nomCurso : nomCurso
			}, function(rsp) {
				$('#datosCursoHoras').empty();
				$('#datosCursoHoras').html(rsp);
				$('#datosCursoHoras').show();
				
			});

			return false;
		});
		
		
		$('#baedithoras').click(function() {
			var idCurso = $('#idCurso').val();
			var hteo = $('#hteo').val();
			var hlab = $('#hlab').val();
			var hpra= $('#hpra').val();
			$.post('../G1RealizarCambioPlan', {
				opc : 'edithoras',
				idCurso : idCurso,
				hlab: hlab,
				hteo: hteo,
				hpra: hpra
			}, function(rsp) {
				if(rsp!="Ocurrio algun problema al modificar las horas"){
					$('#edithoras').modal('toggle');
				}
				alert(rsp);

			});

			return false;
		});
		
		$('#bsedithoras').click(function() {
			$('#nomCursoHoras').val("");
			$('#edithoras').modal('toggle');
			return false;
		});

	});
</script>

<!-- Fin Editar Horas -->

<!-- Editar Ciclo  -->

<script>
	$().ready(function() {
		$('#beditciclo').click(function() {
			var nomCurso = $('#nomCursoCiclo').val();
			$.post('../G1RealizarCambioPlan', {
				opc : 'editciclo',
				nomCurso : nomCurso
			}, function(rsp) {
				$('#datosCursoCiclo').empty();
				$('#datosCursoCiclo').html(rsp);
				$('#datosCursociclo').show();
				
			});

			return false;
		});
		
		$('#bseditciclo').click(function() {
			$('#nomCursoCiclo').val("");
			$('#editciclo').modal('toggle');
			return false;
		});
	});
	
	

</script>

<script type="text/javascript">  
 
function eliminarCiclo(e) 
{ 
	var pos= e.value;
	
	$.post('../G1RealizarCambioPlan', {
		opc : 'editciclo',
		pos: pos
	}, function(rsp) {
		
		$("#tablaCiclos").empty();
		$('#tablaCiclos').show();
		$('#tablaCiclos').html(rsp);

	});
} 


function agregarCiclo() 
{ 
	var nomciclo = document.getElementById("sciclo").value;
 	if(nomciclo!="--Seleccionar--"){
 		$.post('../G1RealizarCambioPlan', {
 			opc : 'editciclo',
 			nomciclo: nomciclo
 		}, function(rsp) {
 			
 			$("#tablaCiclos").empty();
 			$('#tablaCiclos').show();
 			$('#tablaCiclos').html(rsp);

 		});
 	}else{
 		alert("Seleccione un ciclo antes de agregar.");
 	}
} 

  
</script> 

<!-- Fin Editar Ciclo -->

<!-- Editar Requisito -->

<script>
	$().ready(function() {
		$('#beditrequisito').click(function() {
			var nomCurso = $('#nomCursoRequisito').val();
			$.post('../G1RealizarCambioPlan', {
				opc : 'editrequisito',
				nomCurso : nomCurso
			}, function(rsp) {
				$('#datosCursoRequisito').empty();
				$('#datosCursoRequisito').html(rsp);
				$('#datosCursoRequisito').show();
				
			});

			return false;
		});
		
		$('#bseditrequisito').click(function() {
			$('#nomCursoRequisito').val("");
			$('#editrequisito').modal('toggle');
			return false;
		});
	});
	

</script>

<script type="text/javascript">  
 
function eliminarRequisito(e) 
{ 
	var pos= e.value;
	
	$.post('../G1RealizarCambioPlan', {
		opc : 'editrequisito',
		pos: pos
	}, function(rsp) {
		
		$("#tablaRequisitos").empty();
		$('#tablaRequisitos').show();
		$('#tablaRequisitos').html(rsp);

	});
} 


function agregarRequisito() 
{ 
	var nomcursorequi = document.getElementById("nomcursorequi").value;
 	if(nomcursorequi!=""){
 		$.post('../G1RealizarCambioPlan', {
 			opc : 'editrequisito',
 			nomcursorequi: nomcursorequi
 		}, function(rsp) {
 			
 			$("#tablaRequisitos").empty();
 			$('#tablaRequisitos').show();
 			$('#tablaRequisitos').html(rsp);

 		});
 	}else{
 		alert("Seleccione un ciclo antes de agregar.");
 	}
} 

</script>
<!-- Editar Requisito -->





</head>
<body>

	<div class="row">

		<div class="container">

			<h1>Plan de Estudio 2015</h1>


			<button type="button" class="btn btn-lg btn-primary"
				data-toggle="modal" data-target="#crearcurso">
				<img src="images/document193.png" width="20px" heigth="20px">
				Crear Curso
			</button>


			<button type="button" class="btn btn-lg btn-primary"
				data-toggle="modal" data-target="#editciclo">
				<img src="images/word-document1.png" width="20px" heigth="20px">
				Ciclo
			</button>


			<button type="button" class="btn btn-lg btn-primary"
				data-toggle="modal" data-target="#editcredito">
				<img src="images/word-document1.png" width="20px" heigth="20px">
				Credito
			</button>


			<button type="button" class="btn btn-lg btn-primary"
				data-toggle="modal" data-target="#edithoras">
				<img src="images/word-document1.png" width="20px" heigth="20px">
				Horas
			</button>

			<button type="button" class="btn btn-lg btn-primary"
				data-toggle="modal" data-target="#editrequisito">
				<img src="images//word-document1.png" width="20px" heigth="20px">
				Requisito
			</button>

			<button type="button" class="btn btn-lg btn-primary"
				data-toggle="modal" data-target="#dardebaja">
				<img src="images/down-arrow6.png" width="20px" heigth="20px">
				Dar de Baja
			</button>

			<br> <br>



			<div class="table-responsive">
				<table
					class="table table-hover table-bordered table-striped actions"
					id="sortable">
					<thead>
						<tr style="background-color: #8B0000;">
							<th style="color: #ffffff;">Nro</th>
							<th style="color: #ffffff;">C&oacute;digo</th>
							<th style="color: #ffffff;">Curso</th>
							<th style="color: #ffffff;">Detalle</th>
							<th style="color: #ffffff;">Ciclo</th>
							<th style="color: #ffffff;">Credito</th>
							<th style="color: #ffffff;">Hr Teo</th>
							<th style="color: #ffffff;">Hr Lab</th>
							<th style="color: #ffffff;">Hr Prac</th>
							<th style="color: #ffffff;">Requisito</th>
							<th style="color: #ffffff;">Acci&oacute;n</th>
						</tr>
					</thead>

					<tbody>


						<tr data-item-id="1" class="item ui-sortable-handle">
							<td Style="vertical-align:middle;">1</td>
							<td Style="vertical-align:middle;">021234</td>
							<td Style="vertical-align:middle;">Taller de Proyecto</td>
							<td Style="vertical-align:middle;">Cambio de Credito</td>
							<td Style="vertical-align:middle;"></td>
							<td Style="vertical-align:middle;">5</td>
							<td Style="vertical-align:middle;"></td>
							<td Style="vertical-align:middle;"></td>
							<td Style="vertical-align:middle;"></td>
							<td Style="vertical-align:middle;"></td>

							<td Style="vertical-align:middle;"><a class="btn btn-danger pull-left" href="#"><img
									src="images/cancel20.png" width="20px" heigth="20px"></a></td>
						</tr>


						<tr data-item-id="2" class="item ui-sortable-handle">
							<td>2</td>
							<td>021236</td>
							<td>Sistemas de informacion III</td>
							<td>Cambio de requisito</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>

							<td>098322</td>

							<td><a class="btn btn-danger pull-left" href="#"><img
									src="images/cancel20.png" width="20px" heigth="20px"></a></td>
						</tr>


						<tr data-item-id="3" class="item ui-sortable-handle">
							<td>3</td>
							<td>021266</td>
							<td>Gestion de Procesos</td>
							<td>Cambio de Ciclo</td>
							<td>E4</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>

							<td><a class="btn btn-danger pull-left" href="#"><img
									src="images/cancel20.png" width="20px" heigth="20px"></a></td>
						</tr>


						<tr data-item-id="4" class="item ui-sortable-handle">
							<td>4</td>
							<td>656789</td>
							<td>Ingenieria Administrativa</td>
							<td>Cambio de Ciclo</td>
							<td>4</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><a class="btn btn-danger pull-left" href="#"><img
									src="images/cancel20.png" width="20px" heigth="20px"></a></td>
						</tr>

					</tbody>
				</table>
			</div>


			<button id="btnEliminar" type="button" class="btn btn-lg btn-primary">
				<img src="images/play131.png" width="20px" heigth="20px">
				Ejecutar Cambios
			</button>
			<button type="button" class="btn btn-lg btn-primary">
				<img src="images/play131.png" width="20px" heigth="20px">
				Ejecutar Paso a Paso
			</button>
			<button type="button" class="btn btn-lg btn-primary">
				<img src="images/add59.png" width="20px" heigth="20px">
				Visualizar Cambios
			</button>
			<button type="button" class="btn btn-lg btn-primary">
				<img src="images/down124.png" width="20px" heigth="20px">
				Imprimir
			</button>
			<button type="button" class="btn btn-lg btn-primary">
				<img src="images/floppydisk.png" width="20px" heigth="20px">
				Guardar y exportar
			</button>

			<br> <br>

			<h2>Alertas</h2>
			<div class="alert alert-danger" role="alert">
				<strong>1 Observación!</strong> Tiene que cambiar el numero horas
				del curso de taller de proyectos.
			</div>
			<div class="alert alert-danger" role="alert">
				<strong>1 Observación!</strong> Tiene que agregar un curso en el 4er
				ciclo.
			</div>
			<div class="alert alert-danger" role="alert">
				<strong>3 Observación!</strong> Tiene que cambiar los requisitos.
			</div>


		</div>


		<!-- Popup Crear Curso -->
			<div class="modal fade" id="crearcurso" tabindex="-1" role="dialog"
			aria-labelledby="editciclo" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<!-- Header -->
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">Crear Curso</h4>
					</div>
					<!-- Fin Header -->

					<!-- body -->
					<div class="modal-body">
						<br>
						<div class="row">
							<div class="col-md-3">
									<h5>
										<b>Nombre:</b>
									</h5>
							</div>

							<div class="col-md-6">
								<input type="text" class="form-control" value="">								
							</div>
							<div class="col-md-3"></div>
						</div>
						
						<div class="row">
							<div class="col-md-3">
									<h5>
										<b>Credito:</b>
									</h5>
							</div>

							<div class="col-md-2">
								<input type="text" class="form-control" value="">								
							</div>
							<div class="col-md-7"></div>
						</div>
						
						
						<div class="row">
								<div class="col-md-3">
									<h5>
										<b>Area:</b>
									</h5>
								</div>
								<div class="col-md-4">
									
										<select class="form-control">
											<option id="">--Seleccionar--</option>
											<option id="C01">01</option>
											<option id="C02">02</option>
											<option id="C03">03</option>
											<option id="C11">E1</option>
											<option id="C12">E2</option>
										</select>

									
								</div>
								
								<div class="col-md-5"></div>
						</div>
						
						<div class="row">
								<div class="col-md-3">
									<h5>
										<b>Hrs. Teoria:</b>
									</h5>
								</div>
								<div class="col-md-2">
									<input type="text" id="nroCredito" class="form-control"
											value="">
								</div>
								<div class="col-md-7"></div>
							</div>
							
							<div class="row">
								<div class="col-md-3">
									<h5>
										<b>Hrs. Laboratorio:</b>
									</h5>
								</div>
								<div class="col-md-2">
									<input type="text" id="nroCredito" class="form-control"
											value="">
								</div>
								<div class="col-md-7"></div>
							</div>
							
							
							<div class="row">
								<div class="col-md-3">
									<h5>
										<b>Hrs. Practico:</b>
									</h5>
								</div>
								<div class="col-md-2">
									<input type="text" id="nroCredito" class="form-control"
											value="">
								</div>
								<div class="col-md-7"></div>
							</div>
						

							<div class="row">
								<div class="col-md-3">
									<h5>
										<b>Ciclo:</b>
									</h5>
								</div>
								<div class="col-md-4">
									
										<select class="form-control">
											<option id="">--Seleccionar--</option>
											<option id="C01">01</option>
											<option id="C02">02</option>
											<option id="C03">03</option>
											<option id="C11">E1</option>
											<option id="C12">E2</option>
										</select>

									
								</div>
								<div class="col-md-5">
									<button type="submit" class="btn btn-primary">Agregar</button>
								</div>
							</div>
							<div class="clear"></div>

							<br>
							<div class="table-responsive">
								<table class="table table-hover table-bordered table-striped">
									<thead>
										<tr style="background-color: #8B0000;">
											<th style="color: #ffffff;">C&oacute;digo</th>
											<th style="color: #ffffff;">Ciclo</th>
											<th style="color: #ffffff;">Acci&oacute;n</th>
										</tr>
									</thead>

									<tbody>
										<tr data-item-id="1" class="item ui-sortable-handle">
											<td Style="vertical-align:middle;">C11</td>
											<td Style="vertical-align:middle;">E1</td>
											<td Style="vertical-align:middle;"><a class="btn btn-danger pull-left"
												style="padding: 0 0;" href="#"><img
													src="images/cancel20.png" width="20px" heigth="20px"></a></td>
										</tr>

										<tr data-item-id="2" class="item ui-sortable-handle">
											<td Style="vertical-align:middle;">C13</td>
											<td Style="vertical-align:middle;">E2</td>
											<td Style="vertical-align:middle;"><a class="btn btn-danger pull-left"
												style="padding: 0 0;" href="#"><img
													src="images/cancel20.png" width="20px" heigth="20px"></a></td>
										</tr>

										<tr data-item-id="3" class="item ui-sortable-handle">
											<td Style="vertical-align:middle;">C01</td>
											<td Style="vertical-align:middle;">01</td>
											<td Style="vertical-align:middle;"><a class="btn btn-danger pull-left"
												style="padding: 0 0;" href="#"><img
													src="images/cancel20.png" width="20px" heigth="20px"></a></td>
										</tr>

									</tbody>
								</table>
							</div>
						

					</div>
					<!-- Fin body -->
					<!-- footer -->
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal" id="bscrearcurso">Salir</button>
						<button type="button" class="btn btn-primary">Aplicar</button>
					</div>
					<!-- Fin footer -->
				</div>
			</div>
		</div>


		<!-- Fin Popup Crear Curso -->


		<!-- Popup Editar Ciclo -->
		<div class="modal fade" id="editciclo" tabindex="-1" role="dialog"
			aria-labelledby="editciclo" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<!-- Header -->
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">Editar Ciclo</h4>
					</div>
					<!-- Fin Header -->

					<!-- body -->
					<div class="modal-body">
						<br>
						<div class="row">
							<div class="col-md-8">
								<input id="nomCursoCiclo" type="text" class="typeahead tt-query"
									placeholder="Ingrese el nombre del curso" autocomplete="off"
									spellcheck="false">
							</div>

							<div class="col-md-4">
								<button id="beditciclo" type="submit" class="btn btn-primary">Buscar</button>
							</div>
						</div>

						<div class="clear"></div>
						<br>
						<!-- Contenedor de datos del ciclo -->
						<div id="datosCursoCiclo"></div>

					</div>
					<!-- Fin body -->
					<!-- footer -->
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal" id="bseditciclo">Salir</button>
						<button type="button" class="btn btn-primary" id="baeditciclo">Aplicar</button>
					</div>
					<!-- Fin footer -->
				</div>
			</div>
		</div>
		<!--Fin Popup Editar Ciclo -->

		<!-- Popup Editar Credito  -->
		<div class="modal fade" id="editcredito" tabindex="-1" role="dialog"
			aria-labelledby="editciclo" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<!-- Header -->
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">Editar Credito</h4>
					</div>
					<!-- Fin Header -->

					<!-- body -->
					<div class="modal-body">
						<br>
						<div class="row">
							<div class="col-md-8">
								<input id="nomCursoCredito" type="text" class="typeahead tt-query"
									placeholder="Ingrese el nombre del curso" autocomplete="off"
									spellcheck="false">
							</div>

							<div class="col-md-4">
								<button  id="beditcredito" type="submit" class="btn btn-primary">Buscar</button>
							</div>
						</div>
						<br>
						<div class="clear"></div>
						
						<!-- Contenedor de datos del credito del curso -->
						<div id="datosCurso"></div>
						
					</div>
					<!-- Fin body -->
					<!-- footer -->
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal" id="bseditcredito">Salir</button>
						<button type="button" class="btn btn-primary" id="baeditcredito">Aplicar</button>
					</div>
					<!-- Fin footer -->
				</div>
			</div>
		</div>

		<!-- Fin Popup Editar Credito  -->
		
		<!-- Popup Editar Horas -->
		
			<div class="modal fade" id="edithoras" tabindex="-1" role="dialog"
			aria-labelledby="editciclo" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<!-- Header -->
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">Editar Horas</h4>
					</div>
					<!-- Fin Header -->

					<!-- body -->
					<div class="modal-body">
						<br>
						<div class="row">
							<div class="col-md-8">
								<input id="nomCursoHoras" type="text" class="typeahead tt-query"
									placeholder="Ingrese el nombre del curso" autocomplete="off"
									spellcheck="false">
							</div>

							<div class="col-md-4">
								<button id="bedithoras" type="submit" class="btn btn-primary">Buscar</button>
							</div>
						</div>

						<div class="clear"></div>

						<!-- Contenedor de datos del credito del curso -->
						<div id="datosCursoHoras"></div>
						
					</div>
					<!-- Fin body -->
					<!-- footer -->
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal" id="bsedithoras">Salir</button>
						<button type="button" class="btn btn-primary" id="baedithoras">Aplicar</button>
					</div>
					<!-- Fin footer -->
				</div>
			</div>
		</div>
		
		<!-- Fin Popup Editar Horas -->
		
		<!-- Editar Requisitos -->

		<div class="modal fade" id="editrequisito" tabindex="-1" role="dialog"
			aria-labelledby="editciclo" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<!-- Header -->
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">Editar Requisito</h4>
					</div>
					<!-- Fin Header -->

					<!-- body -->
					<div class="modal-body">
						<br>
						<div class="row">
							<div class="col-md-8">
								<input id="nomCursoRequisito" type="text" class="typeahead tt-query"
									placeholder="Ingrese el nombre del curso" autocomplete="off"
									spellcheck="false">
							</div>

							<div class="col-md-4">
								<button id="beditrequisito" type="submit" class="btn btn-primary">Buscar</button>
							</div>
						</div>

						<div class="clear"></div>
						<br>
						<!-- Contenedor de requisitos requisito de curso-->
						<div id="datosCursoRequisito"></div>

					</div>
					<!-- Fin body -->
					<!-- footer -->
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal" id="bseditrequisito">Salir</button>
						<button type="button" class="btn btn-primary" id="baeditrequisito">Aplicar</button>
					</div>
					<!-- Fin footer -->
				</div>
			</div>
		</div>
		
		<!-- Fin Editar Requisitos -->
		
		
		<!-- Dar de baja -->
		
			<div class="modal fade" id="dardebaja" tabindex="-1" role="dialog"
			aria-labelledby="editciclo" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<!-- Header -->
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">Dar de Baja</h4>
					</div>
					<!-- Fin Header -->

					<!-- body -->
					<div class="modal-body">
						<br>
						<div class="row">
							<div class="col-md-8">
								<input id="nomCurso" type="text" class="typeahead tt-query"
									placeholder="Ingrese el nombre del curso" autocomplete="off"
									spellcheck="false">
							</div>

							<div class="col-md-4"></div>
						</div>

						<div class="clear"></div>

					
					</div>
					<!-- Fin body -->
					<!-- footer -->
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal" id="bsdardebaja">Salir</button>
						<button type="button" class="btn btn-primary"  id="bdardebaja">Aplicar</button>
					</div>
					<!-- Fin footer -->
				</div>
			</div>
		</div>
			
		
		<!-- Fin Dar de baja -->
		
</body>

</html>


