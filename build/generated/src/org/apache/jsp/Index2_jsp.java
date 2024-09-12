package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Index2_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    <title>Articulos Sport (trabajo java III)</title>\n");
      out.write("    <link href=\"css/base.css\" rel=\"stylesheet\" />\n");
      out.write("    <link href=\"css/galeria.css\" rel=\"stylesheet\" />\n");
      out.write("    \n");
      out.write("<script type=\"text/javascript\">  \n");
      out.write("           $(document).ready(function(){\n");
      out.write("                var jFotos = [\n");
      out.write("                    {url: '01.jpg'},                    \n");
      out.write("                    {url: '02.jpg'},\n");
      out.write("                    {url: '03.jpg'},\n");
      out.write("                    {url: '04.jpg'},\n");
      out.write("                    {url: '05.jpg'},\n");
      out.write("                    {url: '06.jpg'},                    \n");
      out.write("                    {url: '07.jpg'},\n");
      out.write("                    {url: '08.jpg'},\n");
      out.write("                    {url: '09.jpg'},\n");
      out.write("                    {url: '10.jpg'},                    \n");
      out.write("                    {url: '11.jpg'},\n");
      out.write("                    {url: '12.jpg'}\n");
      out.write("                ];\n");
      out.write("                \n");
      out.write("                var jFotos1 = [\n");
      out.write("                    {url: '12.jpg'},                    \n");
      out.write("                    {url: '02.jpg'},\n");
      out.write("                    {url: '03.jpg'},\n");
      out.write("                    {url: '04.jpg'},\n");
      out.write("                    {url: '05.jpg'},\n");
      out.write("                    {url: '06.jpg'}\n");
      out.write("                ];\n");
      out.write("                \n");
      out.write("                $(\"#galeria\").verGaleria({\n");
      out.write("                        titulo: 'Galeria de Fotos',\n");
      out.write("                        fotos: jFotos\n");
      out.write("                    }\n");
      out.write("                );\n");
      out.write("                \n");
      out.write("                $(\"#galeria1\").verGaleria({\n");
      out.write("                        titulo: 'Galeria de Fotos',\n");
      out.write("                        id:'pepe',\n");
      out.write("                        num:2,\n");
      out.write("                        fotos: jFotos1\n");
      out.write("                    }\n");
      out.write("                );\n");
      out.write("            });\n");
      out.write("            function goVerFoto(url, tag){\n");
      out.write("               var tag=\"galeria\";\n");
      out.write("                var str = '<img src=\"img/'+bici1.jpg+'\">';\n");
      out.write("                $(\"#\"+tag).hide();\n");
      out.write("                $(\"#\"+tag).html(str);\n");
      out.write("                $(\"#\"+tag).slideDown(500);                \n");
      out.write("            }\n");
      out.write("            function goFoto(idDiv,idfoto){\n");
      out.write("            var div=idDiv;\n");
      out.write("            var foto=idfoto;\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            }\n");
      out.write("            function goDetalle(num)\n");
      out.write("            {\n");
      out.write("                var numero=num;\n");
      out.write("                switch(numero)\n");
      out.write("                {\n");
      out.write("                  case 1:\n");
      out.write("                    alert('Fotos Futbol  codigo : '+numero);\n");
      out.write("                  break;\n");
      out.write("                  case 2:\n");
      out.write("                    alert('Fotos Tenis codigo : '+numero);\n");
      out.write("                  break;\n");
      out.write("                \n");
      out.write("                  case 3:\n");
      out.write("                    alert('Fotos Ciclismo  codigo : '+numero);\n");
      out.write("                  break;\n");
      out.write("                  case 4:\n");
      out.write("                    alert('Fotos Natacion  codigo : '+numero);\n");
      out.write("                  break;\n");
      out.write("                  case 5:\n");
      out.write("                    alert('Fotos Otros  codigo : '+numero);\n");
      out.write("                  break;\n");
      out.write("                  case 6:\n");
      out.write("                      //crea popup mantenedores \n");
      out.write("                  var opciones=\"toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=yes, width=1250, height=600, top=85, left=140\";\n");
      out.write("                   window.open('manten.jsp',\"\",opciones);  \n");
      out.write("                  break;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("           \n");
      out.write(" </script>           \n");
      out.write("</head>\n");
      out.write("<body >\n");
      out.write("<div class=\"cabecera\">\n");
      out.write("    <table id=tabla1 width=\"1200\" border=\"0\" class=\"tabla\">\n");
      out.write("       <tr>\n");
      out.write("            <td width=\"105\">  \n");
      out.write("                <IMG SRC=\"img/logo1.jpg\"  WIDTH=120 HEIGHT=100  ALT=\"Logo banner\">\n");
      out.write("            </td>\n");
      out.write("            <td>\n");
      out.write("\n");
      out.write("            </td>\n");
      out.write("       </tr>\n");
      out.write("    </table>\n");
      out.write("</div>\n");
      out.write("<div class=\"cabecera\" >\n");
      out.write("<table id=tabla2 width=\"100%\" border=\"0\" class=\"tabla\">  \n");
      out.write("<tr>    \n");
      out.write(" <td width=\"105\">\n");
      out.write("         \n");
      out.write(" </td>\n");
      out.write(" <td >\n");
      out.write("      ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Listar", out, false);
      out.write("\n");
      out.write("      <!--jsp:include page=\"ListarFotoDestacados\" /-->\n");
      out.write("  </td>\n");
      out.write(" <tr>\n");
      out.write(" </table>  \n");
      out.write("</div>\n");
      out.write("  <!--\n");
      out.write("<div class=\"cabecera\" >\n");
      out.write("     <table id=tabla2 width=\"100%\" border=\"0\" class=\"tabla\">\n");
      out.write("       <tr>\n");
      out.write("        <td width=\"105\">\n");
      out.write("         <IMG SRC=\"img/tar.png\" WIDTH=120 ALT=\"Logo banner\">\n");
      out.write("        </td>\n");
      out.write("         <td >\n");
      out.write("                  <table id=tabla3 width=\"\" border=\"0\"> \n");
      out.write("                      <tr>\n");
      out.write("                           <td >\n");
      out.write("                            <div id=\"galeria\">\n");
      out.write("                                \n");
      out.write("                            </div>\n");
      out.write("                           </td>\n");
      out.write("                      </tr>\n");
      out.write("                  </table>\n");
      out.write("            </td>\t  \n");
      out.write("       </tr>\n");
      out.write("      </table>\n");
      out.write("</div>\n");
      out.write("<div class=\"cabecera\" >\n");
      out.write("    <table id=tabla1 width=\"1000\" border=\"0\" class=\"tabla\">\n");
      out.write("       <tr align=\"center\">\n");
      out.write("            <td width=\"\">\n");
      out.write("               \n");
      out.write("            </td>\n");
      out.write("            <td width=\"300\">\n");
      out.write("                @Jose Bustos H <br>Curso:700B-IPLA 2012\n");
      out.write("            </td>\n");
      out.write("            <td width=\"\">\n");
      out.write("\n");
      out.write("            </td>\n");
      out.write("\n");
      out.write("       </tr>\n");
      out.write("    </table>\n");
      out.write("</div>-->\n");
      out.write("</body>\n");
      out.write("<html>\n");
      out.write("\n");
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
