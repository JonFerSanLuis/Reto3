package controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bilbaoskp.model.Suscriptor;

import service.SuscriptorService;


@WebServlet("/AltaSuscriptor")
public class AltaSuscriptor extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	SuscriptorService suscriptorService;
	
	public void init(ServletConfig config) throws ServletException {
    	super.init(config);
    	suscriptorService = new SuscriptorService();
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
		String username = request.getParameter("username");
		String estado = "estado";
		Date fecha_alta = new Date(System.currentTimeMillis()); // No existe este campo en el formulario, con este codigo se insertará en el objeto la fecha actual al darle al boton de registrar
		String tipo = request.getParameter("tipo");
		String password = request.getParameter("password");
		String correo = request.getParameter("correo");
		int edad = Integer.valueOf(request.getParameter("edad"));
		
		Suscriptor suscriptor = new Suscriptor(username, estado, fecha_alta, tipo, password, correo, edad);
		
		if(suscriptorService.addSuscriptor(suscriptor)) {
			response.sendRedirect("comprarCupon.html");
    	} else {
    		
    	}
	}

}
