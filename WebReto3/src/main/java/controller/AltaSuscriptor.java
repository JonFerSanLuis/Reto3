package controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bilbaoskp.model.Centro;
import com.bilbaoskp.model.Suscriptor;

import service.CentroService;
import service.SuscriptorService;


@WebServlet("/AltaSuscriptor")
public class AltaSuscriptor extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	SuscriptorService suscriptorService;
	CentroService centroService;
	
	public void init(ServletConfig config) throws ServletException {
    	super.init(config);
    	suscriptorService = new SuscriptorService();
    	centroService = new CentroService();
    }
       
    
    public AltaSuscriptor() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tipoRegistro = request.getParameter("tipoRegistro");
	
	if ("sucriptor".equals(tipoRegistro)) {
		String username = request.getParameter("username");
		String estado = "estado";
		Date fecha_alta = new Date(System.currentTimeMillis()); // No existe este campo en el formulario, con este codigo se insertará en el objeto la fecha actual al darle al boton de registrar
		String tipo = request.getParameter("tipo");
		String password = request.getParameter("password");
		String correo = request.getParameter("correo");
		int edad = Integer.valueOf(request.getParameter("edad"));
		
		Suscriptor suscriptor = new Suscriptor(username, estado, fecha_alta, tipo, password, correo, edad);
		
		if(suscriptorService.addSuscriptor(suscriptor)) {
			response.sendRedirect("comprarCupon.jsp");
    	} else {
    		
    		response.sendRedirect("error.jsp");
    	}
	}
	else if ("centro".equals(tipoRegistro)) {  
		
		String nombre = request.getParameter("nombre");
		String localidad = request.getParameter("localidad");
		String etapasEducativas = request.getParameter("etapasEducativas");
		int numAlumnos = Integer.valueOf(request.getParameter("numAlumnos"));
		String email = request.getParameter("email");
		
		Centro centro = new Centro(0, nombre, localidad, etapasEducativas, numAlumnos, email);
		
		if (centroService.addCentro(centro)) {  
			response.sendRedirect("confirmacionCentro.jsp");
		} else {
			
			response.sendRedirect("error.jsp");
		}
	} 
	else {
		
		response.sendRedirect("error.jsp");
	}
}
}

	
