<!DOCTYPE html>
<html>
<head>

	<%System.out.println("JSP ENTRO");%>

	<!-- Required meta tags always come first -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta http-equiv="x-ua-compatible" content="ie=edge">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

	<title>Apoyo Alimentario</title>

</head>
<body>
	<!--NAVIGATION BAR-->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<a class="navbar-brand" href="${pageContext.request.contextPath}/#">SGAA</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarText">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active">
					<a class="nav-link" href="#">Inicio <span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">Opcion B</a>
				</li>	      
			</ul>
			<span>
				<a class="btn btn-dark text-light" id="btn_admin" href="./admin.html">
					<span>Admin</span>
				</a>
			</span> 
		</div>
	</nav>



	<!--LOGIN MODAL-->
	<div id="loginModal" class="modal fade" role="dialog">
		<div class="modal-dialog modal-md" role="content">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Login</h4>
					<button type="button" class="close" data-dismiss="modal">
						&times;
					</button>
				</div>                
				<div class="modal-body">
                                    <form action="ControlServlet" id="formConsulta" name="formConsulta">
						<div class="form-row">
							<div class="form-group col-sm-4">
								<label for="codigoEstudiante">Codigo Estudiantil</label>
								<input type="text" class="form-control form-control-sm mr-1" id="codigoEstudiante" name="codigoEstudiante" placeholder="Codigo">
							</div>
							<div class="form-group col-sm-4">
								<label for="numSolicitud"># de Solicitud</label>
								<input type="text" class="form-control form-control-sm mr-1" id="numSolicitud" name="numSolicitud" placeholder="Numero">
							</div>
							
						</div>
						<div class="modal-footer ">
							<button type="button" class="btn btn-secondary btn-sm ml-auto" data-dismiss="modal">Cancel</button>
							<button type="submit" class="btn btn-primary btn-sm ml-1">Consultar</button>        
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>







	<!--REGISTRO modal-->
	<div>
		<div class="modal fade text-dark" id="registroModal" role="dialog">
			<div class="modal-dialog modal-xl" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h1 class="modal-title ">Registro de Solicitud</h1>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							&times;
						</button>
					</div>

					<div class="modal-body">
						<form class="offset-1" action="ControlServlet" id="solicitudForm" name="solicitudForm" method="POST">
							
							<div class="row form-group" >                                                           
								<div class="row form-group">
                                                                     <h5 class="col">Datos Personales</h5>
                                                                    <label class="col-sm-auto" for="txtNombre">Nombre</label>
                                                                    <input type="text" class="col-sm-4" id="txtNombre" name="txtNombre" placeholder="Nombre del Estudiante">
                                                                    <label class="col-sm-auto" for="txtCodigo">Codigo</label>
                                                                    <input type="text" class="col-sm-auto" id="txtCodigo" name="txtCodigo" placeholder="Codigo del Estudiante">
                                                                </div>

							</div>  
							<div class="row form-group">
								<div class="form-group row">
									<h5>Ingresos Familiares:</h5>
									<p class="col-form-label col-sm-auto">
										<div class="form-check">
											<dl>
												<label>
                                                                                                    <input type="radio" name="ingresos" id="ingresos1" value="ing1"> 0-1.0 SMLV
												</label>
											</dl>
											<dl>
												<label>
													<input type="radio" name="ingresos" id="ingresos2" value="ing2"> >1.1-2.0 SMMLV
												</label>
											</dl>
											<dl>
												<label>
													<input  type="radio" name="ingresos" id="ingresos3" value="ing3"> >2.1-3.0 SMMLV
												</label>
											</dl>
											<dl>
												<label>
													<input type="radio" name="ingresos" id="ingresos4" value="ing4" checked=""> >3.1 - 4.0 SMMLV
												</label>
											</dl>
											<dl>
												<label>
													<input type="radio" name="ingresos" id="ingresos5" value="ing5" > >4.1 SMMLV
												</label>
											</dl>

										</div>
									</p> 


									<div class="row">
										<p class="col-form-label col-sm-auto">Condiciones Familiares:
											<div class="form-check">
												<dl>
												</dl>
												<dl>
													<label class="col">
                                                                                                            <input type="hidden" name="condicionesF" id="condicionesF" value="default" checked="" > 
														<input type="checkbox" name="condicionesF" id="condicionesF" value="cond1" > Sostiene el hogar donde vive
													</label>
												</dl>
												<dl>
													<label class="col">
														<input type="checkbox" name="condicionesF" id="condicionesF"value="cond2"> Se sostiene así mismo
													</label>
												</dl>
												<dl>
													<label class="col">
														<input  type="checkbox" name="condicionesF" id="condicionesF" value="cond3"> Vive fuera del núcleo familiar inmediato
													</label>
												</dl>
												<dl>
													<label class="col">
														<input type="checkbox" name="condicionesF" id="condicionesF" value="cond4"> Tiene cónyuge, hijos u otras personas a su cargo
													</label>
												</dl>


											</div>
										</p>
									</div>   


									<div class="row">
										<p class="col-form-label col-sm-auto">Procedencia y Lugar de Residencia:
											<div class="form-check">
												<dl>
												</dl>
												<dl>
													<label class="col">
                                                                                                                <input type="checkbox" name="residencia" id="residencia" value="default">
														<input type="checkbox" name="residencia" id="residencia" value="res1"> Vive en casa del empleador
													</label>
												</dl>
												<dl>
													<label class="col">
														<input type="checkbox" name="residencia" id="residencia" value="res2"> Condición de desplazamiento forzado, indígena, minorías étnicas y culturales ó proviene de municipios diferentes a Bogotá
													</label>
												</dl>
												<dl>
													<label class="col">
														<input  type="checkbox" name="residencia" id="residencia" value="res3"> Reside en zonas de alto grado de vulnerabilidad social y económica, reside en estrato 1,2 y 3
													</label>
												</dl>


											</div>
										</p>
									</div>

									<div class="row">
										<p class="col-form-label col-sm-auto">Condiciones de Salud:
											<div class="form-check">
												<dl>
												</dl>
												<dl>
													<label class="col">
                                                                                                            <input type="hidden" name="condSalud" id="condSalud" checked="" value="default"> 
														<input type="checkbox" name="condSalud" id="condSalud" value="salud1"> Presenta algun tipo de discapacidad fisica o mental
													</label>
												</dl>
												<dl>
													<label class="col">
														<input type="checkbox" name="condSalud" id="condSalud" value="salud2"> sufre de alguna patologia o sintomatologia asociada con problemas de alimentacion
													</label>
											</div>
										</p>
									</div>	
                                                                        
                                                                                                                                                

								</div>
                                                            
                                                            <div class="row form-group col-md-4">
                                                            <p class="col-form-label"><h5>Rango de Matricula</h5>
									<div>
										<select id="vMatricula" name="vMatricula"  class="form-control">
                                                                                    <option selected value="matricula1">0 - 100.000</option>
                                                                                        <option value="matricula2">Entre O y 100.000</option>
											<option value="matricula3">Entre 100.001 y 300.000</option>
                                                                                        <option value="matricula4">Entre 300.001 y 500.000</option>
                                                                                        <option value="matricula6">Entre 500.001 y 700.000</option>
                                                                                        <option value="matricula7">Entre 700.001 y 900.000</option>
                                                                                        <option value="matricula8">Mayor a 900.001</option>
										</select>
									</div>
									
								</div>   
							</div>
                                                    
                                                    <div class="row  form-group">
                                                        <h3>Documentos Requeridos:   </h3>
                                                        <div class="col-lg">
                                                            <dl>
                                                                <dt><label for="cartaDirector">* Carta dirigida al Director (a) del Centro Bien~star Institucional donde explique de manera clara y expresa las razones por las cuales requiere el apoyo alimentario. </label></dt>
                                                                <dl><input type="file" id="docs" name="cartaDirector" value="cartaDirector"></dl>
                                                            </dl>
                                                            <dl>
                                                                <dt><label for="estratif">* Certificado de estratificación del lugar de residencia del estudiante expedido por Catastro o Supercade o por las Alcaldías Municipales para quienes residen fuera de Bogotá.</label></dt>
                                                                <dl><input type="file" id="docs" name="estratif" value="estratif"></dl>
                                                            </dl>
                                                            <dl>
                                                                <dt><label for="factura">* Fotocopia de la factura de un recibo de servicio público (que corresponda a la vigencia de la convocatoria) del domicilio donde reside el estudiante (agua, luz, gas o teléfono), que coincida con la dirección del certificado de estratificación. </label></dt>
                                                                <dl><input type="file" id="docs" name="factura" value="factura"></dl>
                                                            </dl>
                                                            <dl>
                                                                <dt><label for="reciboMatricula">* Fotocopia del Recibo de Pago de la Universidad debidamente cancelado.</label></dt>
                                                                <dl><input type="file" id="docs" name="reciboMatricula" value="reciboMatricula"></dl>
                                                            </dl>
                                                            <dl>
                                                                <dt><label for="desplazado">(opcional) Certificado de desplazamiento forzoso por violencia del Departamento de la Protección Social- DPS. </label></dt>
                                                                <dl><input type="file" id="docs" name="desplazado" value="desplazado"></dl>
                                                            </dl>
                                                            <dl>
                                                                <dt><label for="hijos">(opcional) Si es padre/madre, certificado Civil de nacimiento de los o las hijas. </label></dt>
                                                                <dl><input type="file" id="docs" name="hijos" value="hijos"></dl>
                                                            </dl>
                                                            <dl>
                                                                <dt><label for="cartaDirector">(opcional) Certificado de Discapacidad Medica de la Junta de Invalidez, avalado por el médico de Bienestar Institucional de la Universidad Distrital Francisco José de Caldas. </label></dt>
                                                                <dl><input type="file" id="docs" name="docs"></dl>
                                                            </dl>
                                                            
                                                        </div> 
                                                        
                                                    </div>
                                                    


							


							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
								<button type="submit" class="submit btn btn-primary">Registrar Solicitud</button>
							</div>
                                                    </form>
						</div>
					</div>
				</div>

			</div>






			<!--MAIN-->
			<main role="main">
				<section class="jumbotron text-center">
					<div class="container">
						<h1>Bienvenido</h1>
						<p class="lead text-muted">Esta es la nueva plataforma para el Apoyo Alimentario de la Universidad</p>
						<p>
							<a id="btn_solicitar"  class="btn btn-primary my-2">Solicitar Apoyo</a>
							<a id="btn_revisar" class="btn btn-secondary my-2">Revisar Solicitud</a>
						</p>
					</div>
				</section>

				<div class="container">
					<div class="row">
						<h1>Admitidos Convocatoria Actual</h1>
						<table class="table table-hover">
							<thead>
								<tr>
									<th scope="col">Cod.</th>
									<th scope="col">Apellido</th>
									<th scope="col">Nombre</th>
									<th scope="col">Tipo</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">20172020145</th>
									<td>Mark</td>
									<td>Otto</td>
									<td>A</td>
								</tr>
								<tr>
									<th scope="row">20172463774</th>
									<td>Jacob</td>
									<td>Thornton</td>
									<td>B</td>
								</tr>
								<tr>
									<th scope="row">20172020025</th>
									<td>Larry</td>
									<td>the Bird</td>
									<td>C</td>
								</tr>
								<tr>
									<th scope="row">20172024567</th>
									<td>Pepito</td>
									<td>Perez</td>
									<td>A</td>
								</tr>
								<tr>
									<th scope="row">20112027951</th>
									<td>Pepito</td>
									<td>Perez</td>
									<td>B</td>
								</tr>
								<tr>
									<th scope="row">20172020145</th>
									<td>Pepita</td>
									<td>Martinez</td>
									<td>A</td>
								</tr>
								<tr>
									<th scope="row">12345674894</th>
									<td>Pepe</td>
									<td>Rodrigguez</td>
									<td>B</td>
								</tbody>
							</table>
						</div>
					</div>


				</main>
			</body>
			</html>
			<!-- jQuery first, then Popper.js, then Bootstrap JS. -->
			<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
			<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
			<script >
				$("#btn_revisar").click(function(){
					$("#loginModal").modal('show');

				});
				$("#btn_solicitar").click(function(){
					$("#registroModal").modal('show');

				});

			</script>