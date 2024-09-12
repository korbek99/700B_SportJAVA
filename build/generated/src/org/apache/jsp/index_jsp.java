package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <!--link href=\"css/galeria.css\" rel=\"stylesheet\" /--> \n");
      out.write("  <script type=\"text/javascript\" src=\"js/jquery-1.4.4.min.js\"></script>\n");
      out.write("  <script type=\"text/javascript\">\n");
      out.write("       $(document).ready(function(){\n");
      out.write("                goListarMenu();\n");
      out.write("            });\n");
      out.write("        function goListarMenu()\n");
      out.write("            {\n");
      out.write("                 var str = '';\n");
      out.write("                \n");
      out.write("                    str += '<table><tr>';\n");
      out.write("                    str += '<td class=\"\">';\n");
      out.write("                    str +='</td>';\n");
      out.write("                    str += '<td class=\"\"></td>';\n");
      out.write("                    str += '</tr></table>'\n");
      out.write("            } \n");
      out.write("        function goDetalle(cod)\n");
      out.write("        {\n");
      out.write("          var codigo=cod;  \n");
      out.write("          alert(codigo);\n");
      out.write("        }\n");
      out.write("  </script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
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
 response.sendRedirect("Listar"); 
      out.write("\n");
      out.write("  </td>\n");
      out.write(" <tr>\n");
      out.write(" </table>  \n");
      out.write("</div>    \n");
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
      out.write("                             imagenes todas\n");
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
      out.write("\n");
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
      out.write("</div>\n");
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
