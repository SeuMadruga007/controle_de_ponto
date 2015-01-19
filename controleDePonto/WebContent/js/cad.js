	var data;
	var horarioEntrada;
	var saidaRefeicao;
	var voltaRefeicao;
	var horarioSaida;
	
	var horainicio;
	var minutoinicio;
	var horapausa;
	var minutopausa;
	var horacontinuacao;
	var minutocontinuacao;
	var horafinal;
	var minutofinal;
	
	
function capturaValor(){
	
	data = document.getElementById("datepickerDataFinal").value;
	horarioEntrada = document.getElementById("horarioEntrada").value.split(":");
	saidaRefeicao = document.getElementById("saidaRefeicao").value.split(":");
	voltaRefeicao = document.getElementById("voltaRefeicao").value.split(":");
	horarioSaida = document.getElementById("horarioSaida").value.split(":");
	
	horainicio = horarioEntrada[0];
	minutoinicio = horarioEntrada[1];
	horapausa = saidaRefeicao[0];
	minutopausa = saidaRefeicao[1];
	horacontinuacao = voltaRefeicao[0];
	minutocontinuacao = voltaRefeicao[1];
	horafinal = horarioSaida[0];
	minutofinal = horarioSaida[1];
}


function calcula(){
	capturaValor();
	
	horainicio = horainicio * 60 + parseInt(minutoinicio, 10);
	horapausa = horapausa * 60 + parseInt(minutopausa,10);
	horacontinuacao = horacontinuacao * 60 + parseInt(minutocontinuacao, 10);
	horafinal = horafinal * 60 + parseInt(minutofinal, 10);
	
	if (verificaHorario()) {
		return false;
		
	}
	
	var vlhora = (horapausa - horainicio) + (horafinal - horacontinuacao); 
	var hora = Math.floor(vlhora / 60); 
	var minuto = vlhora % 60; 
	
	if (parseInt(minuto, 10) < 10)
	minuto = "0" + minuto;

	if (hora == 7) {
		if (minuto > 49 && minuto < 60) {
			coloreVerde();
		} else {
			coloreVermelho();
		}
	} else if (hora == 8) {
		if (minuto >= 0 && minuto < 11) {
			coloreVerde();
		} else {
			coloreVermelho();
		}
	} else {
		coloreVermelho();
	}
		
	document.getElementById("result").value = hora + ":" + minuto;
}


function verificaInput(){
	capturaValor();
	
	// verifica o que foi digitado
	if (isNaN(horainicio) || isNaN(minutoinicio)) {
		alert("Digite somente numeros.");
		document.getElementById("horarioEntrada").value = "00:00";
	    return false;
	}
	
	else if (isNaN(horapausa) || isNaN(minutopausa)) {
		alert("Digite somente numeros.");
		document.getElementById("saidaRefeicao").value = "00:00";
	    return false;
	}
	
	else if (isNaN(horacontinuacao) || isNaN(minutocontinuacao)) {
		alert("Digite somente numeros.");
		document.getElementById("voltaRefeicao").value = "00:00";
	    return false;
	}
	
	else if (isNaN(horafinal) || isNaN(minutofinal)) {
		alert("Digite somente numeros.");
		document.getElementById("horarioSaida").value = "00:00";
	    return false;
	}
	
}


function verificaHorario(){
	if (horainicio >= horapausa || horainicio >= horacontinuacao || horainicio >= horafinal ||
			horapausa >= horacontinuacao || horapausa >= horafinal || horacontinuacao >= horafinal ) {
		alert("Verifique os horarios que foram digitados.")
		return true;
	}
}


function coloreVermelho(){
	var d = document.getElementById("HP");
	d.className = "";
	d.className = " vermelho";
}


function coloreVerde(){
	var d = document.getElementById("HP");
	d.className = "";
	d.className = " verde";
}
