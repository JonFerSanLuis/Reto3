<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="idioma" value="${not empty sessionScope.idioma ? sessionScope.idioma : 'es'}" scope="session" />
<fmt:setLocale value="${idioma}" />
<fmt:setBundle basename="resources.messages" />

<!DOCTYPE html>
<html lang="${idioma}">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><fmt:message key="info.titulo" /></title>
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
                <li><a href="informacion.jsp"><fmt:message key="menu.informacion" /></a></li>
                <li><a href="Ranking"><fmt:message key="menu.ranking" /></a></li>
                <li><a href="comprarCupon.jsp"><fmt:message key="menu.comprarCupon" /></a></li>
            </ul>
        </nav>

        <div class="right-section">
            <div class="idiomas">
                <img src="img/idiomas.png" alt="Idiomas">
                <ul class="idioma-menu">
                    <li><a href="CambiarIdioma?idioma=es"><fmt:message key="idioma.espanol" /></a></li>
                    <li><a href="CambiarIdioma?idioma=en"><fmt:message key="idioma.ingles" /></a></li>
                    <li><a href="CambiarIdioma?idioma=eu"><fmt:message key="idioma.euskera" /></a></li>
                </ul>
            </div>
            <a href="login.jsp" class="btn">Iniciar sesion</a>
            <a href="suscribirse.jsp" class="btn"><fmt:message key="menu.suscribirse" /></a>
            <a href="descargarJuego.jsp" class="btn"><fmt:message key="menu.descargar" /></a>
        </div>
    </header>

    <div class="main-content">
        <h1 class="page-title"><fmt:message key="info.titulo" /></h1>

        <div class="info-container">
            <section class="about-section">
                <div class="about-image">
                    <img src="/placeholder.svg?height=400&width=600" alt="Sobre nosotros">
                </div>
                <div class="about-content">
                    <h2 class="section-title"><fmt:message key="info.sobreNosotros" /></h2>
                    <p><fmt:message key="info.sobreNosotrosTexto1" /></p>
                    <p><fmt:message key="info.sobreNosotrosTexto2" /></p>
                    <p><fmt:message key="info.sobreNosotrosTexto3" /></p>
                </div>
            </section>

            <section class="features-section">
                <h2 class="section-title"><fmt:message key="info.caracteristicas" /></h2>
                <div class="features-grid">
                    <div class="feature-card">
                        <h3 class="feature-title"><fmt:message key="info.mapaInteractivo" /></h3>
                        <p class="feature-description"><fmt:message key="info.mapaInteractivoDesc" /></p>
                    </div>
                    <div class="feature-card">
                        <h3 class="feature-title"><fmt:message key="info.sistemaRanking" /></h3>
                        <p class="feature-description"><fmt:message key="info.sistemaRankingDesc" /></p>
                    </div>
                    <div class="feature-card">
                        <h3 class="feature-title"><fmt:message key="info.cupones" /></h3>
                        <p class="feature-description"><fmt:message key="info.cuponesDesc" /></p>
                    </div>
                    <div class="feature-card">
                        <h3 class="feature-title"><fmt:message key="info.multijugador" /></h3>
                        <p class="feature-description"><fmt:message key="info.multijugadorDesc" /></p>
                    </div>
                    <div class="feature-card">
                        <h3 class="feature-title"><fmt:message key="info.contenidoEducativo" /></h3>
                        <p class="feature-description"><fmt:message key="info.contenidoEducativoDesc" /></p>
                    </div>
                    <div class="feature-card">
                        <h3 class="feature-title"><fmt:message key="info.actualizaciones" /></h3>
                        <p class="feature-description"><fmt:message key="info.actualizacionesDesc" /></p>
                    </div>
                </div>
            </section>

            <section class="team-section">
                <h2 class="section-title"><fmt:message key="info.equipo" /></h2>
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
                <h2 class="section-title"><fmt:message key="info.contacto" /></h2>
                <form class="contact-form" method="post" action="enviarEmail">
                    <div class="form-group">
                        <label for="nombre"><fmt:message key="info.nombre" /></label>
                        <input type="text" id="nombre" name="nombre" placeholder="Tu nombre" required>
                    </div>
                    <div class="form-group">
                        <label for="email"><fmt:message key="info.email" /></label>
                        <input type="email" id="email" name="email" placeholder="ejemplo@correo.com" required>
                    </div>
                    <div class="form-group">
                        <label for="asunto"><fmt:message key="info.asunto" /></label>
                        <input type="text" id="asunto" name="asunto" placeholder="Asunto del mensaje" required>
                    </div>
                    <div class="form-group">
                        <label for="mensaje"><fmt:message key="info.mensaje" /></label>
                        <textarea id="mensaje" name="mensaje" placeholder="Escribe tu mensaje aquí..." required></textarea>
                    </div>
                    <div class="form-submit">
                        <button type="submit"><fmt:message key="info.enviar" /></button>
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
                <p class="footer-description"><fmt:message key="footer.descripcion" /></p>
                <div class="social-links">
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-youtube"></i></a>
                </div>
            </div>

            <div class="footer-section">
                <h3 class="footer-title"><fmt:message key="footer.enlacesRapidos" /></h3>
                <ul class="footer-links">
                    <li><a href="#"><fmt:message key="footer.sobreNosotros" /></a></li>
                    <li><a href="#"><fmt:message key="footer.nuestrosCursos" /></a></li>
                    <li><a href="#"><fmt:message key="footer.testimonios" /></a></li>
                    <li><a href="#"><fmt:message key="footer.blogEducativo" /></a></li>
                    <li><a href="#"><fmt:message key="footer.preguntasFrecuentes" /></a></li>
                </ul>
            </div>

            <div class="footer-section">
                <h3 class="footer-title"><fmt:message key="footer.contacto" /></h3>
                <div class="footer-contact">
                    <p><i class="fas fa-map-marker-alt"></i> <fmt:message key="footer.direccion" /></p>
                    <p><i class="fas fa-phone"></i> <fmt:message key="footer.telefono" /></p>
                    <p><i class="fas fa-envelope"></i> <fmt:message key="footer.email" /></p>
                    <p><i class="fas fa-clock"></i> <fmt:message key="footer.horario" /></p>
                </div>
            </div>
        </div>

        <div class="footer-container">
            <div class="copyright">
                <fmt:message key="footer.copyright" />
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