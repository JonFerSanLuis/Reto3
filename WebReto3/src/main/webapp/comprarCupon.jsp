<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Comprar Cupón</title>
    <!-- Google Fonts -->
    <link
        href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700&family=Poppins:wght@300;400;500;600;700&display=swap"
        rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <!-- CSS -->
    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="css/pages/comprar-cupon.css">
</head>
<body>
    <header class="header">
        <div class="logo">
            <a href="paginaPrincipal.html"><img src="img/logo.png" alt="Logo"></a>
        </div>

        <nav class="nav-container">
            <ul class="nav-links">
                <li><a href="informacion.jsp">Información</a></li>
                <li><a href="ranking.jsp">Ranking</a></li>
                <li><a href="comprarCupon.jsp">Comprar Cupones</a></li>
            </ul>
        </nav>

        <div class="right-section">
            <div class="idiomas">
                <img src="img/idiomas.png" alt="Idiomas">
                <ul class="idioma-menu">
                    <li>Español</li>
                    <li>English</li>
                    <li>Euskera</li>
                </ul>
            </div>
            <a href="suscribirse.jsp" class="btn">Suscribirse</a>
            <a href="descargarJuego.jsp" class="btn">Descargar</a>
        </div>
    </header>

    <div class="main-content">
        <h1 class="page-title">Comprar Cupón</h1>

        <div class="cupon-container">
            <div class="cupon-options">
                <div class="cupon-card">
                    <div class="cupon-header">
                        <h3 class="cupon-title">Cupón Básico</h3>
                        <div class="cupon-price">5€ <span>/unidad</span></div>
                    </div>
                    <div class="cupon-body">
                        <ul class="cupon-features">
                            <li>1 intento en el juego</li>
                            <li>Participación en el ranking</li>
                            <li>Acceso a contenido básico</li>
                        </ul>
                        <a href="#payment-form" class="cupon-button">Seleccionar</a>
                    </div>
                </div>

                <div class="cupon-card">
                    <div class="cupon-header">
                        <h3 class="cupon-title">Cupón Estándar</h3>
                        <div class="cupon-price">12€ <span>/unidad</span></div>
                    </div>
                    <div class="cupon-body">
                        <ul class="cupon-features">
                            <li>3 intentos en el juego</li>
                            <li>Participación en el ranking</li>
                            <li>Acceso a contenido premium</li>
                            <li>Soporte prioritario</li>
                        </ul>
                        <a href="#payment-form" class="cupon-button">Seleccionar</a>
                    </div>
                </div>

                <div class="cupon-card">
                    <div class="cupon-header">
                        <h3 class="cupon-title">Cupón Premium</h3>
                        <div class="cupon-price">20€ <span>/unidad</span></div>
                    </div>
                    <div class="cupon-body">
                        <ul class="cupon-features">
                            <li>5 intentos en el juego</li>
                            <li>Participación en el ranking</li>
                            <li>Acceso a todo el contenido</li>
                            <li>Soporte prioritario 24/7</li>
                            <li>Recompensas exclusivas</li>
                        </ul>
                        <a href="#payment-form" class="cupon-button">Seleccionar</a>
                    </div>
                </div>
            </div>

            <div id="payment-form" class="payment-form">
                <h2 class="form-title">Información de Pago</h2>
                <form>
                    <div class="form-group">
                        <label for="nombre">Nombre completo</label>
                        <input type="text" id="nombre" name="nombre" placeholder="Nombre y apellidos" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Correo electrónico</label>
                        <input type="email" id="email" name="email" placeholder="ejemplo@correo.com" required>
                    </div>
                    <div class="form-group">
                        <label for="cupon">Tipo de cupón</label>
                        <select id="cupon" name="cupon" required>
                            <option value="">Selecciona un cupón</option>
                            <option value="basico">Cupón Básico - 5€</option>
                            <option value="estandar">Cupón Estándar - 12€</option>
                            <option value="premium">Cupón Premium - 20€</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="cantidad">Cantidad</label>
                        <input type="number" id="cantidad" name="cantidad" min="1" value="1" required>
                    </div>
                    <div class="form-group">
                        <label for="tarjeta">Número de tarjeta</label>
                        <input type="text" id="tarjeta" name="tarjeta" placeholder="1234 5678 9012 3456" required>
                    </div>
                    <div class="form-row">
                        <div class="form-group">
                            <label for="caducidad">Fecha de caducidad</label>
                            <input type="text" id="caducidad" name="caducidad" placeholder="MM/AA" required>
                        </div>
                        <div class="form-group">
                            <label for="cvv">CVV</label>
                            <input type="text" id="cvv" name="cvv" placeholder="123" required>
                        </div>
                    </div>
                    <div class="form-submit">
                        <button type="submit">Completar Compra</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Reemplazar el footer actual por el nuevo diseño -->
    <footer class="footer">
    <div class="footer-container">
        <div class="footer-section">
            <div class="footer-logo">
                <img src="img/logo.png" alt="Logo Educación Divertida">
            </div>
            <p class="footer-description">Transformamos la educación en una experiencia divertida y memorable. Nuestro método innovador garantiza el aprendizaje efectivo.</p>
            <div class="social-links">
                <a href="#"><i class="fab fa-facebook-f"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
                <a href="#"><i class="fab fa-youtube"></i></a>
            </div>
        </div>

        <div class="footer-section">
            <h3 class="footer-title">Enlaces rápidos</h3>
            <ul class="footer-links">
                <li><a href="#">Sobre nosotros</a></li>
                <li><a href="#">Nuestros cursos</a></li>
                <li><a href="#">Testimonios</a></li>
                <li><a href="#">Blog educativo</a></li>
                <li><a href="#">Preguntas frecuentes</a></li>
            </ul>
        </div>

        <div class="footer-section">
            <h3 class="footer-title">Contacto</h3>
            <div class="footer-contact">
                <p><i class="fas fa-map-marker-alt"></i> Calle Educación 123, Madrid, España</p>
                <p><i class="fas fa-phone"></i> +34 912 345 678</p>
                <p><i class="fas fa-envelope"></i> info@educaciondivertida.com</p>
                <p><i class="fas fa-clock"></i> Lunes-Viernes: 9:00 - 18:00</p>
            </div>
        </div>
    </div>

    <div class="footer-container">
        <div class="copyright">
            © 2025 Educación Divertida. Todos los derechos reservados.
        </div>
    </div>
</footer>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const idiomas = document.querySelector('.idiomas');
            document.addEventListener('click', function(e) {
                if (idiomas.contains(e.target)) {
                    idiomas.classList.toggle('activo');
                } else {
                    idiomas.classList.remove('activo');
                }
            });
        });
    </script>
</body>
</html>
