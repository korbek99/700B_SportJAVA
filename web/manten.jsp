<%-- 
    Document   : manten
    Created on : 22-06-2012, 03:51:39 PM
    Author     : jose.bustos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mantenedor Articulos Sport (trabajo java III)</title>
        <link href="css/base.css" rel="stylesheet" />
 <script type="text/javascript">  
            function goEliminar(idtabla,idcampo){
                var tabla=idtabla;
                var idRegistro=idcampo;
                switch(tabla)
                {
                case 'tablacat':
                  
                  break;
                case 'tablacon':
                  
                  break;
                
                 case 'tablades':
                  
                  break;
                }
                
            }
            function goModificar(idtabla,id,numreg){
                
                alert('goModificar'+numreg);
                var num=parseInt(numreg);
                var tabla=idtabla;
                var idRegistro=idcampo; 
                switch(tabla)
                {
                case 'tablacatdatos':
                  document.getElementById(("desc_")+num).disabled=false;
                  var idcategoria=document.getElementById("idcate").value;
                  var descrCate=document.getElementById("desc").value;
                  var estado= document.getElementById("estado").value;
                  /*document.getElementById("idcate").value;
                  document.getElementById("desc").value;
                  document.getElementById("estado").value;*/
                  break;
                case 'tablacondatos':
                  var idcont=document.getElementById("idcont").value;
                  var titulo=document.getElementById("titulo").value;
                  var descrcon=document.getElementById("descrip").value;
                  var imagen=document.getElementById("imagen").value;
                  var thumb=document.getElementById("imagent").value;
                  var estado= document.getElementById("estado").value;
                 
                  break;
                
                case 'tabladestdatos':
                  document.getElementById("iddes").value="";
                  document.getElementById("orden").value="";
                  break;
                }
            }
            function goVolver(idDiv,idcampo){
                var Div=idDiv;
                var idRegistro=idcampo;               
            }
            $(document).ready(function(){
                goListarDestacados();
            });
            $(document).ready(function(){
                goListarContenido();
            });
            function goListarDestacados()
            {
            
               var str = '';
                $.getJSON("ListaDestacados", "", function(descatados){
                   $.each(empleados, function(i, item){
     
                        if( i%2 == 0) { str += '<tr class="fila">'; }
                        else { str += '<tr class="filaalt">'; } 
                        str += '<td>'+item.id+'</td>';
                        str += '<td>'+item.iddescri+'</td>';
                        str += '<td>'+item.descripcion+'</td>';
                        str += '<td>'+item.orden+'</td>';
                        // Agregue celdas con los iconos para editar y borrar
                        str += '<td class="cen">';
                        str += '<img onclick="goModificar('+item.id+')" class="cursor" src="img/edit.png" border="0" />';
                        str += '</td>';
                        str += '<td class="cen">';
                        str += '<img onclick="goEliminar('+item.id+')" class="cursor" src="img/trash.png" border="0" />';
                        str += '</td>';
                        str += '</tr>';
                        });
                });
            }   
            function goListarContenido()
            {
               var str = '';
                $.getJSON("ListarContenidos", "", function(Contenidos){
                    $.each(empleados, function(i, item){
     
                        if( i%2 == 0) { str += '<tr class="fila">'; }
                        else { str += '<tr class="filaalt">'; }
                        
                        str += '<td>'+item.id+'</td>';
                        str += '<td>'+item.titulo+'</td>';
                        str += '<td>'+item.descripcion+'</td>';
                        str += '<td>'+item.img+'</td>';
                        str += '<td>'+item.thumb+'</td>';
                        str += '<td>'+item.estado+'</td>';
                        str += '<td>'+item.idcategoria+'</td>';
                        str += '<td>'+item.contenidos+'</td>';
                        // Agregue celdas con los iconos para editar y borrar
                        str += '<td class="cen">';
                        str += '<img onclick="goModificar('+item.id+')" class="cursor" src="img/edit.png" border="0" />';
                        str += '</td>';
                        str += '<td class="cen">';
                        str += '<img onclick="goEliminar('+item.id+')" class="cursor" src="img/trash.png" border="0" />';
                        str += '</td>';
                        str += '</tr>';
                    }); 
                   });
            }
            function goMostrar(idDiv){
                var IdDiv=idDiv;
                div = document.getElementById(IdDiv);
                div.style.display='';
                //alert(IdDiv);
                var tabla=IdDiv;
                switch(tabla)
                {
                case 'tablacat':
                    
                  break;
                case 'contenido':
                  goListarContenido();
                  break;
                
                 case 'tablades':
                  goListarDestacados();
                  break;
                }
            }
            function goOcultar(idDiv)
            {
               var IdDiv=idDiv;  
               //alert(IdDiv);
               if (IdDiv=='')
               {
                div = document.getElementById("categoria");
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
            function goLimpiar(idtabla){
                var tabla=idtabla;
                switch(tabla)
                {
                case 'tablacatdatos':
                  document.getElementById("idcate").value="";
                  document.getElementById("desc").value="";
                  /*document.getElementById(IdDiv).value="";*/
                  break;
                case 'tablacondatos':
                  document.getElementById("idcont").value="";
                  document.getElementById("titulo").value="";
                  document.getElementById("descrip").value="";
                  document.getElementById("imagen").value="";
                  document.getElementById("imagent").value="";
                 
                  break;
                
                 case 'tabladestdatos':
                  document.getElementById("iddes").value="";
                  document.getElementById("orden").value="";
                  break;
                }
            }
            function goListarCategorias()
            {
            
            }
            function goSalir()
            {
                window.close();
                
            }
 </script>           
</head>
<body onload="goOcultar('')">
 <div class="cabecera" id="">   
    <table width="1200" border="0">
        <tr align="right"> 
            <td colspan="8">
              <input type=button class="boton2" onclick=goSalir() value="Salir"</td>
            </td>
        </tr>     
    </table>
</div>     
<div class="cabecera" id="cate">
<table width="1200">
   
    <tr align="left"> 
     <td>
      <IMG SRC="img/min.gif" onclick="goOcultar('categoria')"> 
      <IMG SRC="img/mas.gif" onclick="goMostrar('categoria')">
     </td>
      <td   align="center">  
               <h3>Mantenedor Categorias</h3>
      </td>
     </tr>
</table>    
<div class="cabecera" id="categoria">
    
    <table id=tabla1 width="1200" border="0" class="tabla3">
       <!--tr align="center">
            <td width="80">  
               <h3>Mantenedor Categorias</h3>
            </td>
       </tr--> 
       <tr>
            <td colspan="5" height="20">   
                
                <table id=tablacatdatos width="400" border="0">
                    <tr aling="left" height="10">
                        <td  colspan="3"></td>
                        
                    </tr>
                    <tr aling="left">
                        <td aling="left" class="td2">Id</td>
                        <td class="td2"><input type="text" name="idcate" id="idcate" size="10"/></td>
                    </tr>
                    <tr aling="left">
                        <td class="td2">Descripcion</td>
                        <td class="td2">
                        <input type="text" name="desc" id="desc"/>
                        </td>
                    </tr> 
                    <tr aling="left">
                        <td class="td2">Estado</td>
                        <td class="td2">
                            <select id="estado">
                              <option value=1>Vigente</option>
                              <option value=2>No Vigente</option>
                            </select> 
                        </td>
                    </tr> 
                    <tr aling="left" height="10">
                        <td  colspan="3">
                            
                        </td>
                        
                    </tr>
                    <tr aling="left" height="10">
                        <td  colspan="3">
                            <table>
                                <tr aling="left" height="10">
                                  <td ><input type="button" value="Nuevo" class="boton2" onclick="goLimpiar('tablacatdatos')"/></td>
                                  <td ><input type="button" value="Grabar" class="boton2" /></td>
                                  <td ><input type="button" value="Actualizar" class="boton2" /></td>
                                </tr>  
                            </table>
                            
                        </td>
                        
                    </tr> 
                </table>
            </td>
       </tr> 
       <tr>
            <td>
              <table id=tablacat width="1200" border="0">
                    <tr >
                        <th width="5" border="0" class="td"> ID </th>
                        <th width="150" class="td"> Descripcion </th>
                        <th width="5" class="td"> Estado </th>
                        <th width="5" class="td"> Editar </th>
                        <th width="5" class="td"> Borrar </th>
                     </tr> 
                     
                     <!--jsp:include page="ListarCategorias" /-->
              </table>    
            </td>
       </tr>
       <tr>
            <td colspan="5" height="10">  
              
            </td>
       </tr> 
    </table>
</div>
</div>    
  <br>   
<div class="cabecera" id="conte1">
<table width="1200"><tr align="left">
     <td>
      <IMG SRC="img/min.gif" onclick="goOcultar('contenido')"> 
      <IMG SRC="img/mas.gif" onclick="goMostrar('contenido')">
     </td>
     <td   align="center">  
               <h3>Mantenedor Contenidos</h3>
      </td>
     </tr>
    </table>   
<div class="cabecera" id="contenido">

    <table id=tabla2 width="1200" border="0" class="tabla3">
       <!--tr align="center">
            <td width="80">  
               <h3>Mantenedor Contenidos</h1>
            </td>
       </tr--> 
       <tr>
            <td colspan="8" height="20">  
                  <table id=tablacondatos width="400" border="0">
                    <tr aling="left" height="10">
                        <td  colspan="3"></td>
                        
                    </tr>
                    <tr aling="left">
                        <td class="td2">Id</td>
                        <td class="td2"><input type="text" name="idcont" id="idcont" size="10"/></td>
                    </tr>
                    <tr aling="left">
                        <td class="td2">Titulo</td>
                        <td class="td2">
                        <input type="text" name="titulo" id="titulo"/>
                        </td>
                    </tr>
                    <tr aling="left">
                        <td class="td2">Descripcion</td>
                        <td class="td2">
                        <input type="text" name="descrip" id="descrip"/>
                        </td>
                    </tr>
                    <tr aling="left">
                        <td class="td2">Imagen</td>
                        <td class="td2">
                        <input type="text" name="imagen" id="imagen"/>
                        </td>
                    </tr>
                    <tr aling="left">
                        <td class="td2">Imagen Thumb</td>
                        <td class="td2">
                        <input type="text" name="imagent" id="imagent"/>
                        </td>
                    </tr>
                    <tr aling="left">
                        <td class="td2">Estado</td>
                        <td class="td2">
                            <select id="estado">
                              <option value=1>Vigente</option>
                              <option value=2>No Vigente</option>
                            </select> 
                        </td>
                    </tr> 
                    <tr aling="left" height="10">
                        <td  colspan="3"></td>
                        
                    </tr>
                    <tr aling="left" height="10">
                        <td  colspan="3">
                            <table>
                                <tr aling="left" height="10">
                                  <td ><input type="button" value="Nuevo" class="boton2" onclick="goLimpiar('tablacondatos')"/></td>
                                  <td ><input type="button" value="Grabar"  class="boton2"/></td>
                                  <td ><input type="button" value="Actualizar"  class="boton2"/></td>
                                </tr>  
                            </table>
                            
                        </td>
                        
                    </tr> 
                </table>
            </td>
       </tr> 
       <tr>
            <td>
              <table id=tablacon width="1200" border="0">
                    <tr >
                        <th width="5" class="td"> ID </th>
                        <th width="100" class="td"> Titulo </th>
                        <th width="100" class="td"> Descripcion </th>
                        <th width="50" class="td"> Imagen </th>
                        <th width="50" class="td"> Thumb </th>
                        <th width="5" class="td"> Estado </th>
                        <th width="5" class="td"> Editar </th>
                        <th width="5" class="td"> Borrar </th>
                     </tr> 
                    <!--jsp:include page="ListarContenidos" /-->
                     
              </table>    
            </td>
       </tr>
       <tr>
            <td colspan="8" height="10">  
              
            </td>
       </tr> 
    </table>
</div> 
</div>     
    <br>
<div id="desct">      
<table width="1200"><tr align="left">
     <td>
      <IMG SRC="img/min.gif" onclick="goOcultar('descatados')">  
      <IMG SRC="img/mas.gif" onclick="goMostrar('descatados')">
     </td>
     <td   align="center">  
               <h3>Mantenedor Destacados</h3>
      </td>
     </tr>
    </table>      
<div class="cabecera" id="descatados">
    
    <table id=tabla3 width="800" border="0" class="tabla3">
       <!--tr align="center">
            <td width="80">  
               <h3>Mantenedor Destacados</h1>
            </td>
       </tr--> 
       <tr>
            <td colspan="6" height="20">  
                 <table id=tabladestdatos width="400" border="0">
                    <tr aling="left" height="10">
                        <td  colspan="3"></td>
                        
                    </tr>
                    <tr aling="left">
                        <td aling="left" class="td2">Id</td>
                        <td class="td2"><input type="text" name="iddes" id="iddes" size="10"/></td>
                    </tr>
                     
                    <tr aling="left">
                        <td class="td2">Descripcion</td>
                        <td class="td2">
                            <select id="Descripcion">
                              <option value=1>Vigente</option>
                              <option value=2>No Vigente</option>
                            </select> 
                        </td>
                    </tr> 
                    <tr aling="left">
                        <td class="td2">Orden</td>
                        <td class="td2">
                        <input type="text" name="orden" id="orden"/>
                        </td>
                    </tr>
                    <tr aling="left" height="10">
                        <td  colspan="3"></td>
                        
                    </tr>
                    <tr aling="left" height="10">
                        <td  colspan="3">
                            <table>
                                <tr aling="left" height="10">
                                  <td ><input type="button" value="Nuevo"  class="boton2" onclick="goLimpiar('tabladestdatos')"/></td>
                                  <td ><input type="button" value="Grabar"  class="boton2" /></td>
                                  <td ><input type="button" value="Actualizar" class="boton2" /></td>
                                </tr>  
                            </table>
                            
                        </td>
                        
                    </tr> 
                </table>
            </td>
       </tr> 
       <tr>
            <td>
              <table id=tablades width="1200" border="0">
                    <tr>
                        <th width="5" class="td"> ID </th>
                        <!--th width="5" class="td"> ID Descripcion </th-->
                        <th width="150" class="td"> Descripcion </th>
                        <th width="5" class="td"> Orden </th>
                        <th width="5" class="td"> Editar </th>
                        <th width="5" class="td"> Borrar </th>
                     </tr> 
                     <!--% response.sendRedirect("ListarDest"); %-->
              </table>    
            </td>
       </tr>
       <tr>
            <td colspan="6" height="10">  
              
            </td>
       </tr> 
    </table>
</div>
</div>
</body>
</html>
