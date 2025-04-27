package controller;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.CentroService;
import service.SuscriptorService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	SuscriptorService suscriptorService;
	CentroService centroService;
	
	public void init(ServletConfig config) throws ServletException {
    	super.init(config);
    	suscriptorService = new SuscriptorService();
    	centroService = new CentroService();
    }
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("usuario");
		String password = request.getParameter("password");
		
		if (suscriptorService.login(username, password)) {
			response.sendRedirect("perfil.jsp");
		} else {
			request.setAttribute("errorMensaje", "Error al iniciar sesion. Intentalo de nuevo.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

}
