/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.araucana.app;

import cl.araucana.mysql.BaseDatos;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Korbek
 */
@WebServlet(name = "Modificar", urlPatterns = {"/Modificar"})
public class Modificar extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
             BaseDatos db=new BaseDatos(); // instanciar objeto base de datos
            db.Conectar(); // abrir coneccion
           // String sql="select * from empleados  where cod='" + request.getParameter("cod") + "'";         
          //  ResultSet rs=db.ejecutarConsulta(sql); 
            
            
                  
            
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Modificar</title>"); 
            out.println("<link href=\"css/base.css\" rel=\"stylesheet\" />");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Agregar Nuevo Empleado</h1>");
            out.println("<form action=\"Update\" method=\"post\">");
                out.println("<table class=\"tabla\">");
                out.println("<tr class=\"fila\">");
                   out.println("<td>Apellido</td>");
                   out.println("<td><input name=\"ape\" value=\"\" /></td>");
                out.println("</tr>");
                
                out.println("<tr class=\"fila\">");
                   out.println("<td>Nombre</td>");
                   out.println("<td><input name=\"nom\" value=\"\" /></td>");
                out.println("</tr>");
                
                out.println("<tr class=\"fila\">");
                   out.println("<td>Departamento</td>");
                   out.println("<td><input name=\"dpto\" value=\"\" /></td>");
                out.println("</tr>");
                
                out.println("<tr class=\"fila\">");
                    //out.println("<td>Action</td>");
                   out.println("<td colspan=2 ><input type=\"submit\" value=\"Modificar\" /></td>");
                out.println("</tr>");
                
                out.println("</table>");
            out.println("</form>");
            out.println("</body>");
            out.println("</html>");
            
         
        } finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(Modificar.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(Modificar.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
