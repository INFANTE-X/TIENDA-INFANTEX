<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>INFANTEX - Registro</title>

  <!-- Rutas absolutas -->
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet" />
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="<%= request.getContextPath() %>/estilos/index.css" />
</head>
<body>
<style>
* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

body {
  font-family: 'Roboto', sans-serif;
  background-color: #000;
  color: white;
}

header {
  background-color: #000;
  padding: 10px 40px;
  display: flex;
  align-items: center;
  justify-content: space-between;
  height: 80px;
}

.logo img {
  height: 60px;
  width: auto;
  object-fit: contain;
  transition: transform 0.3s ease;
}

.logo img:hover {
  transform: scale(1.3);
  cursor: pointer;
}

.menu-container {
  flex: 1;
  display: flex;
  justify-content: center;
}

nav ul.nav {
  list-style: none;
  display: flex;
  gap: 40px;
}

nav ul.nav > li {
  position: relative;
}

nav ul.nav > li > a {
  color: white;
  text-decoration: none;
  font-weight: bold;
  font-size: 14px;
  padding: 8px 12px;
  display: block;
}

nav ul.nav li ul {
  display: none;
  position: absolute;
  top: 40px;
  left: 0;
  background-color: #222;
  border-radius: 5px;
  min-width: 160px;
  z-index: 1000;
  list-style: none;
  padding: 10px 0;
}

nav ul.nav li:hover > ul {
  display: block;
}

nav ul.nav li ul li a {
  display: block;
  padding: 10px 15px;
  color: white;
  text-decoration: none;
  font-size: 14px;
}

nav ul.nav li ul li a:hover {
  background-color: #333;
}

.right-section {
  display: flex;
  align-items: center;
  gap: 20px;
}

.search-form button {
  background: none;
  border: none;
  cursor: pointer;
  font-size: 16px;
  color: white;
}

.icon-link {
  color: white;
  font-size: 16px;
  text-decoration: none;
}

.container {
  max-width: 600px;
  margin: 100px auto 60px auto;
  padding: 20px;
  background-color: #000000;
  border-radius: 10px;
  box-shadow: none;
  color: white;
}

.register-box h2 {
  text-align: center;
  font-size: 28px;
  margin-bottom: 30px;
  margin-top: 20px;
  font-weight: 700;
  letter-spacing: 1px;
}

.register-box label {
  display: block;
  margin-bottom: 5px;
  font-weight: 600;
  font-size: 14px;
}

.register-box input[type="text"],
.register-box input[type="date"],
.register-box input[type="email"],
.register-box input[type="password"] {
  width: 100%;
  padding: 12px 15px;
  margin-bottom: 20px;
  border: none;
  border-radius: 5px;
  background-color: #222;
  color: white;
  font-size: 16px;
  outline: none;
  box-shadow: none;
  transition: background-color 0.3s ease;
}

.register-box input[type="text"]:focus,
.register-box input[type="date"]:focus,
.register-box input[type="email"]:focus,
.register-box input[type="password"]:focus {
  background-color: #333;
  outline: 2px solid #ff6f61;
  box-shadow: none;
}

.register-box button {
  width: 100%;
  padding: 14px;
  background-color: #ff6f61;
  color: white;
  border: none;
  border-radius: 5px;
  font-size: 18px;
  font-weight: bold;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

.register-box button:hover {
  background-color: #e35b4f;
}

#mensaje {
  margin-top: 15px;
  text-align: center;
  font-weight: 700;
  color: #0f0;
}

footer {
  background-color: #111;
  padding: 20px;
  text-align: center;
  color: #fff;
}

.footer-links a {
  margin: 0 10px;
  color: #ccc;
  text-decoration: none;
  transition: color 0.3s;
}

.footer-links a:hover {
  color: #fff;
}

.social-media {
  margin-bottom: 30px;
}

.social-media p {
  margin-bottom: 10px;
  font-weight: bold;
  color: #fff;
}

.social-media a {
  margin: 0 10px;
  font-size: 20px;
  color: #ccc;
  transition: color 0.3s;
}

.social-media a:hover {
  color: #fff;
}
.container {
  max-width: 600px;
  margin: 80px auto 80px auto; /* Aumenté el margen inferior para que no quede tan pegado al footer */
  padding: 20px;
  background-color: #000000;
  border-radius: 10px;
  box-shadow: none;
  color: white;
}

.register-box h2 {
  text-align: center;
  font-size: 28px;
  margin-bottom: 30px;
  margin-top: 0;
  font-weight: 700;
  letter-spacing: 1px;
}
  </style>
<header>
  <div class="logo">
    <a href="<%= request.getContextPath() %>/index.jsp">
      <img src="<%= request.getContextPath() %>/imagenes/logo2.jpeg" alt="INFANTEX" />
    </a>
  </div>

  <div class="menu-container">
    <nav>
      <ul class="nav">
        <li><a href="<%= request.getContextPath() %>/Hombre.jsp">Hombre</a>
          <ul>
            <li><a href="#">Camisas</a></li>
            <li><a href="#">Sudaderas</a></li>
            <li><a href="#">Sin mangas</a></li>
          </ul>
        </li>
        <li><a href="<%= request.getContextPath() %>/Mujer.jsp">Mujer</a>
          <ul>
            <li><a href="#">Camisas</a></li>
            <li><a href="#">Sudaderas</a></li>
            <li><a href="#">Sin mangas</a></li>
          </ul>
        </li>
        <li><a href="<%= request.getContextPath() %>/Accesorios.jsp">Accesorios</a></li>
      </ul>
    </nav>
  </div>

  <div class="right-section">
    <form class="search-form" action="<%= request.getContextPath() %>/BuscarProducto.jsp" method="GET">
      <button type="submit"><i class="fas fa-search"></i></button>
    </form>
    <a href="<%= request.getContextPath() %>/Cuenta.jsp" class="icon-link"><i class="fas fa-user"></i></a>
    <a href="#" class="icon-link"><i class="fas fa-bag-shopping"></i></a>
  </div>
</header>

<section class="container">
  <div class="register-box">
    <h2>Registrar Nuevo Usuario</h2>
    <form action="<%= request.getContextPath() %>/RegistroController?accion=registrar" method="post" id="formNuevoPac">
      <label for="txtIde">id_registro:</label>
      <input type="text" id="txtIde" name="txtIde" required autocomplete="off" />

      <label for="txtNom">Nombres:</label>
      <input type="text" id="txtNom" name="txtNom" required />

      <label for="txtApe">Apellidos:</label>
      <input type="text" id="txtApe" name="txtApe" required />

      <label for="txtFecha">Fecha de Nacimiento:</label>
      <input type="date" id="txtFecha" name="txtFecha" required />

      <label for="txtCorreo">Correo Electrónico:</label>
      <input type="email" id="txtCorreo" name="txtCorreo" required />

      <label for="txtContrasena">Contraseña:</label>
      <input type="password" id="txtContrasena" name="txtContrasena" required />

      <button type="submit">Registrar</button>
    </form>

    <div id="mensaje">
      <%
        if(request.getAttribute("mensaje") != null) {
          out.print(request.getAttribute("mensaje"));
        }
      %>
    </div>
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