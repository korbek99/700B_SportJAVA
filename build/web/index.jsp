<%-- 
    Document   : index
    Created on : 22-06-2012, 10:36:03 AM
    Author     : jose.bustos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Articulos Sport (trabajo java III)</title>
    <link href="css/base.css" rel="stylesheet" />
    <!--link href="css/galeria.css" rel="stylesheet" /--> 
  <script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
  <script type="text/javascript">
       $(document).ready(function(){
                goListarMenu();
            });
        function goListarMenu()
            {
                 var str = '';
                
                    str += '<table><tr>';
                    str += '<td class="">';
                    str +='</td>';
                    str += '<td class=""></td>';
                    str += '</tr></table>'
            } 
        function goDetalle(cod)
        {
          var codigo=cod;  
          alert(codigo);
        }
  </script>
</head>
<body>
<div class="cabecera">
    <table id=tabla1 width="1200" border="0" class="tabla">
       <tr>
            <td width="105">  
                <IMG SRC="img/logo1.jpg"  WIDTH=120 HEIGHT=100  ALT="Logo banner">
            </td>
            <td>

            </td>
       </tr>
    </table>
</div>
<div class="cabecera" >
<table id=tabla2 width="100%" border="0" class="tabla">  
<tr>    
 <td width="105">
         
 </td>
 <td >
      <% response.sendRedirect("Listar"); %>
  </td>
 <tr>
 </table>  
</div>    
<div class="cabecera" >
     <table id=tabla2 width="100%" border="0" class="tabla">
       <tr>
        <td width="105">
         <IMG SRC="img/tar.png" WIDTH=120 ALT="Logo banner">
        </td>
         <td >
                  <table id=tabla3 width="" border="0"> 
                      <tr>
                           <td >
                             imagenes todas
                           </td>
                      </tr>
                  </table>
            </td>	  
       </tr>
      </table>
</div>
<div class="cabecera" >
    <table id=tabla1 width="1000" border="0" class="tabla">
       <tr align="center">
            <td width="">

            </td>
            <td width="300">
                @Jose Bustos H <br>Curso:700B-IPLA 2012
            </td>
            <td width="">

            </td>

       </tr>
    </table>
</div>
</body>
<html>

