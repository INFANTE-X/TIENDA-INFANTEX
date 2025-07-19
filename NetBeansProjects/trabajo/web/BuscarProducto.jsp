<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="Modelo.ProductoVO" %>
<%
    List<ProductoVO> lista = (List<ProductoVO>) request.getAttribute("listaProductos");
    String error = (String) request.getAttribute("error");
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Buscar Productos - INFANTEX</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet" />
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="estilos/estilos1.css" />
    <link rel="stylesheet" href="estilos/estilos.css" />
     <link rel="stylesheet" href="estilos/index.css" />

</head>
<body>

<header>
  <div class="logo">
    <a href="index.jsp">
      <img src="imagenes/logo2.jpeg" alt="INFANTEX" />
    </a>
  </div>

  <div class="menu-container">
    <nav>
      <ul class="nav">
        <li><a href="Hombre.jsp">Hombre</a>
          <ul>
            <li><a href="#">Camisas</a></li>
            <li><a href="#">Sudaderas</a></li>
            <li><a href="#">Sin mangas</a></li>
          </ul>
        </li>
        <li><a href="Mujer.jsp">Mujer</a>
          <ul>
            <li><a href="#">Camisas</a></li>
            <li><a href="#">Sudaderas</a></li>
            <li><a href="#">Sin mangas</a></li>
          </ul>
        </li>
        <li><a href="Accesorios.jsp">Accesorios</a></li>
      </ul>
    </nav>
  </div>

  <div class="right-section">
    <form class="search-form" action="BuscarProducto.jsp" method="GET">
      <button type="submit"><i class="fas fa-search"></i></button>
    </form>
    <a href="Cuenta.jsp" class="icon-link"><i class="fas fa-user"></i></a>
    <a href="#" class="icon-link"><i class="fas fa-bag-shopping"></i></a>
  </div>
</header>


<section class="search-section">
    <h2>Buscar Producto</h2>
    <form class="buscar-producto-form" action="ProductoController" method="post">
        <input type="text" name="txtValor" placeholder="Ingrese nombre del producto" required />
        <input type="hidden" name="opcion" value="2" />
        <input type="hidden" name="accion" value="consultar" />
        <button type="submit">Buscar</button>
    </form>

    <% if (error != null) { %>
        <div class="error"><%= error %></div>
    <% } %>

    <div class="products-grid">
        <% if (lista != null && !lista.isEmpty()) {
            for (ProductoVO producto : lista) { %>
                <div class="product-card">
                    <h3><%= producto.getNombre() %></h3>
                    <p>Precio: $<%= producto.getPrecio() %></p>
                    <p>Stock: <%= producto.getStock() %></p>
                    <a href="DetalleProducto.jsp?id=<%= producto.getId() %>" class="btn">Ver Detalles</a>
                </div>
        <%  }
        } else if (lista != null) { %>
            <p style="text-align:center; margin-top:30px; font-weight:600; color:#666;">No se encontraron productos.</p>
        <% } %>
    </div>
</section>

<footer>
  <div class="social-media">
    <p>Síguenos</p>
    <a href="https://www.instagram.com/infantex" target="_blank" aria-label="Instagram">
      <i class="fab fa-instagram"></i>
    </a>
  </div>

  <div class="footer-links">
    <a href="#">Contáctenos</a>
    <a href="#">Términos de venta</a>
    <a href="#">Términos de uso</a>
    <a href="#">Términos y condiciones de envíos internacionales</a>
  </div>
</footer>
</body>
</html>