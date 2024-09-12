<%-- 
    Document   : Menu
    Created on : 28-jun-2012, 19:16:30
    Author     : Korbek
--%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Menu</title>
    <link href="css/base.css" rel="stylesheet" />
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            goMenu();
            goDestacado();
            goContenido();
        });

        function goDestacado() {
            var str = '';
            $("#titulo").html("Lista Destacados");
            $.getJSON("ListarFotoDestacados", "", function(destacados) {
                // Usamos un contenedor de Bootstrap para una mejor responsividad
                str += '<div class="container">';
                str += '<div class="row">';

                $.each(destacados, function(i, item) {
                    // Usamos col-md-4 para 3 columnas en pantallas medianas y más grandes
                    // Usamos col-sm-6 para 2 columnas en pantallas pequeñas
                    str += '<div class="col-md-4 col-sm-6 mb-4">';
                    str += '<div class="card">';
                    str += '<img onclick="goshow()" src="thum/' + item.url + '" class="img-thumbnail card-img-top" alt="Imagen destacada">';
                    str += '</div>';
                    str += '</div>';
                });

                str += '</div>';
                str += '</div>';

                $("#fotos").hide();
                $("#fotos").html(str);
                $("#fotos").slideDown(500);
            });
        }


        function goMenu() {
            var str = '';
            $("#titulo").html("Lista Menu");
            $.getJSON("Listar", "", function(empleados) {
                str += '<table class="table">';
                str += '<tr>';
                 str += '<td><input type="button" class="btn btn-primary" onclick="showDestacados();" value="HOME"/></td>';
                $.each(empleados, function(i, item) {
                    str += '<td><input type="button" class="btn btn-primary" onclick="goCargaFotos('+parseInt(item.id)+'); hideDestacados();" value="'+item.menu+'" /></td>';
                });
                str += '<td><input type="button" class="btn btn-secondary" onclick="goSistema(); hideDestacados();" value="MANTENEDORES" /></td>';
                str += '</tr>';
                str += '</table>';
                $("#menu").hide();
                $("#menu").html(str);
                $("#menu").slideDown(500);
            });
        }

        function hideDestacados() {
            $("#fotos").hide();  // Ocultar el contenido de Destacados
        }
        function showDestacados() {
            $("#fotos").show();  // muestra el contenido de Destacados
            $("#sistema").hide()
            $("#fotosthumb").hide();
        }
        function goCargaFotos(id) {
            var str = '';
            $.getJSON("ListarFotoContenidos", "id=" + id, function(menu) {
                str += '<table class="table table-striped"><tr><td></td>';
                $.each(menu, function(i, item) {
                    str += '<td><img class="img-thumbnail" onclick="goFotoGrande(' + item.id + ')" src="thumb/' + item.thumb + '" /></td>';
                });
                str += '</tr></table>';
                $("#fotos").hide();
                $("#sistema").hide()
                $("#fotosthumb").hide();
                $("#fotosthumb").html(str);
                $("#fotosthumb").show(500);
            });
        }

        function goSistema() {
                // Ocultar otras secciones si es necesario
                $("#fotos").hide();
                $("#fotos").hide();
                $("#fotosthumb").hide();
                //$("#menu").hide();

                // Mostrar el contenedor donde se cargará el contenido
                $("#sistema").html('<div class="text-center"><p>Cargando...</p></div>').show();

                // Cargar el contenido de mantenedor.jsp en el contenedor #sistema
                $.get('mantenedor.jsp', function(data) {
                    $("#sistema").html(data);
                }).fail(function() {
                    $("#sistema").html('<div class="text-center text-danger"><p>Error al cargar el contenido.</p></div>');
                });
           }


        function goContenido() {
            var str = '';
            $.getJSON("ListaDestacados", function(menu) {
                str += '<table class="table"><tr>';
                $.each(menu, function(i, item) {
                    if (item.orden == 1) {
                        str += '<td class="td"><img class="img-thumbnail" src="img/' + item.foto + '" /></td>';
                        str += '<td class="td font-weight-bold">PRODUCTO DESTACADO <br><br>' + item.descripcion + ' <br> DE  <br>' + item.categoria + '</td>';
                    } else {
                        str += '<td class="td"><table><tr><td class="td"><img class="img-thumbnail" src="thumb/' + item.foto + '" /></td></tr>';
                        str += '<tr><td class="text-muted">' + item.descripcion + ' <br> DE  <br>' + item.categoria + '</td></tr></table></td>';   
                    }
                });
                str += '</tr></table>';
                $("#fotos").hide();
                $("#fotos").html(str);
                $("#fotos").show(500);
            });
        }
    </script>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col">
                <h3>Menu Principal</h3>
                <div id="menu"></div>
                <div id="fotosthumb"></div>
                <div id="fotos"></div>
                <div id="sistema" class="container mt-4" style="display: none;"></div>
                <div id="pie" class="text-center mt-4">
                    Trabajo Java III - <br>Jose Bustos - Cesar Maldonado <br>2012 Curso: 700B
                </div>
            </div>
        </div>
    </div>
    

</body>
</html>
