<!DOCTYPE html>
<html lang="pt">

<head>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	
	
	<c:import url="imports/import.jsp" />

    <title>Controle de ponto - Sistema</title>
</head>

<body>
    <c:import url="imports/cabecalho.jsp" />

    <div class="container">
        <div class="row">
            <div class="col-md-3">
               <p class="lead">Menu</p>
                 <div class="list-group">
                    <a href="cad.jsp" class="list-group-item active">Calcular horario</a>
                    <a href="nota.jsp" class="list-group-item">Calcular nota</a>
                </div>
            </div>

            <div style="margin-top:50px" class="col-md-9">
            	<table align="center" border="1" cellpadding="1" cellspacing="1" style="width:500px">
					<thead>
						<tr>
							<th scope="col"><h5  align="center">Data</h5></th>
							<th scope="col"><h5  align="center">Horário Entrada</h5></th>
							<th scope="col"><h5  align="center">Saída Refeição</h5></th>
							<th scope="col"><h5  align="center">Retorno Refeição</h5></th>
							<th scope="col"><h5  align="center">Horário Saída</h5></th>
							<th scope="col" id="HP" class="" style=""><h5  align="center">Horas de trabalho</h5></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input class="form-control" style="width:100px"  id="datepickerDataFinal" type="text"></td>
							<td>
								<div class="input-group clockpicker">
									<input  id="horarioEntrada" type="text" onchange="verificaInput()"   class="form-control" value="00:00"> 
								</div>
							</td>
							<td>
								<div class="input-group clockpicker">
									<input id="saidaRefeicao" type="text" onchange="verificaInput()" class="form-control" value="00:00"> 
								</div>
							</td>
							<td>
								<div class="input-group clockpicker">
									<input id="voltaRefeicao" type="text" onchange="verificaInput()" class="form-control" value="00:00"> 
								</div>
							</td>
							<td>
								<div class="input-group clockpicker">
									<input id="horarioSaida" type="text" onchange="verificaInput()" class="form-control" value="00:00"> 
								</div>
							</td>
							<td><input id="result" class="form-control" onchange="verificaInput()" type="text"></td>
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

	 
    <!-- /.container -->

    <div class="container">
        <hr>
        <c:import url="imports/rodape.jsp" />
    </div>

    <!-- JavaScript -->
    <script src="js/gerarBackup.js"></script>
    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/jquery.min.js"></script>
    <script src="js/cad.js"></script>
    <script src="js/datepicker.js"></script>
    <script src="js/bootstrap.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="dist/bootstrap-clockpicker.min.js"></script>

	<!-- DATEPICKER -->
	<script type="text/javascript">
		// When the document is ready
		$(document).ready(function() {

			$('#datepickerDataFinal').datepicker({
				format : "dd/mm/yyyy",
				startDate : today,
				language : "pt-BR",
				autoclose : true,
				orientation : "top left",
				todayHighlight : true
			});
		});
	</script>
	
	<!-- TIMEPICKER -->
	<script type="text/javascript">
		$('.clockpicker').clockpicker({
			placement : 'bottom',
			autoclose : true,
			align : 'left',
			donetext : 'OK'
		});
	</script>
	
	<script type="text/javascript" src="assets/js/highlight.min.js"></script>
	<script type="text/javascript">
	hljs.configure({tabReplace: '    '});
	hljs.initHighlightingOnLoad();
	</script>

<!-- CAPTURA DIA ATUAL -->
	<script>
		var today = new Date();
		var dd = today.getDate();
		var mm = today.getMonth()+1; //January is 0!
		var yyyy = today.getFullYear();
		if(dd<10) {
		    dd='0'+dd
		} 
		if(mm<10) {
		    mm='0'+mm
		} 
		today = dd+'/'+mm+'/'+yyyy;
	</script>

</body>

</html>