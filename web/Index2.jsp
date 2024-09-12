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
    <link href="css/galeria.css" rel="stylesheet" />
    
<script type="text/javascript">  
           $(document).ready(function(){
                var jFotos = [
                    {url: '01.jpg'},                    
                    {url: '02.jpg'},
                    {url: '03.jpg'},
                    {url: '04.jpg'},
                    {url: '05.jpg'},
                    {url: '06.jpg'},                    
                    {url: '07.jpg'},
                    {url: '08.jpg'},
                    {url: '09.jpg'},
                    {url: '10.jpg'},                    
                    {url: '11.jpg'},
                    {url: '12.jpg'}
                ];
                
                var jFotos1 = [
                    {url: '12.jpg'},                    
                    {url: '02.jpg'},
                    {url: '03.jpg'},
                    {url: '04.jpg'},
                    {url: '05.jpg'},
                    {url: '06.jpg'}
                ];
                
                $("#galeria").verGaleria({
                        titulo: 'Galeria de Fotos',
                        fotos: jFotos
                    }
                );
                
                $("#galeria1").verGaleria({
                        titulo: 'Galeria de Fotos',
                        id:'pepe',
                        num:2,
                        fotos: jFotos1
                    }
                );
            });
            function goVerFoto(url, tag){
               var tag="galeria";
                var str = '<img src="img/'+bici1.jpg+'">';
                $("#"+tag).hide();
                $("#"+tag).html(str);
                $("#"+tag).slideDown(500);                
            }
            function goFoto(idDiv,idfoto){
            var div=idDiv;
            var foto=idfoto;
            
            
            }
            function goDetalle(num)
            {
                var numero=num;
                switch(numero)
                {
                  case 1:
                    alert('Fotos Futbol  codigo : '+numero);
                  break;
                  case 2:
                    alert('Fotos Tenis codigo : '+numero);
                  break;
                
                  case 3:
                    alert('Fotos Ciclismo  codigo : '+numero);
                  break;
                  case 4:
                    alert('Fotos Natacion  codigo : '+numero);
                  break;
                  case 5:
                    alert('Fotos Otros  codigo : '+numero);
                  break;
                  case 6:
                      //crea popup mantenedores 
                  var opciones="toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=yes, width=1250, height=600, top=85, left=140";
                   window.open('manten.jsp',"",opciones);  
                  break;
                }
            }
           
 </script>           
</head>
<body >
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
      <jsp:include page="Listar" />
      <!--jsp:include page="ListarFotoDestacados" /-->
  </td>
 <tr>
 </table>  
</div>
  <!--
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
                            <div id="galeria">
                                
                            </div>
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
</div>-->
</body>
<html>

