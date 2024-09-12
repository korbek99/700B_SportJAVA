/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.araucana.mysql;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Administrador
 */
public class BaseDatos
{
    public String msgOut="";
    public Connection conn=null;
    public Statement st = null;
    public ResultSet rs = null;

    public void Conectar() throws Exception {
        MysqlDataSource dt=new MysqlDataSource();
        dt.setUser("root");
        dt.setPassword("");
        dt.setDatabaseName("db700b");
        /*dt.setDatabaseName("700b");*/
        dt.setServerName("localhost");

        try
        {
            conn=(Connection) dt.getConnection();
            msgOut = "OK";
        }
        catch(SQLException e)
        {
            msgOut=e.toString();
        }
    }

    public ResultSet ejecutarConsulta(String sql) throws Exception {
        st=(Statement) conn.createStatement();
        rs=st.executeQuery(sql);
        return rs;
    }

    public void ejecutarActualizacion(String sql) throws Exception{
        st=(Statement) conn.createStatement();
        st.executeUpdate(sql);
    }

    public void desconectar() throws Exception{
        conn.close();
    }

}
