/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package Modelo;
//importamos librerías
import Recursos.Conexion;
import java.util.LinkedList;
import java.sql.*;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *                   
 * @author portatil
 */
public class RegistroDAO {
   //atributos
     private static LinkedList<RegistroVO> listaRegistros; //LinkedList guarda el listado de pacientes
     private static Connection con;
     
    //constructor
    public RegistroDAO(){
    Recursos.Conexion conexion= new Recursos.Conexion("localhost", "infantex", "root", "1006476888");
     con=conexion.getConexion(); 
    }
    
//metodo para registrar un usuario
 public String registrarRegistro(RegistroVO registroVO) {
    PreparedStatement pst;
    String mensaje = "";
    try {
        pst = con.prepareStatement("insert into registro values (?, ?, ?, ?, ?, ?)");
        pst.setString(1, registroVO.getId_registro());
        pst.setString(2, registroVO.getNombre());
        pst.setString(3, registroVO.getApellido());
        pst.setString(4, registroVO.getFecha_nacimiento());
        pst.setString(5, registroVO.getCorreo_electronico());
        pst.setString(6, registroVO.getContraseña());
        int filas = pst.executeUpdate();
        if (filas > 0) {
            mensaje = "Registro " + registroVO.getId_registro() + " registrado con éxito";
        } else {
            mensaje = "No se pudo registrar el registro";
        }
        pst.close();
    } catch (SQLException ex) {
        mensaje = "Error al registrar: " + ex.getMessage();
        Logger.getLogger(RegistroDAO.class.getName()).log(Level.SEVERE, null, ex);
    }
    return mensaje;
}
    
    //Método para buscar por una opción y un valor
 //visibilidad retorno nombre (parametro)
 
    public RegistroVO findByPrimaryKey(String id_registro){
             RegistroVO registroVO= new RegistroVO();
             String sql="select*from registro where id_registro='" + id_registro + "'";
             
              try {
             Statement st=con.createStatement();
             ResultSet rs=st.executeQuery(sql);
             if(rs.next()){
                 registroVO.setId_registro(rs.getString("id_registro"));
                 registroVO.setNombre(rs.getString("nombre"));
                 registroVO.setApellido(rs.getString("apellido"));
                 registroVO.setFecha_nacimiento(rs.getString("fecha_nacimiento"));
                 registroVO.setCorreo_electronico(rs.getString("correo_electronico"));
                 registroVO.setContraseña(rs.getString("contraseña"));
             }
             st.close();
          
         } catch (SQLException ex) {
             Logger.getLogger(RegistroDAO.class.getName()).log(Level.SEVERE, null, ex);
         }
         return registroVO;
    }

   //Método para buscar por una opción y un valor
    public List<RegistroVO> buscarOpcionValor(int opcion,String valor){
        List<RegistroVO> listaRegistro=new ArrayList<>();
        String sql="";
        switch(opcion){
            case 1:
                sql="select * from registro where id_registro='"+valor+"'";
                break;
            case 2:
                sql="select * from registro where nombre='"+valor+"'";
                break;
        }
        
        try {
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery(sql);
            while(rs.next()){
               listaRegistro.add(new RegistroVO(rs.getString("id_registro"),rs.getString("nombre"),rs.getString("apellido"),rs.getString("fecha_nacimiento"),rs.getString("correo_electronico"),rs.getString("contraseña")));
            }
            st.close();
        } catch (SQLException ex) {
            Logger.getLogger(RegistroDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return listaRegistro;
    }
    
}