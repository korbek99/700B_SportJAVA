/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.araucana.app;

import cl.araucana.mysql.BaseDatos;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Korbek
 */
@WebServlet(name = "BuscarCategoria", urlPatterns = {"/BuscarCategoria"})
public class BuscarCategoria extends HttpServlet {

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
         
        String responseJson = "";
        try {
            BaseDatos db=new BaseDatos(); // instanciar objeto base de datos
            db.Conectar(); // abrir coneccion
            String sql="SELECT PW02_ID,PW02_DESCRIPCION,PW02_STD FROM pw02_categoria "
                    + "where PW02_ID='"+request.getParameter("id") +"'"; 
            ResultSet rs=db.ejecutarConsulta(sql);
            
            responseJson += "[" ;
            while(rs.next()) // recorrer ResultSet
            {
                responseJson += "{";
                responseJson += "\"id\":\""+rs.getString("PW02_ID") +"\",";
                responseJson += "\"menu\":\""+rs.getString("PW02_DESCRIPCION") +"\",";
                responseJson += "\"estado\":\""+rs.getString("PW02_STD") +"\"";
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
        processRequest(request, response);
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
        processRequest(request, response);
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
