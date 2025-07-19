/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

// Importamos librerías necesarias
import Recursos.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * 
 */
public class UsuarioDAO {
    // Atributos
    private LinkedList<UsuarioVO> listaUsuarios; // (puedes usarlo si lo necesitas más adelante)
    private Connection con;
    private UsuarioVO usuarioVO;

    // Constructor: establece la conexión con la base de datos
    public UsuarioDAO() {
      Conexion conexion = new Conexion("localhost", "INFANTEX", "root", "1006476888");
        con = conexion.getConexion();

        if (con == null) {
            System.out.println("Error: No se pudo establecer conexión con la base de datos.");
        }
    }

    // Método para validar usuario y contraseña
    public boolean validarUsuario(String identificacion, String password) {
    boolean coincidio = false;
    
    String sql = "select * from usuario where correo_electronico='"+identificacion+"' and contraseña='"+password+"'";
    
        try{
     Statement st=con.createStatement();
            ResultSet rs=st.executeQuery(sql);
            if(rs.next()){
                coincidio=true;
            }
        
            st.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    
    
    return coincidio;
    }
}   