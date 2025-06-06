<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%
Cookie[] cookies = request.getCookies();
String username = null;

if (cookies != null) {
	for (Cookie cookie : cookies) {
		if ("usuario".equals(cookie.getName())) {
	username = java.net.URLDecoder.decode(cookie.getValue(), "UTF-8");
	break;
		}
	}
}

// Verificar si el usuario es administrador
Boolean isAdmin = (Boolean) session.getAttribute("isAdmin");
boolean userIsAdmin = (isAdmin != null && isAdmin);
%>

<c:set var="idioma"
	value="${not empty sessionScope.idioma ? sessionScope.idioma : 'es'}"
	scope="session" />
<fmt:setLocale value="${idioma}" />
<fmt:setBundle basename="resources.messages" />

<!DOCTYPE html>
<html lang="${idioma}">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title><fmt:message key="admin.titulo" /></title>
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700&family=Poppins:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<!-- CSS -->
<link rel="stylesheet" href="css/global.css">
<link rel="stylesheet" href="css/pages/admin-usuarios.css">
<style>
.admin-menu {
	background-color: #f5f5f5;
	border-radius: 8px;
	padding: 20px;
	margin-bottom: 30px;
}

.admin-menu h2 {
	color: #333;
	margin-bottom: 15px;
}

.admin-menu ul {
	list-style: none;
	padding: 0;
}

.admin-menu li {
	margin-bottom: 10px;
}

.admin-menu a {
	display: block;
	padding: 10px 15px;
	background-color: #4a6cf7;
	color: white;
	border-radius: 5px;
	text-decoration: none;
	transition: background-color 0.3s;
}

.admin-menu a:hover {
	background-color: #3a5bd9;
}

.btn-danger {
	background-color: #dc3545;
	color: white;
	border: none;
	padding: 10px 15px;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s;
}

.btn-danger:hover {
	background-color: #c82333;
}
</style>
</head>
<body>
	<header class="header">
		<div class="logo">
			<a href="index.jsp"><img src="img/logo.png" alt="Logo"></a>
		</div>
		<nav class="nav-container">
			<ul class="nav-links">
				<li><a href="informacion.jsp"><fmt:message
							key="menu.informacion" /></a></li>
				<li><a href="Ranking"><fmt:message key="menu.ranking" /></a></li>
				<li><a href="comprarCupon.jsp"><fmt:message
							key="menu.comprarCupon" /></a></li>
				<%
				if (userIsAdmin) {
				%>
				<li><a href="AdminUsuarios">Administrar Usuarios</a></li>
				<%
				}
				%>
			</ul>
		</nav>

		<div class="right-section">
			<div class="idiomas">
				<img src="img/idiomas.png" alt="Idiomas">
				<ul class="idioma-menu">
					<li><a href="CambiarIdioma?idioma=es"><fmt:message
								key="idioma.espanol" /></a></li>
					<li><a href="CambiarIdioma?idioma=en"><fmt:message
								key="idioma.ingles" /></a></li>
					<li><a href="CambiarIdioma?idioma=eu"><fmt:message
								key="idioma.euskera" /></a></li>
				</ul>
			</div>
			<%
			if (username != null) {
			%>
			<a href="PerfilServlet" class="btn">Perfil</a>
			<%
			} else {
			%>
			<a href="login.jsp" class="btn">Iniciar sesión</a>
			<%
			}
			%>
			<%
			if (username != null) {
			%>
			<!-- No se muestra el botón descargar si no hay cookie -->
			<%
			} else {
			%>
			<a href="suscribirse.jsp" class="btn"><fmt:message
					key="menu.suscribirse" /></a>
			<%
			}
			%>
			<%
			if (username != null) {
			%>
			<a href="private/descargarJuego.jsp" class="btn"><fmt:message
					key="menu.descargar" /></a>
			<%
			} else {
			%>
			<!-- No se muestra el botón descargar si no hay cookie -->
			<%
			}
			%>
		</div>
	</header>

	<div class="main-content">
		<h1 class="page-title">Perfil del suscriptor</h1>

		<!-- Mensajes de éxito o error -->
		<c:if test="${not empty sessionScope.mensaje}">
			<div class="alert alert-success">
				${sessionScope.mensaje}
				<c:remove var="mensaje" scope="session" />
			</div>
		</c:if>
		<c:if test="${not empty sessionScope.error}">
			<div class="alert alert-danger">
				${sessionScope.error}
				<c:remove var="error" scope="session" />
			</div>
		</c:if>

		<div class="admin-container">
			<section class="search-section">
				<h2 class="search-title">Nombre usuario: ${username}</h2>
			</section>

			<%
			if (userIsAdmin) {
			%>
			<!-- Menú de Administrador con estilos mejorados -->
			<section class="users-table-section">
				<h2 class="users-table-title">Panel de Administrador</h2>
				<div style="margin-top: 20px; margin-bottom: 30px;">
					<a href="AdminUsuarios" class="btn"
						style="display: block; margin-bottom: 10px; text-align: center;">Gestionar
						Usuarios</a> <a href="finalizar-ranking.jsp" class="btn"
						style="display: block; text-align: center;">Finalizar Ranking
						Actual</a>
				</div>
			</section>
			<%
			}
			%>

			<%-- Continúa con el resto del código existente --%>

			<section class="users-table-section">
				<h2 class="users-table-title">Lista de cupones</h2>
				<div class="table-container">
					<table class="users-table">
						<thead>
							<tr>
								<th>ID CUPON</th>
								<th>TIPO</th>
								<th>FECHA CADUCIDAD</th>
								<th>ESTADO</th>
								<th>BORRAR</th>
							</tr>
						</thead>
						<tbody>
							<c:choose>
								<c:when test="${empty listaCupones}">
									<tr>
										<td colspan="4" class="no-results"><fmt:message
												key="admin.noResultados" /></td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach var="cupon" items="${listaCupones}">
										<tr>
											<td>${cupon.idCupon}</td>
											<td>${cupon.tipo}</td>
											<td><fmt:formatDate value="${cupon.fechaCaducidad}"
													pattern="dd/MM/yyyy" /></td>
											<td><span
												class="status-badge ${cupon.estado == 'disponible' ? 'status-active' : 'status-inactive'}">
													${cupon.estado} </span></td>
											<td>
												<!-- Formulario para borrar el cupón -->
												<form action="BorrarCuponServlet" method="post">
													<input type="hidden" name="idCupon"
														value="${cupon.idCupon}">
													<button type="submit" class="btn btn-danger">Borrar</button>
												</form>
											</td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</tbody>
					</table>
				</div>
			</section>
			<form action="CerrarSesionServlet" method="post">
				<button type="submit" class="btn btn-logout">Cerrar Sesión</button>
			</form>
		</div>
	</div>

	<!-- Footer -->
	<footer class="footer">
		<div class="footer-container">
			<div class="footer-section">
				<div class="footer-logo">
					<img src="img/logo.png" alt="Logo Educación Divertida">
				</div>
				<p class="footer-description">
					<fmt:message key="footer.descripcion" />
				</p>
				<div class="social-links">
					<a href="#"><i class="fab fa-facebook-f"></i></a> <a href="#"><i
						class="fab fa-twitter"></i></a> <a href="#"><i
						class="fab fa-instagram"></i></a> <a href="#"><i
						class="fab fa-youtube"></i></a>
				</div>
			</div>

			<div class="footer-section">
				<h3 class="footer-title">
					<fmt:message key="footer.enlacesRapidos" />
				</h3>
				<ul class="footer-links">
					<li><a href="#"><fmt:message key="footer.sobreNosotros" /></a></li>
					<li><a href="#"><fmt:message key="footer.nuestrosCursos" /></a></li>
					<li><a href="#"><fmt:message key="footer.testimonios" /></a></li>
					<li><a href="#"><fmt:message key="footer.blogEducativo" /></a></li>
					<li><a href="#"><fmt:message
								key="footer.preguntasFrecuentes" /></a></li>
				</ul>
			</div>

			<div class="footer-section">
				<h3 class="footer-title">
					<fmt:message key="footer.contacto" />
				</h3>
				<div class="footer-contact">
					<p>
						<i class="fas fa-map-marker-alt"></i>
						<fmt:message key="footer.direccion" />
					</p>
					<p>
						<i class="fas fa-phone"></i>
						<fmt:message key="footer.telefono" />
					</p>
					<p>
						<i class="fas fa-envelope"></i>
						<fmt:message key="footer.email" />
					</p>
					<p>
						<i class="fas fa-clock"></i>
						<fmt:message key="footer.horario" />
					</p>
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