<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>INFANTEX - Inicio</title>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet" />
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="estilos/index.css" />
   <link rel="stylesheet" href="estilos/ESTILO4.css" />

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

  <div class="container">
    <div class="login-box">
      <h2>Inicia Sesión</h2>
      <form action="ValidarAcceso" method="post">
        <input type="text" name="txtUsu" placeholder="Correo o nombre de usuario" required autocomplete="off" />
        <input type="password" name="txtPas" placeholder="Contraseña" required />
        <button type="submit">Entrar</button>
        <%
          if (request.getAttribute("mensaje") != null) {
            out.print("<div style='color: red; margin-top: 10px;'>" + request.getAttribute("mensaje") + "</div>");
          }
        %>
      </form>
      <div class="login-links">
        <a href="#">¿Olvidaste tu contraseña?</a> |
        <a href="/trabajo/Registro/nuevoRegistro.jsp">Registrarse</a>
      </div>
    </div>
  </div>

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