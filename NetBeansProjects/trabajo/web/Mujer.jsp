<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Mujer - INFANTEX</title>
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

<section class="banner" style="background: url('imagenes/bannerM.webp') no-repeat center center/cover; height: 400px;"></section>

<section class="highlight-section">
  <h2>ROPA DE MUJER </h2>
  <div class="products">
    <div class="product">
      <img src="imagenes/mujer1.jpg" alt="Camisa1" />
      <h3>Camisa Negra</h3>
      <p>$170.000</p>
    </div>
    <div class="product">
      <img src="imagenes/mujer2.jpg" alt="Camisa2" />
      <h3>Blooming Jelly Blusas casuales de manga corta</h3>
      <p>$150.000</p>
    </div>
    <div class="product">
      <img src="imagenes/mujer3.jpg" alt="Camisa3" />
      <h3>Blooming Jelly Blusa de seda para mujer</h3>
      <p>$160.000</p>
    </div>
    <div class="product">
      <img src="imagenes/mujer4.jpg" alt="Camisa4" />
      <h3>Blusas de gasa para mujer</h3>
      <p>$140.000</p>
    </div>
    <div class="product">
      <img src="imagenes/mujer5.jpg" alt="camisa5 " />
      <h3>Blooming Jelly Blusa casual </h3>
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