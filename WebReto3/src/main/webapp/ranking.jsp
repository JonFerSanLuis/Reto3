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
    <title><fmt:message key="ranking.titulo" /></title>
    <!-- Google Fonts -->
    <link
        href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700&family=Poppins:wght@300;400;500;600;700&display=swap"
        rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <!-- CSS -->
    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="css/pages/ranking.css">
</head>
<body>
    <header class="header">
        <div class="logo">
            <a href="index.jsp"><img src="img/logo.png" alt="Logo"></a>
        </div>
        <nav class="nav-container">
            <ul class="nav-links">
                <li><a href="informacion.jsp"><fmt:message key="menu.informacion" /></a></li>
                <li><a href="ranking.jsp"><fmt:message key="menu.ranking" /></a></li>
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
            <a href="suscribirse.jsp" class="btn"><fmt:message key="menu.suscribirse" /></a>
            <a href="descargarJuego.jsp" class="btn"><fmt:message key="menu.descargar" /></a>
        </div>
    </header>

    <div class="main-content">
        <h1 class="page-title"><fmt:message key="ranking.titulo" /></h1>

        <div class="ranking-container">
            <section class="search-section">
                <h2 class="search-title"><fmt:message key="ranking.buscarJugador" /></h2>
                <form class="search-form">
                    <input type="text" class="search-input" placeholder="Nombre de usuario o ID">
                    <button type="submit" class="search-button"><fmt:message key="ranking.buscar" /></button>
                </form>
            </section>

            <section class="ranking-table-section">
                <h2 class="ranking-table-title"><fmt:message key="ranking.topJugadores" /></h2>
                <table class="ranking-table">
                    <thead>
                        <tr>
                            <th><fmt:message key="ranking.posicion" /></th>
                            <th><fmt:message key="ranking.jugador" /></th>
                            <th><fmt:message key="ranking.puntuacion" /></th>
                            <th><fmt:message key="ranking.nivel" /></th>
                            <th><fmt:message key="ranking.partidas" /></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="position top-position">1</td>
                            <td class="player">
                                <div class="player-avatar">
                                    <img src="/placeholder.svg?height=40&width=40" alt="Avatar">
                                </div>
                                <span class="player-name">GamerPro123</span>
                            </td>
                            <td class="score">9,845</td>
                            <td>42</td>
                            <td>156</td>
                        </tr>
                        <tr>
                            <td class="position top-position">2</td>
                            <td class="player">
                                <div class="player-avatar">
                                    <img src="/placeholder.svg?height=40&width=40" alt="Avatar">
                                </div>
                                <span class="player-name">MasterGamer</span>
                            </td>
                            <td class="score">9,621</td>
                            <td>39</td>
                            <td>142</td>
                        </tr>
                        <tr>
                            <td class="position top-position">3</td>
                            <td class="player">
                                <div class="player-avatar">
                                    <img src="/placeholder.svg?height=40&width=40" alt="Avatar">
                                </div>
                                <span class="player-name">GameWizard</span>
                            </td>
                            <td class="score">9,412</td>
                            <td>38</td>
                            <td>135</td>
                        </tr>
                        <tr>
                            <td class="position">4</td>
                            <td class="player">
                                <div class="player-avatar">
                                    <img src="/placeholder.svg?height=40&width=40" alt="Avatar">
                                </div>
                                <span class="player-name">PlayerOne</span>
                            </td>
                            <td class="score">8,975</td>
                            <td>36</td>
                            <td>128</td>
                        </tr>
                        <tr>
                            <td class="position">5</td>
                            <td class="player">
                                <div class="player-avatar">
                                    <img src="/placeholder.svg?height=40&width=40" alt="Avatar">
                                </div>
                                <span class="player-name">GameChampion</span>
                            </td>
                            <td class="score">8,743</td>
                            <td>35</td>
                            <td>122</td>
                        </tr>
                        <tr>
                            <td class="position">6</td>
                            <td class="player">
                                <div class="player-avatar">
                                    <img src="/placeholder.svg?height=40&width=40" alt="Avatar">
                                </div>
                                <span class="player-name">ProGamer</span>
                            </td>
                            <td class="score">8,521</td>
                            <td>33</td>
                            <td>118</td>
                        </tr>
                        <tr>
                            <td class="position">7</td>
                            <td class="player">
                                <div class="player-avatar">
                                    <img src="/placeholder.svg?height=40&width=40" alt="Avatar">
                                </div>
                                <span class="player-name">GameMaster</span>
                            </td>
                            <td class="score">8,312</td>
                            <td>32</td>
                            <td>115</td>
                        </tr>
                        <tr>
                            <td class="position">8</td>
                            <td class="player">
                                <div class="player-avatar">
                                    <img src="/placeholder.svg?height=40&width=40" alt="Avatar">
                                </div>
                                <span class="player-name">LevelUp</span>
                            </td>
                            <td class="score">8,105</td>
                            <td>31</td>
                            <td>110</td>
                        </tr>
                        <tr>
                            <td class="position">9</td>
                            <td class="player">
                                <div class="player-avatar">
                                    <img src="/placeholder.svg?height=40&width=40" alt="Avatar">
                                </div>
                                <span class="player-name">GameHero</span>
                            </td>
                            <td class="score">7,932</td>
                            <td>30</td>
                            <td>105</td>
                        </tr>
                        <tr>
                            <td class="position">10</td>
                            <td class="player">
                                <div class="player-avatar">
                                    <img src="/placeholder.svg?height=40&width=40" alt="Avatar">
                                </div>
                                <span class="player-name">PlayerX</span>
                            </td>
                            <td class="score">7,845</td>
                            <td>29</td>
                            <td>102</td>
                        </tr>
                    </tbody>
                </table>

                <div class="pagination">
                    <button class="pagination-button"><fmt:message key="ranking.anterior" /></button>
                    <button class="pagination-button active">1</button>
                    <button class="pagination-button">2</button>
                    <button class="pagination-button">3</button>
                    <button class="pagination-button">4</button>
                    <button class="pagination-button">5</button>
                    <button class="pagination-button"><fmt:message key="ranking.siguiente" /></button>
                </div>
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