var variableGlobal=0;
function goDetalle()
{
var codigo=cod;
alert('Hola');
}
function goFoto(idDiv,idfoto){
                var div=idDiv;
                var foto=idfoto;
            }
function goSumar()
{
	var v1 = document.getElementById("valor1").value;
	var v2 = document.getElementById("valor2").value;
	// validar
	v1 = v1 == ""?0:v1;
	v2 = v2 == ""?0:v2;

	v1 = isNaN(v1)?0:eval(v1);
	v2 = isNaN(v2)?0:eval(v2);

	var r = v1+v2;
	document.getElementById("resultado").value = r;	

	if( v1 == 0 ) { document.getElementById("valor1").value=0; }
	if( v2 == 0 ) { document.getElementById("valor2").value=0; }
}

function goProducto()
{
	var v1 = document.getElementById("valor1").value;
	var v2 = document.getElementById("valor2").value;
	// validar
	v1 = v1 == ""?0:v1;
	v2 = v2 == ""?0:v2;

	v1 = isNaN(v1)?0:eval(v1);
	v2 = isNaN(v2)?0:eval(v2);

	var r = v1*v2;
	document.getElementById("resultado").value = r;	

	if( v1 == 0 ) { document.getElementById("valor1").value=0; }
	if( v2 == 0 ) { document.getElementById("valor2").value=0; }
}


function power(op)
{

if( op == 1 ) {
	document.getElementById("calc").style.display = "";
} else {
	document.getElementById("calc").style.display = "none";
}

}



