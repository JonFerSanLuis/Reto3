package controller;

import java.io.IOException;

import java.sql.Date;
import java.util.Calendar;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bilbaoskp.model.Centro;
import com.bilbaoskp.model.Cupon;
import com.bilbaoskp.model.Suscriptor;

import service.CentroService;
import service.CuponService;
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
		String tipoRegistro = request.getParameter("tipo");
	
	if ("ordinario".equals(tipoRegistro)) {
		String username = request.getParameter("username");
		String estado = "estado";
		Date fecha_alta = new Date(System.currentTimeMillis()); // No existe este campo en el formulario, con este codigo se insertar� en el objeto la fecha actual al darle al boton de registrar
		String tipo = request.getParameter("tipo");
		String password = request.getParameter("password");
		String correo = request.getParameter("correo");
		int edad = Integer.valueOf(request.getParameter("edad"));
		
		Suscriptor suscriptor = new Suscriptor(0, username, estado, fecha_alta, tipo, password, correo, edad);
		
		if(suscriptorService.addSuscriptor(suscriptor)) {
			response.sendRedirect("index.jsp");
			Cupon c = new Cupon(); 
			
			Suscriptor s = new Suscriptor();
			SuscriptorService ser = new SuscriptorService();
			s = ser.getSuscriptorByNombreService(username);				
			c.setIdSuscriptor(s.getIdSuscriptor());
			c.setTipo("Bullying");
				
			Date fechaActual = new Date(System.currentTimeMillis());
			Calendar calendar = Calendar.getInstance();
			calendar.setTime(fechaActual);
			calendar.add(Calendar.YEAR, 1);
			Date fechaCaducidad = new Date(calendar.getTimeInMillis());;
			
			c.setEstado("disponible");
			c.setFechaCaducidad(fechaCaducidad);
			CuponService cup = new CuponService();
			cup.asignarCuponService(c);
			
    	} else {
    		request.setAttribute("errorMensaje", "Error al registrar suscriptor. Int�ntalo de nuevo.");
            request.getRequestDispatcher("suscribirse.jsp").forward(request, response);
    	}
	}
	else if ("centro".equals(tipoRegistro)) {  
		
		String nombre = request.getParameter("nombre");
		int codigo_centro = Integer.valueOf(request.getParameter("codigo"));
		String responsable = request.getParameter("responsable");
		String email = request.getParameter("email");
		String tipoCentro = request.getParameter("tipo");
		int numAlumnos = Integer.valueOf(request.getParameter("alumnos"));
		String numTelefono = request.getParameter("telefono");
		
		Centro centro = new Centro(codigo_centro, nombre, responsable, tipoCentro, numAlumnos, email, numTelefono);
		
		if (centroService.addCentro(centro)) { 
			for(int a =0;a<numAlumnos;a++) {
				// Solo registrar al responsable
            Suscriptor s = new Suscriptor();
            s.setUsername(responsable); // Nombre del responsable
            s.setEstado("estado");
            s.setFechaAlta(new Date(System.currentTimeMillis()));
            s.setTipo("responsable"); // Tipo 'responsable'
            s.setPassword("defaultPassword"); // Recuerda cambiarlo luego
            s.setCorreo(email); // Correo del responsable
            s.setEdad(0); // Edad predeterminada

            suscriptorService.addSuscriptor(s);

            // Asignar cupon al responsable
            s = suscriptorService.getSuscriptorByNombreService(s.getUsername()); // Obtener el suscriptor por nombre
            Cupon c = new Cupon();
            c.setIdSuscriptor(s.getIdSuscriptor());
            c.setTipo("Bullying");

            Date fechaActual = new Date(System.currentTimeMillis());
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(fechaActual);
            calendar.add(Calendar.YEAR, 1); // Caducidad de 1 a�o
            Date fechaCaducidad = new Date(calendar.getTimeInMillis());

            c.setFechaCaducidad(fechaCaducidad);
            c.setEstado("disponible");

            CuponService cup = new CuponService();
            cup.asignarCuponService(c);
			}
            
            response.sendRedirect("index.jsp"); // Redirigir al index
        }
		else {
			request.setAttribute("errorMensaje", "Error al registrar suscriptor. Int�ntalo de nuevo.");
            request.getRequestDispatcher("suscribirse.jsp").forward(request, response);
		}
	} 
	else {
		
		response.sendRedirect("error.jsp");
	}
}
}

	
