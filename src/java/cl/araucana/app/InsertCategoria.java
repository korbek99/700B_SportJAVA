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
@WebServlet(name = "InsertCategoria", urlPatterns = {"/InsertCategoria"})
public class InsertCategoria extends HttpServlet {
    private HttpServletResponse response;
    private String responseJson;

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            BaseDatos db=new BaseDatos(); // instanciar objeto base de datos
            db.Conectar(); // abrir coneccion
            String sql="INSERT INTO  pw02_categoria (PW02_DESCRIPCION,PW02_STD) "
                    + "values('" + request.getParameter("descripcion") + "'," + request.getParameter("estado") + ")";
            db.ejecutarActualizacion(sql); // obtener tuplas en ResultSet
             db.desconectar();
             responseJson = "[{\"estadotrans\": true}]";
        } catch(Exception e){
            responseJson = "[{\"estadotrans\": false}]";
        }finally { 
            out.println(responseJson);
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
        } catch (ServletException ex) {
            Logger.getLogger(InsertCategoria.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(InsertCategoria.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (ServletException ex) {
            Logger.getLogger(InsertCategoria.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(InsertCategoria.class.getName()).log(Level.SEVERE, null, ex);
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
