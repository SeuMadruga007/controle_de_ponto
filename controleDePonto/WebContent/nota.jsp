<!DOCTYPE html>
<html lang="pt">

<head>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	
	 <link rel="stylesheet" type="text/css" href="css/nota.css" />
	
	<c:import url="imports/import.jsp" />

    <title>Calcula media - Sistema</title>
</head>

<body>
    <c:import url="imports/cabecalho.jsp" />

    <div class="container">
        <div class="row">
            <div class="col-md-3">
               <p class="lead">Menu</p>
                 <div class="list-group">
                    <a href="controleDePonto.jsp" class="list-group-item">Controle de ponto</a>
                    <a href="nota.jsp" class="list-group-item active">Calcular media</a>
                </div>
            </div>

            <div style="margin-top:50px" class="col-md-9">
            	<table align="center" border="1" cellpadding="1" cellspacing="1" style="width:500px">
					<thead>
						<tr>
							<th scope="col"><h5  align="center">Saída Refeição</h5></th>
							<th scope="col"><h5  align="center">Retorno Refeição</h5></th>
							<th scope="col"><h5  align="center">Horário Saída</h5></th>
							<th scope="col" id="HP" class="" style=""><h5  align="center">Horas de trabalho</h5></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>
								<div class="input-group spinner">
								    <input type="text" class="form-control" id="p1" value="0">
								    <div class="input-group-btn-vertical">
								      <button class="btn btn-default" onclick="soma()"><i class="fa fa-caret-up"></i></button>
								      <button class="btn btn-default"><i class="fa fa-caret-down"></i></button>
								    </div>
								  </div>
							</td>
							<td>
								<div class="input-group clockpicker">
									<input id="voltaRefeicao" type="text" class="form-control" value="00:00"> 
								</div>
							</td>
							<td>
								<div class="input-group clockpicker">
									<input id="horarioSaida" type="text" class="form-control" value="00:00"> 
								</div>
							</td>
							<td><input id="result" class="form-control" type="text"></td>
						</tr>
					</tbody>
				</table>
				
					 <div>
				        <button onclick="calcula()" style="margin-top:42px;" class="btn btn-success col-md-12">Calcular</button>
				     </div>
				     
				     <input type="hidden" name="logica" value="GeraBackup"> 
	            </div>
	        </div>
	    </div>

	 </div>
	 
    <!-- /.container -->

    <div class="container">
        <hr>
        <c:import url="imports/rodape.jsp" />
    </div>

    <!-- JavaScript -->
    <script src="js/gerarBackup.js"></script>
    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/jquery.min.js"></script>
    <script src="js/nota.js"></script>
    <script src="js/datepicker.js"></script>
    <script src="js/bootstrap.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="dist/bootstrap-clockpicker.min.js"></script>
</body>

</html>