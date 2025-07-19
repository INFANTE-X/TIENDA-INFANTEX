package Controlador;

import Modelo.ProductoDAO;
import Modelo.ProductoVO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import java.util.List;

@WebServlet("/ProductoController")
public class ProductoController extends HttpServlet {

    ProductoDAO productoDAO;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("accion");
        RequestDispatcher rd = null;

        if ("consultar".equals(accion)) {
            try {
                int opcion = Integer.parseInt(request.getParameter("opcion"));
                String valor = request.getParameter("txtValor");

                productoDAO = new ProductoDAO();
                List<ProductoVO> listaProductos = productoDAO.buscarOpcionValor(opcion, valor);

                request.setAttribute("listaProductos", listaProductos);
                rd = request.getRequestDispatcher("/BuscarProducto.jsp");

            } catch (NumberFormatException e) {
                request.setAttribute("error", "Opción inválida.");
                rd = request.getRequestDispatcher("/BuscarProducto.jsp");
            }
        }

        if (rd != null) {
            rd.forward(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Controlador de productos";
    }
}