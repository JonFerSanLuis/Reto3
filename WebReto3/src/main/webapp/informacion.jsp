<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Información</title>
    <!-- Google Fonts -->
    <link
        href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700&family=Poppins:wght@300;400;500;600;700&display=swap"
        rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <!-- CSS -->
    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="css/pages/informacion.css">
    <!-- Asegurarse de que se incluya Font Awesome para los iconos -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <header class="header">
        <div class="logo">
            <a href="index.jsp"><img src="img/logo.png" alt="Logo"></a>
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
        <h1 class="page-title">Información</h1>

        <div class="info-container">
            <section class="about-section">
                <div class="about-image">
                    <img src="/placeholder.svg?height=400&width=600" alt="Sobre nosotros">
                </div>
                <div class="about-content">
                    <h2 class="section-title">Sobre Nosotros</h2>
                    <p>Somos un equipo apasionado por los juegos y la tecnología, dedicados a crear experiencias interactivas que combinan diversión y aprendizaje. Nuestro proyecto nació de la colaboración entre el Centro San Luis y Bilbao SKP, con el objetivo de desarrollar juegos educativos que fomenten el conocimiento y la competencia sana.</p>
                    <p>Desde nuestros inicios en 2023, hemos trabajado para crear una plataforma que permita a los usuarios explorar, aprender y competir en un entorno virtual seguro y divertido. Nuestro equipo está formado por desarrolladores, diseñadores y educadores comprometidos con la calidad y la innovación.</p>
                    <p>Creemos en el poder de los juegos como herramienta educativa y de desarrollo personal. Por eso, nuestro objetivo es seguir creciendo y mejorando para ofrecer la mejor experiencia posible a nuestros usuarios.</p>
                </div>
            </section>

            <section class="features-section">
                <h2 class="section-title">Características del Juego</h2>
                <div class="features-grid">
                    <div class="feature-card">
                        <h3 class="feature-title">Mapa Interactivo</h3>
                        <p class="feature-description">Explora diferentes ubicaciones en un mapa interactivo basado en lugares reales. Descubre puntos de interés y completa misiones en cada ubicación.</p>
                    </div>
                    <div class="feature-card">
                        <h3 class="feature-title">Sistema de Ranking</h3>
                        <p class="feature-description">Compite con otros jugadores y sube en el ranking. Gana puntos por completar misiones y desafíos diarios.</p>
                    </div>
                    <div class="feature-card">
                        <h3 class="feature-title">Cupones y Recompensas</h3>
                        <p class="feature-description">Adquiere cupones para obtener intentos adicionales y desbloquear contenido exclusivo. Gana recompensas por tus logros en el juego.</p>
                    </div>
                    <div class="feature-card">
                        <h3 class="feature-title">Multijugador</h3>
                        <p class="feature-description">Juega con amigos y compite en tiempo real. Forma equipos y participa en eventos especiales con otros jugadores.</p>
                    </div>
                    <div class="feature-card">
                        <h3 class="feature-title">Contenido Educativo</h3>
                        <p class="feature-description">Aprende mientras juegas con contenido educativo integrado en las misiones y desafíos. Desarrolla habilidades y conocimientos de forma divertida.</p>
                    </div>
                    <div class="feature-card">
                        <h3 class="feature-title">Actualizaciones Regulares</h3>
                        <p class="feature-description">Disfruta de nuevas misiones, ubicaciones y características con nuestras actualizaciones regulares. Mantente al día con las novedades del juego.</p>
                    </div>
                </div>
            </section>

            <section class="team-section">
                <h2 class="section-title">Nuestro Equipo</h2>
                <div class="team-grid">
                    <div class="team-card">
                        <div class="team-image">
                            <img src="/placeholder.svg?height=150&width=150" alt="Miembro del equipo">
                        </div>
                        <h3 class="team-name">Ana García</h3>
                        <p class="team-role">Directora de Proyecto</p>
                        <p class="team-bio">Con más de 10 años de experiencia en desarrollo de juegos, Ana lidera nuestro equipo con pasión y visión innovadora.</p>
                    </div>
                    <div class="team-card">
                        <div class="team-image">
                            <img src="/placeholder.svg?height=150&width=150" alt="Miembro del equipo">
                        </div>
                        <h3 class="team-name">Carlos Rodríguez</h3>
                        <p class="team-role">Desarrollador Principal</p>
                        <p class="team-bio">Especialista en desarrollo de aplicaciones interactivas, Carlos es responsable de la arquitectura técnica del juego.</p>
                    </div>
                    <div class="team-card">
                        <div class="team-image">
                            <img src="/placeholder.svg?height=150&width=150" alt="Miembro del equipo">
                        </div>
                        <h3 class="team-name">María López</h3>
                        <p class="team-role">Diseñadora UX/UI</p>
                        <p class="team-bio">María combina creatividad y funcionalidad para crear interfaces intuitivas y atractivas para nuestros usuarios.</p>
                    </div>
                    <div class="team-card">
                        <div class="team-image">
                            <img src="/placeholder.svg?height=150&width=150" alt="Miembro del equipo">
                        </div>
                        <h3 class="team-name">Juan Martínez</h3>
                        <p class="team-role">Especialista en Contenido</p>
                        <p class="team-bio">Juan se encarga de crear contenido educativo y misiones que hacen del juego una experiencia enriquecedora.</p>
                    </div>
                </div>
            </section>

            <section class="contact-section">
                <h2 class="section-title">Contacto</h2>
                <form class="contact-form">
                    <div class="form-group">
                        <label for="nombre">Nombre</label>
                        <input type="text" id="nombre" name="nombre" placeholder="Tu nombre" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Correo electrónico</label>
                        <input type="email" id="email" name="email" placeholder="ejemplo@correo.com" required>
                    </div>
                    <div class="form-group">
                        <label for="asunto">Asunto</label>
                        <input type="text" id="asunto" name="asunto" placeholder="Asunto del mensaje" required>
                    </div>
                    <div class="form-group">
                        <label for="mensaje">Mensaje</label>
                        <textarea id="mensaje" name="mensaje" placeholder="Escribe tu mensaje aquí..." required></textarea>
                    </div>
                    <div class="form-submit">
                        <button type="submit">Enviar Mensaje</button>
                    </div>
                </form>
            </section>
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
