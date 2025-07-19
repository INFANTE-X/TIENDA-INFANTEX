<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Hombre - INFANTEX</title>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet" />
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet" />
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

<section class="banner" style="background: url('imagenes/bhombre.jpg') no-repeat center center/cover; height: 400px;">
  <div class="banner-text">
  </div>
</section>

<section class="highlight-section">
  <h2>PRODUCTOS DESTACADOS</h2>
  <div class="products">
    <div class="product">
      <img src="imagenes/CAMISA1.jpg" alt="CamisaNegra" />
      <h3>Camisa Negra</h3>
      <p>$170.000</p>
    </div>
    <div class="product">
      <img src="imagenes/CAMISAYA.jpg" alt="CamisaAmarilla" />
      <h3>Camisa Amarilla</h3>
      <p>$150.000</p>
    </div>
    <div class="product">
      <img src="imagenes/CAMISA4.jpg" alt="CamisaCorta" />
      <h3>Camisa Manga Corta</h3>
      <p>$160.000</p>
    </div>
    <div class="product">
      <img src="imagenes/CAMISA5.jpg" alt="CamisaNegra2" />
      <h3>Camisa Negra</h3>
      <p>$140.000</p>
    </div>
    <div class="product">
      <img src="imagenes/CAMISA6.jpg" alt="CamisaVerde" />
      <h3>Camisa Verde</h3>
      <p>$180.000</p>
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