/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author portatil
 */
public class RegistroController extends HttpServlet {

    Modelo.RegistroDAO registroDAO;
    Modelo.RegistroVO  registroVO;
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        String resultado="";
        RequestDispatcher rd=null;
        String accion="";
        accion=request.getParameter("accion");
        if (accion.equals("registrar")) {
            String id_registro = request.getParameter("txtIde");
            String nombre = request.getParameter("txtNom");
            String apellido = request.getParameter("txtApe");
            String fecha_nacimiento = request.getParameter("txtFecha");
            String correo_electronico = request.getParameter("txtCorreo");
            String contraseña = request.getParameter("txtContrasena");
            System.out.println("Contraseña recibida: '" + contraseña + "'");
            registroDAO= new Modelo.RegistroDAO();
            registroVO = registroDAO.findByPrimaryKey(id_registro);
            if (registroVO.getId_registro().equals("")) {
                registroVO = new Modelo.RegistroVO(id_registro, nombre, apellido, fecha_nacimiento, correo_electronico, contraseña);
                resultado = registroDAO.registrarRegistro(registroVO);
                
            } else {
                resultado = "Ya existe un registro con la identificación " + registroVO.getId_registro();
            }

            rd = request.getRequestDispatcher("Registro/nuevoRegistro.jsp");
            request.setAttribute("mensaje", resultado);
           
        }
        if(accion.equals("consultar")){
            int opcion=Integer.parseInt(request.getParameter("opcion"));
            String valor=request.getParameter("txtValor");      
            registroDAO= new Modelo.RegistroDAO();
            List<Modelo.RegistroVO>listaRegistro=registroDAO.buscarOpcionValor(opcion, valor);
            rd = request.getRequestDispatcher("/Registro/consultaRegistro.jsp");
            request.setAttribute("listaRegistro", listaRegistro);
            
        }
         rd.forward(request, response);
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}