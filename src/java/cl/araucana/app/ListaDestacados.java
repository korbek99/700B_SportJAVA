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
@WebServlet(name = "ListaDestacados", urlPatterns = {"/ListaDestacados"})
public class ListaDestacados extends HttpServlet {

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
            /*String sql="SELECT D.PW04_ID,CO.PW03_ID,CO.PW03_DESCRIPCION,D.PW04_ORDEN,CO.PW03_IMG1,CO.PW03_IMG2"
            + "FROM pw04_destacado D ,pw03_contenido CO "
            + "WHERE  D.PW03_ID=CO.PW03_ID"; // definer query*/
            String sql="SELECT D.PW04_ID AS id4, "
            + "CO.PW03_ID AS  iddes,"
            + "CO.PW03_DESCRIPCION AS descripcion,"
            + "D.PW04_ORDEN AS orden,"
            + "CO.PW03_IMG1 AS foto1,"
            + "CO.PW03_IMG2 AS foto2, "
            + "(SELECT DISTINCT PW02_DESCRIPCION FROM pw02_categoria WHERE PW02_ID=CO.PW02_ID) AS categoria "
            + "FROM pw04_destacado D ,pw03_contenido CO "
            + " WHERE  D.PW03_ID=CO.PW03_ID ORDER BY orden";
             //String sql="SELECT * FROM pw04_destacado";
            ResultSet rs=db.ejecutarConsulta(sql); // obtener tuplas en ResultSet           
            
            responseJson += "[" ;
            while(rs.next()) // recorrer ResultSet
            {
                responseJson += "{";
                responseJson += "\"id\":\""+rs.getString("id4") +"\",";
                responseJson += "\"iddescri\":\""+rs.getString("iddes") +"\",";
                responseJson += "\"descripcion\":\""+rs.getString("descripcion") +"\",";
                responseJson += "\"foto\":\""+rs.getString("foto1") +"\",";
                 responseJson += "\"categoria\":\""+rs.getString("categoria") +"\",";
                responseJson += "\"orden\":\""+rs.getString("orden") +"\"";

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
