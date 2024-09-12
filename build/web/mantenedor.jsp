<%-- 
    Document   : mantenedor
    Created on : 30-jun-2012, 12:02:42
    Author     : Korbek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="css/base.css" rel="stylesheet" />
        <script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function(){
                goCateLista();
            });
            $(document).ready(function(){
                goDestaLista();
            });
            $(document).ready(function(){
                goContenidos();
            });
            $(document).ready(function(){
                goComboCategoria();
            });
              $(document).ready(function(){
                goComboDestacado();
            });
             
            function goComboDestacado()
            {              
                var str = '';
                $("#titulo").html("Listar Contenidoss");
                $.getJSON("ListarContenidos", "", function(empleados){  
                    $.each(empleados, function(i, item){      
                             str += '<option value="'+item.id+'">'+item.descripcion+'</option>'; 
                    });
                    $("#ComboDestacado").hide();
                    $("#ComboDestacado").html(str);
                    $("#ComboDestacado").slideDown(500); 
                });   
            }
            function goComboCategoria()
            {              
                var str = '';
                $("#titulo").html("Listar Categorias");
                $.getJSON("ListarCategorias", "", function(empleados){  
                    $.each(empleados, function(i, item){      
                             str += '<option value="'+item.id+'">'+item.menu+'</option>'; 
                    });
                    $("#Combocategoria").hide();
                    $("#Combocategoria").html(str);
                    $("#Combocategoria").slideDown(500); 
                });   
            }
            function goContenidos()
            {
                var str = '';
                $("#titulo").html("Listar Contenidos");
                $.getJSON("ListarContenidos", "", function(empleados){
                         str += '<table class="tabla">';
                         str += '<tr class="td">';
                         str += '<td align="center">Listar Contenidos</td>';
                         str += '</tr>';
                         str += '</table>';
                         str += '<table class="tabla" id="TablaContenidos">';
                         str += '<tr class="td">';
                         str += '<td>Id</td><td>:</td><td><input type="text"  disabled ="true" id="textidd"></td>';
                         str += '</tr>';
                         str += '<tr class="td">';
                         str += '<td>Titulo</td><td>:</td><td><input type="text" id="txttitulo"></td>';
                         str += '</tr>';
                         str += '<tr class="td">';
                         str += '<td>descripcion</td><td>:</td><td><input type="text" id="txtdesco"></td>';
                         str += '</tr>';
                         str += '<tr class="td">';
                         str += '<td>Imagen</td><td>:</td><td><input type="text" id="txtima"></td>';
                         str += '</tr>';
                         str += '<tr class="td">';
                         str += '<td>Thumb</td><td>:</td><td><input type="text" id="txtthumb"></td>';
                         str += '</tr>';
                         str += '<tr class="td">';
                         str += '<td>Estado</td><td>:</td>';
                         str += '<td><select id="ComboEstadoCon">';
                         str += '<option value=1>Vigente</option>';
                         str += ' <option value=2>No vigente</option>';                       
                         str += '</select></td>';
                         str += '</tr>';
                        str += '<tr class="td">';
                         str += '<td>Categoria</td><td>:</td>';
                         str += '<td><select id="Combocategoria">';
                         str += '<option value=""></option>';
                         str += ' <option value=""></option>';                       
                         str += '</select></td>';
                         str += '</tr>';
                         str += '</table>';
                         str += '<table>';
                         str += '<tr class="td">';
                         str += '<td><input type="button" class="boton2" id="Nuevo" value="Nuevo"></td>';
                         str += '<td><input type="button"  class="boton2" id="Grabar"  onclick="goGrabar(2)" value="Grabar"></td>';
                         str += '<td><input type="button"  class="boton2" id="Grabar"  onclick="goModificar(2)" value="Modificar"></td>';
                         str += '</tr>'; 
                         str += '</table>';
                         str += '<table class="tabla">';
                         str += '<tr class="td negrita texto11">';
                         str += '<td>Id</td>';
                         str += '<td>Titulo</td>';
                         str += '<td>Descripcion</td>';
                         str += '<td>Imagen</td>';
                         str += '<td>Thumb</td>';
                         str += '<td>Estado</td>';
                        // str += '<td>idcategoria</td>';
                         str += '<td>Contenidos</td>';
                         str += '<td>Editar</td>';
                         str += '<td>Borrar</td>';
                         str += '</tr>'; 
                         $.each(empleados, function(i, item){
                       str += '<tr class="td texto11" >';
                
                        str += '<td width="10">'+item.id+'</td>';
                        str += '<td>'+item.titulo+'</td>';
                        str += '<td>'+item.descripcion+'</td>';
                         str += '<td>'+item.img+'</td>';
                         str += '<td>'+item.thumb+'</td>';
                         //str += '<td><input type="text"  value="'+item.estado+'" /></td>';
                          str += '<td>';
                         if(parseInt(item.estado)==1){
                             str += 'Vigente';
                         }else{
                             str += 'No vigente';
                         }                          
                        str += '</td>';
                        str += '<td>'+item.contenidos+'</td>';
                        // str += '<td><input type="text"  value="'+item.idcategoria+'" /></td>';
                        // str += '<td><input type="text"  value="'+item.contenidos+'" /></td>';
                        /*str += '<td><select>';
                         if(parseInt(item.estado)==1){
                             str += '<option value="'+item.estado+'">Vigente</option>';
                         }else{
                             str += ' <option value="'+item.estado+'">No vigente</option>';
                         }                          
                        str += '</select></td>'; */
                         //onclick="goPagina('+parseInt(item.id)+')" 
                        str += '<td class="cen">';
                        str += '<img onclick="goBuscar('+2+','+item.id+')" class="cursor" src="img/edit.png" border="0" />';
                        str += '</td>';
                        
                        str += '<td class="cen">';
                        str += '<img onclick="goBorrar('+2+','+item.id+')" class="cursor" src="img/trash.png" border="0" />';
                        str += '</td>';
                        
                        str += '</tr>'; 
                    });
                    
                    str += '</table>';
                    $("#contenido").hide();
                    $("#contenido").html(str);
                    $("#contenido").slideDown(500);
                    goOcultar("contenido");
                   
                });
                
            }
            function goDestaLista()
            {
              var str = '';
                $("#titulo").html("Listar Destacados");
                $.getJSON("ListarDestacadadosTodos", "", function(empleados){
                         str += '<table class="tabla" >';
                         str += '<tr class="td">';
                         str += '<td align="center">Listar Destacados</td>';
                         str += '</tr>';
                         str += '</table>';
                         str += '<table class="tabla" id="TablaDestacados">';
                         str += '<tr class="td">';
                         str += '<td>Id</td><td>:</td><td><input type="text" disabled ="true" id="txtiddes"></td>';
                         str += '</tr>';
                         str += '<tr class="td">';
                         str += '<td>Destacados</td><td>:</td><td><select id="ComboDestacado">';
                         str += '<option value=""></option>';                       
                         str += '</select>';
                         str += '</td>';
                         str += '</tr>';
                         str += '<tr class="td">';
                         str += '<td>Orden</td><td>:</td><td><input type="text" id="ComboOrden" /></td>';
                         str += '</tr>';
                         str += '</table>';
                         str += '<table>';
                         str += '<tr class="td">';
                         str += '<td><input type="button" class="boton2" id="Nuevo" onclick="goLimpiar(3)" value="Nuevo"></td>';
                         str += '<td><input type="button"  class="boton2" id="Grabar" onclick="goGrabar(3)" value="Grabar"></td>';
                          str += '<td><input type="button"  class="boton2" id="Grabar" onclick="goModificar(3)" value="Modificar"></td>';
                         str += '</tr>'; 
                         str += '</table>';
                         str += '<table class="tabla">';
                         str += '<tr class="td">';
                         str += '<td>Id</td>';
                         //str += '<td>Id Descripcion</td>';
                         str += '<td>Descripcion</td>';
                         str += '<td>Orden</td>';
                         str += '<td>Editar</td>';
                         str += '<td>Borrar</td>';
                         str += '</tr>'; 
                         $.each(empleados, function(i, item){
                        str += '<tr class="td">';
                        str += '<td>'+item.id+'</td>';
                        str += '<td>'+item.descripcion+'</td>';
                        //str += '<td><input type="text"  value="'+item.iddescri+'" /></td>';
                        //str += '<td><input type="text"  value="'+item.descripcion+'" /></td>';
                         str += '<td>'+item.orden+'</td>';
                        
                         //onclick="goPagina('+parseInt(item.id)+')" 
                        str += '<td class="cen">';
                        str += '<img onclick="goBuscar('+3+','+item.id+')" class="cursor" src="img/edit.png" border="0" />';
                        str += '</td>';
                        
                        str += '<td class="cen">';
                        str += '<img onclick="goBorrar('+3+','+item.id+')" class="cursor" src="img/trash.png" border="0" />';
                        str += '</td>';
                        
                        str += '</tr>'; 
                    });
                    
                    str += '</table>';
                    $("#destacados").hide();
                    $("#destacados").html(str);
                    $("#destacados").slideDown(500);
                    goOcultar("destacados");
                   
                });
            }
            function goCateLista()
            {
                
                var str = '';
                $("#titulo").html("Listar Categorias");
                $.getJSON("ListarCategorias", "", function(empleados){
                        
                         str += '<table class="tabla" id="TablaCategorias">';
                         str += '<form>';
                         str += '<tr class="td">';
                         str += '<td>Id</td><td>:</td><td><input type="text" disabled ="true" id="IdCate"></td>';
                         str += '</tr>';
                         str += '<tr class="td">';
                         str += '<td>Categoria</td><td>:</td><td><input type="text" id="txtdesc"></td>';
                         str += '</tr>';
                         str += '<tr class="td">';
                         str += '<td>Estado</td><td>:</td>';
                         str += '<td><select id="ComboEstadoCate">';
                         str += '<option value=1>Vigente</option>';
                         str += ' <option value=2>No vigente</option>';                       
                         str += '</select></td>';
                         str += '</tr>'; 
                         str += '</table>';
                         str += '<table>';
                         str += '<tr class="td">';
                         str += '<td><input type="button" class="boton2" id="Nuevo" onclick="goLimpiar("TablaCategorias")" value="Nuevo"></td>';
                         str += '<td><input type="button"  class="boton2" id="Grabar" onclick="goGrabar(1)" value="Grabar"></td>';
                          str += '<td><input type="button"  class="boton2" id="Modificar" onclick="goModificar(1)" value="Modificar"></td>';
                         str += '</tr>'; 
                         str += '</form>';
                         str += '</table>';
                         str += '<br>';
                         str += '<table class="tabla">';
                         str += '<tr class="td negrita texto11">';
                         str += '<td>Id</td>';
                         str += '<td>Categoria</td>';
                         str += '<td>Estado</td>';
                         str += '<td>Editar</td>';
                         str += '<td>Borrar</td>';
                         str += '</tr>';
                   
                    $.each(empleados, function(i, item){
                       str += '<tr class="td texto11">';
                        str += '<td>'+item.id+'</td>';
                        str += '<td>'+item.menu+'</td>';
                        if (item.estado==1){
                             str += '<td>Vigente</td>';
                        }else{
                             str += '<td>No Vigente</td>';
                        }
                       
                        /*str += '<td><select>';
                         if(parseInt(item.estado)==1){
                             str += '<option value="'+item.estado+'">Vigente</option>';
                         }else{
                             str += '<option value="'+item.estado+'">No vigente</option>';
                         }                          
                        str += '</select></td>'; */
                         //onclick="goPagina('+parseInt(item.id)+')" 
                        str += '<td class="cen">';
                        str += '<img onclick="goBuscar('+1+','+item.id+')" class="cursor" src="img/edit.png" border="0" />';
                        str += '</td>';
                        
                        str += '<td class="cen">';
                        str += '<img onclick="goBorrar('+1+','+item.id+')" class="cursor" src="img/trash.png" border="0" />';
                        str += '</td>';
                        
                        str += '</tr>'; 
                    });
                    
                    str += '</table>';
                    $("#categorias").hide();
                    $("#categorias").html(str);
                    $("#categorias").slideDown(500);
                    goOcultar("categorias");
                });
            } 
               
             function goOcultar(idDiv)
            {
              var IdDiv=idDiv;  
               //alert(IdDiv);
               if (IdDiv=='')
               {
                div = document.getElementById("categorias");
                div.style.display='none';
                div = document.getElementById("contenido");
                div.style.display='none';
                div = document.getElementById("descatados");
                div.style.display='none';
               }else{
               div = document.getElementById(IdDiv);
               div.style.display='none';
               }
            }
              function goMostrar(idDiv){
                var IdDiv=idDiv;
                div = document.getElementById(IdDiv);
                div.style.display='';
                //alert(IdDiv);
               
            } 
            function goLimpiar(idtabla){
                  var tabla=id;
                switch(tabla)
                {
                case 1:
                    
                  document.getElementById("IdCate").value="";
                  document.getElementById("txtdesc").value="";
                  /*document.getElementById(IdDiv).value="";*/
                 
                  break;
                case 2:

                  document.getElementById("idcont").value="";
                  document.getElementById("txttitulo").value="";
                  document.getElementById("txtdesco").value="";
                  document.getElementById("txtima").value="";
                  document.getElementById("txtthumb").value="";
                  
                 
                  break;
                
               case 3:
                  document.getElementById("txtiddes").value="";
                  document.getElementById("txtdesD").value="";
                  document.getElementById("txtorden").value="";
                  break;
                }
            }
            function goGrabar(id){
               
               
                switch(id)
                {
                  case 1:
               
                   // creamos una cadena con los parametros que recibirá el servlet Insert
                    var param = 'descripcion='+$("#txtdesc").val();
                    param+= '&estado='+$("#ComboEstadoCate").val();
                    $.getJSON("InsertCategoria", param, function(datos){
                       goCateLista(); 
                       
                          if(datos[0]["estadotrans"]){ alert("Datos Grabaron con Exito!"); goContenidos(); }
                        else { alert("No se pudo Grabar los datos!"); }
                         });
                        break;
                  case 2:
                      
                      var param = 'titulo='+$("#txttitulo").val();
                      param+= '&descripcion='+$("#txtdesco").val();
                      param+= '&img='+$("#txtima").val();
                      param+= '&thumb='+$("#txtthumb").val();
                      param+= '&estado='+$("#ComboEstadoCon").val();
                      param+= '&idcategoria='+$("#Combocategoria").val();
     
                      $.getJSON("InsertContenidos", param, function(datos){
                        
                        if(datos[0]["estadotrans"]){ alert("Datos Grabaron con Exito!"); goContenidos(); }
                        else { alert("No se pudo Grabar los datos!"); }
                         });
                        break;
                 
                  break;
                
                  case 3:
                      
                       var param = '&iddescri='+$("#ComboDestacado").val();
                        param+= '&orden='+$("#ComboOrden").val();
                        alert(param);
                        $.getJSON("InsertDestacados", param ,function(datos){
                        if(datos[0]["estadotrans"]){ alert("Datos Grabaron con Exito!"); goDestaLista(); }
                        else { alert("No se pudo Grabar los datos!"); }
                         });

                        break;
                  break;
                }
            }
            function goBuscar(num,cod) {
                // metodo que llamará al servlet Buscar para traer los datos del empleado
               switch(num)
                {
                   case 1:  
                        $.getJSON("BuscarCategoria", "id="+cod,function(empleado){
                        $.each(empleado, function(i, item){
                            $("#IdCate").val(item.id);
                            $("#txtdesc").val(item.menu);
                            $("#ComboEstadoCate".value).val(item.estado);    
                        });                  
                        });
                            break;
                    case 2:
                        $.getJSON("BuscarContenidos", "id="+cod,function(empleado){
                        $.each(empleado, function(i, item){
                             $("#textidd").val(item.id);
                             $("#txttitulo").val(item.titulo);
                             $("#txtdesco").val(item.descripcion);
                             $("#txtima").val(item.img);
                             $("#txtthumb").val(item.thumb); 
                             $("#ComboEstadoCon").val(item.estado);
                             $("#Combocategoria").val(item.idcategoria); 
                             
                        });                  
                        });
                       
                        break;
                    case 3:
                       
                        $.getJSON("BuscarDestacado", "id="+cod,function(empleado){
                        $.each(empleado, function(i, item){
                             $("#txtiddes").val(item.id);
                             $("#ComboDestacado").val(item.iddescri);
                             $("#ComboOrden").val(item.orden);
                             
                        });                  
                        });
                        break;    
                }       
            }
            function goModificar(id){
            
                 switch(id)
                {
                  case 1:
                      //alert(id); 
                        var param = 'descripcion='+$("#txtdesc").val();
                        param+= '&estado='+$("#ComboEstadoCate").val();
                        param+= '&id='+$("#IdCate").val();
                        alert(param);
                        $.getJSON("ModificarCategoria", param ,function(datos){
                        if(datos[0]["estadotrans"]){ alert("Datos modificados con Exito!"); goCateLista(); }
                        else { alert("No se pudo modificar datos!"); }
                         });
                        break;
                  case 2:   
                      
                        var param = 'titulo='+$("#txttitulo").val();
                        param+= '&descripcion='+$("#txtdesco").val();
                        param+= '&img='+$("#txtima").val();
                        param+= '&thumb='+$("#txtthumb").val();
                        param+= '&estado='+$("#ComboEstadoCon").val();
                        param+= '&idcategoria='+$("#Combocategoria").val();
                        param+= '&id='+$("#textidd").val();
                        alert(param);
                        $.getJSON("ModificarContenido", param ,function(datos){
                        if(datos[0]["estadotrans"]){ alert("Datos modificados con Exito!"); goContenidos(); }
                        else { alert("No se pudo modificar datos!"); }
                         });
                         
                       break;
                       
                  case 3:
                      //alert(id); 
                      
                        
                        var param = 'iddescri='+$("#ComboDestacado").val();
                        param+= '&orden='+$("#ComboOrden").val();
                        param+= '&id='+$("#txtiddes").val();
                        alert(param);
                        $.getJSON("ModificarDestacados", param ,function(datos){
                        if(datos[0]["estadotrans"]){ alert("Datos modificados con Exito!"); goDestaLista(); }
                        else { alert("No se pudo modificar datos!"); }
                         });
                      break;
                }
                  
                  
            } 
            function goBorrar(num,id){
                var numero=parseInt(num)
                //alert(num,id);
                 switch(numero)
                {
                   
                  case 1:
                        var cod=id;
                        $.getJSON("EliminarCategoria", "id="+cod,function(datos){
                        if(datos[0]["estadotrans"]){ alert("Datos eliminados con Exito!"); goCateLista(); }
                        else { alert("No se pudo eliminar datos!"); }
                        });
                        break;
                  case 2:   
                        var cod=id;
                        $.getJSON("EliminarContenido", "id="+cod,function(datos){
                        if(datos[0]["estadotrans"]){ alert("Datos eliminados con Exito!"); goContenidos(); }
                        else { alert("No se pudo eliminar datos!"); }
                        });
                        break;
                
                  case 3: 
                        var cod=id;
                        $.getJSON("EliminarDestacado", "id="+cod,function(datos){
                        if(datos[0]["estadotrans"]){ alert("Datos eliminados con Exito!"); goDestaLista(); }
                        else { alert("No se pudo eliminar datos!"); }
                        });
                        break;
                }
               
            } 
        </script>    
    </head>
    <body onload="goOcultar()">
        <h1></h1>
        <div class="tabla">
             <table width="1200"><tr align="left">
             <tr>        
             <td>
              <IMG SRC="img/min.gif" onclick="goOcultar('categorias')"> 
              <IMG SRC="img/mas.gif" onclick="goMostrar('categorias')">
             </td>
             <td   align="left">  
                       <h3>Mantenedor Categorias</h3>
             </td>
             </tr>
             </table>  
             <div id="salida"></div>
            <div id="categorias" >   
            </div>
        </div>    
        <br>
        <div class="tabla">
             <table width="1200"><tr align="left">
             <tr>        
             <td>
              <IMG SRC="img/min.gif" onclick="goOcultar('contenido')"> 
              <IMG SRC="img/mas.gif" onclick="goMostrar('contenido')">
             </td>
             <td   align="left">  
                       <h3>Mantenedor Contenido</h3>
             </td>
             </tr>
             </table>   
        <div id="contenido"> </div>
        </div>    
        <br>
        <div class="tabla">
             <table width="1200"><tr align="left">
             <tr>        
             <td>
              <IMG SRC="img/min.gif" onclick="goOcultar('destacados')"> 
              <IMG SRC="img/mas.gif" onclick="goMostrar('destacados')">
             </td>
             <td   align="left">  
                       <h3>Mantenedor Destacados</h3>
             </td>
             </tr>
             </table>   
            <div id="destacados">   
            </div>
        </div>    
    </body>
</html>
