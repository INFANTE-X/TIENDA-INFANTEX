/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Recursos;
//Importamos librerias
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

 /**
 *
 * 
 */
public class Conexion {
    //Definimos Atributos
    private String ip; //indica la dirección ip donde reside el servidor de bases de datos (localhost)
    private String bd; //indica el nombre de la Base de Datos a la cual nos queremos conectar (citas)
    private String usuario; //indica el nombre de usuario para conectarnos a la BD (root)
    private String clave; //indica la contraseña para conectarnos a la BD (123456)
    private String url; //guarda la cadena completa de conexión
    public Connection con; //Objeto conecction que nos permitirá realizar la conexión a la BD
    
    //constructor
    public Conexion(String ip, String bd, String usuario, String clave) {
        this.ip = ip;
        this.bd = bd;
        this.usuario = usuario;
        this.clave = clave;
        url="jdbc:mysql://"+ip+":3306/"+bd;
        
        try { 
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Error al registrar el driver JDBC");
        }
        
        try {
            con=DriverManager.getConnection(url, usuario, clave);
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Error de conexion a la base de datos");
        }
        
    }
    
    //Métodos
    //Creamos el método para retornar la conexion
    public Connection getConexion(){
        return con;
    }
    
    //creamos el método para cerrar la conexion
    public Connection cerrarConexion(){
        try {
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        con=null;
        return con;
    }
}

