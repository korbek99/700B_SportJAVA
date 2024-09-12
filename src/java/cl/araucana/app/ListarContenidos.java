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
@WebServlet(name = "ListarContenidos", urlPatterns = {"/ListarContenidos"})
public class ListarContenidos extends HttpServlet {

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
            String sql="SELECT "
            + "CO.PW03_ID as id,"
            + "CO.PW03_TITULO as titulo,"
            + "CO.PW03_DESCRIPCION as descripcion,"
            + "CO.PW03_IMG1 as foto,"
            + "CO.PW03_IMG2 as thumb,"
            + "CO.PW03_STD as estado,"
            + "CO.PW02_ID as idcategoria,"
            + "CA.PW02_DESCRIPCION as categoria"
            + " FROM pw03_contenido CO ,pw02_categoria CA"
            + " WHERE  CO.PW02_ID=CA.PW02_ID "; // definer query
            ResultSet rs=db.ejecutarConsulta(sql); // obtener tuplas en ResultSet           
            
            responseJson += "[" ;
            while(rs.next()) // recorrer ResultSet
            {
                responseJson += "{";
                responseJson += "\"id\":\""+rs.getString("id") +"\",";
                responseJson += "\"titulo\":\""+rs.getString("titulo") +"\",";
                responseJson += "\"descripcion\":\""+rs.getString("descripcion") +"\",";
                responseJson += "\"img\":\""+rs.getString("foto") +"\",";
                responseJson += "\"thumb\":\""+rs.getString("thumb") +"\",";
                responseJson += "\"estado\":\""+rs.getString("estado") +"\",";
                responseJson += "\"idcategoria\":\""+rs.getString("idcategoria") +"\",";
                responseJson += "\"contenidos\":\""+rs.getString("categoria") +"\"";
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
