
package com.emergentes.utiles;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConexionDB {
    String driver = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/bd_ventas1";
    String usuario = "root";
    String password = "";

    protected Connection conn = null;

    public ConexionDB() {
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url, usuario, password);
            if (conn != null){
            System.out.println("Conexion OK" +conn);
            }
        } catch (ClassNotFoundException ex) {
            System.out.println("ERROR EN DRIVER"+ ex.getMessage());
        } catch (SQLException ex) {
            System.out.println("ERROR AL CONECTAR" + ex.getMessage());
        }
    }
    public Connection conectar()
    {
        return conn;
    }
    public void desconectar()
    {
        try {
            conn.close();
        } catch (SQLException ex) {
            System.out.println("ERROR AL CERRAR" + ex.getMessage());
        }
}
}
