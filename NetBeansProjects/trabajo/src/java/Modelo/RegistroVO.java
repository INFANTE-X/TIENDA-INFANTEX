/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author portatil
 */
public class RegistroVO {
    //Atributos
    private String id_registro;
    private String nombre;
    private String apellido;
    private String fecha_nacimiento;
    private String correo_electronico;        
    private String contraseña;    

//constructor CON PARAMETROS

    public RegistroVO(String id_registro, String nombre, String apellido, String fecha_nacimiento, String correo_electronico, String contraseña) {
        this.id_registro = id_registro;
        this.nombre = nombre;
        this.apellido = apellido;
        this.fecha_nacimiento = fecha_nacimiento;
        this.correo_electronico = correo_electronico;
        this.contraseña = contraseña;
    }
    
//constructor SIN PARAMETROS
 public RegistroVO() {
        this.id_registro = "";
        this.nombre = "";
        this.apellido = "";
        this.fecha_nacimiento = "";
        this.correo_electronico = "";
        this.contraseña = "";

//metodos GETTERS Y SETTERS: getters es para obtener la informacion del parametro y setters para dar o poner informacion al parametro

 }

    public String getId_registro() {
        return id_registro;
    }

    public void setId_registro(String id_registro) {
        this.id_registro = id_registro;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getFecha_nacimiento() {
        return fecha_nacimiento;
    }

    public void setFecha_nacimiento(String fecha_nacimiento) {
        this.fecha_nacimiento = fecha_nacimiento;
    }

    public String getCorreo_electronico() {
        return correo_electronico;
    }

    public void setCorreo_electronico(String correo_electronico) {
        this.correo_electronico = correo_electronico;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }
 
}