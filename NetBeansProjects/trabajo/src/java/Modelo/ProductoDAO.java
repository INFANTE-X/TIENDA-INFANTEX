package Modelo;

import java.sql.*;
import java.util.*;
import java.math.BigDecimal;
import java.util.logging.Level;
import java.util.logging.Logger;
import Recursos.Conexion; // Importá tu clase personalizada

public class ProductoDAO {
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

    public ProductoDAO() {
        Conexion cn = new Conexion("localhost", "infantex", "root", "1006476888"); 
        con = cn.getConexion();
    }

    public List<ProductoVO> buscarOpcionValor(int opcion, String valor) {
        List<ProductoVO> lista = new ArrayList<>();
        String sql = "";

        switch (opcion) {
            case 1:
                sql = "SELECT * FROM producto WHERE id_producto = ?";
                break;
            case 2:
                sql = "SELECT * FROM producto WHERE nombre LIKE ?";
                valor = "%" + valor + "%";
                break;
        }

        try {
            ps = con.prepareStatement(sql);
            ps.setString(1, valor);
            rs = ps.executeQuery();
            while (rs.next()) {
                ProductoVO p = new ProductoVO();
                p.setId(rs.getInt("id_producto"));
                p.setNombre(rs.getString("nombre"));
                p.setPrecio(rs.getBigDecimal("precio"));
                p.setStock(rs.getInt("stock"));
                lista.add(p);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return lista;
    }
}