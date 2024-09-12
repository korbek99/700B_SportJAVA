package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Menu_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    <title>Menu</title>\n");
      out.write("    <link href=\"css/base.css\" rel=\"stylesheet\" />\n");
      out.write("    <link href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.5.1.min.js\"></script>\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("        $(document).ready(function(){\n");
      out.write("            goMenu();\n");
      out.write("            goDestacado();\n");
      out.write("            goContenido();\n");
      out.write("        });\n");
      out.write("\n");
      out.write("        function goDestacado() {\n");
      out.write("            var str = '';\n");
      out.write("            $(\"#titulo\").html(\"Lista Destacados\");\n");
      out.write("            $.getJSON(\"ListarFotoDestacados\", \"\", function(destacados) {\n");
      out.write("                // Usamos un contenedor de Bootstrap para una mejor responsividad\n");
      out.write("                str += '<div class=\"container\">';\n");
      out.write("                str += '<div class=\"row\">';\n");
      out.write("\n");
      out.write("                $.each(destacados, function(i, item) {\n");
      out.write("                    // Usamos col-md-4 para 3 columnas en pantallas medianas y más grandes\n");
      out.write("                    // Usamos col-sm-6 para 2 columnas en pantallas pequeñas\n");
      out.write("                    str += '<div class=\"col-md-4 col-sm-6 mb-4\">';\n");
      out.write("                    str += '<div class=\"card\">';\n");
      out.write("                    str += '<img onclick=\"goshow()\" src=\"thum/' + item.url + '\" class=\"img-thumbnail card-img-top\" alt=\"Imagen destacada\">';\n");
      out.write("                    str += '</div>';\n");
      out.write("                    str += '</div>';\n");
      out.write("                });\n");
      out.write("\n");
      out.write("                str += '</div>';\n");
      out.write("                str += '</div>';\n");
      out.write("\n");
      out.write("                $(\"#fotos\").hide();\n");
      out.write("                $(\"#fotos\").html(str);\n");
      out.write("                $(\"#fotos\").slideDown(500);\n");
      out.write("            });\n");
      out.write("        }\n");
      out.write("\n");
      out.write("\n");
      out.write("        function goMenu() {\n");
      out.write("            var str = '';\n");
      out.write("            $(\"#titulo\").html(\"Lista Menu\");\n");
      out.write("            $.getJSON(\"Listar\", \"\", function(empleados) {\n");
      out.write("                str += '<table class=\"table\">';\n");
      out.write("                str += '<tr>';\n");
      out.write("                 str += '<td><input type=\"button\" class=\"btn btn-primary\" onclick=\"showDestacados();\" value=\"HOME\"/></td>';\n");
      out.write("                $.each(empleados, function(i, item) {\n");
      out.write("                    str += '<td><input type=\"button\" class=\"btn btn-primary\" onclick=\"goCargaFotos('+parseInt(item.id)+'); hideDestacados();\" value=\"'+item.menu+'\" /></td>';\n");
      out.write("                });\n");
      out.write("                str += '<td><input type=\"button\" class=\"btn btn-secondary\" onclick=\"goSistema(); hideDestacados();\" value=\"MANTENEDORES\" /></td>';\n");
      out.write("                str += '</tr>';\n");
      out.write("                str += '</table>';\n");
      out.write("                $(\"#menu\").hide();\n");
      out.write("                $(\"#menu\").html(str);\n");
      out.write("                $(\"#menu\").slideDown(500);\n");
      out.write("            });\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        function hideDestacados() {\n");
      out.write("            $(\"#fotos\").hide();  // Ocultar el contenido de Destacados\n");
      out.write("        }\n");
      out.write("        function showDestacados() {\n");
      out.write("            $(\"#fotos\").show();  // muestra el contenido de Destacados\n");
      out.write("            $(\"#sistema\").hide()\n");
      out.write("            $(\"#fotosthumb\").hide();\n");
      out.write("        }\n");
      out.write("        function goCargaFotos(id) {\n");
      out.write("            var str = '';\n");
      out.write("            $.getJSON(\"ListarFotoContenidos\", \"id=\" + id, function(menu) {\n");
      out.write("                str += '<table class=\"table table-striped\"><tr><td></td>';\n");
      out.write("                $.each(menu, function(i, item) {\n");
      out.write("                    str += '<td><img class=\"img-thumbnail\" onclick=\"goFotoGrande(' + item.id + ')\" src=\"thumb/' + item.thumb + '\" /></td>';\n");
      out.write("                });\n");
      out.write("                str += '</tr></table>';\n");
      out.write("                $(\"#fotos\").hide();\n");
      out.write("                $(\"#sistema\").hide()\n");
      out.write("                $(\"#fotosthumb\").hide();\n");
      out.write("                $(\"#fotosthumb\").html(str);\n");
      out.write("                $(\"#fotosthumb\").show(500);\n");
      out.write("            });\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        function goSistema() {\n");
      out.write("                // Ocultar otras secciones si es necesario\n");
      out.write("                $(\"#fotos\").hide();\n");
      out.write("                $(\"#fotos\").hide();\n");
      out.write("                $(\"#fotosthumb\").hide();\n");
      out.write("                //$(\"#menu\").hide();\n");
      out.write("\n");
      out.write("                // Mostrar el contenedor donde se cargará el contenido\n");
      out.write("                $(\"#sistema\").html('<div class=\"text-center\"><p>Cargando...</p></div>').show();\n");
      out.write("\n");
      out.write("                // Cargar el contenido de mantenedor.jsp en el contenedor #sistema\n");
      out.write("                $.get('mantenedor.jsp', function(data) {\n");
      out.write("                    $(\"#sistema\").html(data);\n");
      out.write("                }).fail(function() {\n");
      out.write("                    $(\"#sistema\").html('<div class=\"text-center text-danger\"><p>Error al cargar el contenido.</p></div>');\n");
      out.write("                });\n");
      out.write("           }\n");
      out.write("\n");
      out.write("\n");
      out.write("        function goContenido() {\n");
      out.write("            var str = '';\n");
      out.write("            $.getJSON(\"ListaDestacados\", function(menu) {\n");
      out.write("                str += '<table class=\"table\"><tr>';\n");
      out.write("                $.each(menu, function(i, item) {\n");
      out.write("                    if (item.orden == 1) {\n");
      out.write("                        str += '<td class=\"td\"><img class=\"img-thumbnail\" src=\"img/' + item.foto + '\" /></td>';\n");
      out.write("                        str += '<td class=\"td font-weight-bold\">PRODUCTO DESTACADO <br><br>' + item.descripcion + ' <br> DE  <br>' + item.categoria + '</td>';\n");
      out.write("                    } else {\n");
      out.write("                        str += '<td class=\"td\"><table><tr><td class=\"td\"><img class=\"img-thumbnail\" src=\"thumb/' + item.foto + '\" /></td></tr>';\n");
      out.write("                        str += '<tr><td class=\"text-muted\">' + item.descripcion + ' <br> DE  <br>' + item.categoria + '</td></tr></table></td>';   \n");
      out.write("                    }\n");
      out.write("                });\n");
      out.write("                str += '</tr></table>';\n");
      out.write("                $(\"#fotos\").hide();\n");
      out.write("                $(\"#fotos\").html(str);\n");
      out.write("                $(\"#fotos\").show(500);\n");
      out.write("            });\n");
      out.write("        }\n");
      out.write("    </script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col\">\n");
      out.write("                <h3>Menu Principal</h3>\n");
      out.write("                <div id=\"menu\"></div>\n");
      out.write("                <div id=\"fotosthumb\"></div>\n");
      out.write("                <div id=\"fotos\"></div>\n");
      out.write("                <div id=\"sistema\" class=\"container mt-4\" style=\"display: none;\"></div>\n");
      out.write("                <div id=\"pie\" class=\"text-center mt-4\">\n");
      out.write("                    Trabajo Java III - <br>Jose Bustos - Cesar Maldonado <br>2012 Curso: 700B\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
