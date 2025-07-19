/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author portatil
 */
public class UsuarioVO {
    
    //atributos
 private String identificacion;
    private String password;
    
    //constructor con parametros
    public UsuarioVO(String identificacion, String password) {
        this.identificacion = identificacion;
        this.password = password;
    }
    
    //constructor sin parametros
    public UsuarioVO() {
        this.identificacion = "";
        this.password = "";
    }
    
    //crear getters and setters

    public String getIdentificacion() {
        return identificacion;
    }

    public void setIdentificacion(String identificacion) {
        this.identificacion = identificacion;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    

    
}
