
function alteraValorInteiro(valor,nome){
    //alert(valor);
    //alert(nome);

    var confirma = confirm('Deseja alterar o status?');
    if (confirma == true) {
	$.ajax({ type: 'POST',   url: "\mvc",
  	  data: { 
  		  logica: "Controle",
  		  valor: valor,
  		  nomeParam: nome,
  	  	},
  	 
  	  success: function(data) {
  		  obj = JSON.parse(data);
  		  if(obj.ret == 0){
  			   alert("Erro ao ao salvar, favor tentar novamente");
  		   }else{
  		       	   alert("OK");
  		   }	
  	  },
  	  
  	  async:   false,
  	  dataType: "text"
  	});
    }else{
	alert("alteracao cancelada!");
    }
    
}

function mesRealTrab(nome){
    var select = document.getElementById("comboMesRealTrab");
    var valor = select.options[select.selectedIndex].value;
     //alert(nome);
     //alert(valor); 
     
     var confirma = confirm('Deseja alterar o status?');
     if (confirma == true) {
 	$.ajax({ type: 'POST',   url: "\mvc",
   	  data: { 
   		  logica: "Controle",
   		  valor: valor,
   		  nomeParam: nome,
   	  	},
   	 
   	  success: function(data) {
   		  obj = JSON.parse(data);
   		  if(obj.ret == 0){
   			   alert("Erro ao ao salvar, favor tentar novamente");
   		   }else{
   		       	   alert("OK");
   		   }	
   	  },
   	  
   	  async:   false,
   	  dataType: "text"
   	});
     }else{
 	alert("alteracao cancelada!");
     }
}

function mesRealRef(nome){
    var select = document.getElementById("comboMesRealRef");
    var valor = select.options[select.selectedIndex].value;
    
     //alert(nome);
     //alert(valor);
    
     var confirma = confirm('Deseja alterar o status?');
    if (confirma == true) {
	$.ajax({ type: 'POST',   url: "\mvc",
  	  data: { 
  		  logica: "Controle",
  		  valor: valor,
  		  nomeParam: nome,
  	  	},
  	 
  	  success: function(data) {
  		  obj = JSON.parse(data);
  		  if(obj.ret == 0){
  			   alert("Erro ao ao salvar, favor tentar novamente");
  		   }else{
  		       	   alert("OK");
  		   }	
  	  },
  	  
  	  async:   false,
  	  dataType: "text"
  	});
    }else{
	alert("alteracao cancelada!");
    }
}





