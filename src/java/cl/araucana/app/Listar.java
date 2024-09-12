/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.araucana.app;

import cl.araucana.mysql.BaseDatos;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
 *
 * @author rponce
 */
@WebServlet(name = "Listar", urlPatterns = {"/Listar"})
public class Listar extends HttpServlet {
    private String responseJson;

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String responseJson="";
        try {
            BaseDatos db=new BaseDatos(); // instanciar objeto base de datos
            db.Conectar(); // abrir coneccion
            String sql="select * from PW02_CATEGORIA"; // definer query
            ResultSet rs=db.ejecutarConsulta(sql); // obtener tuplas en ResultSet*/
            responseJson += "[" ;
            while(rs.next()) // recorrer ResultSet
            {
                responseJson += "{";
                responseJson += "\"id\":\""+rs.getString("PW02_ID") +"\",";
                responseJson += "\"menu\":\""+rs.getString("PW02_DESCRIPCION") +"\"";
                
                if( rs.isLast()) { responseJson += "}"; }
                else { responseJson += "},"; }
            }
            responseJson += "]" ;
        } catch(Exception e) {
            responseJson = "[]";
        }finally {  
            out.println(responseJson);
            out.close();
        }
      
    }
/**
     * Handles the HTTP
     * <code>GET</code> method.
     *
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
            Logger.getLogger(Listar.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
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
            Logger.getLogger(Listar.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
