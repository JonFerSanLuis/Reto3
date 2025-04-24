package com.bilbaoskp.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.bilbaoskp.model.Suscriptor;

import db.AccesoBD;

public class SuscriptorDAO {
	
	public boolean addSuscriptor(Suscriptor suscriptor) {
		Connection con = AccesoBD.getConnection();
		PreparedStatement ps = null;
		
		String sql = "INSERT INTO suscriptores (username, estado, fecha_alta, tipo, password, correo, edad) VALUES (?, ?, ?, ?, ?, ?, ?);";
		
		try {
			ps = con.prepareStatement(sql);
			
			ps.setString(1, suscriptor.getUsername());
			ps.setString(2, suscriptor.getEstado());
			ps.setDate(3, new java.sql.Date(suscriptor.getFechaAlta().getTime()));
			ps.setString(4, suscriptor.getTipo());
			ps.setString(5, suscriptor.getPassword());
			ps.setString(6, suscriptor.getCorreo());
			ps.setInt(7, suscriptor.getEdad());
			
			if (ps.executeUpdate() > 0) {
				return true;
			} else {
				return false;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			AccesoBD.closeConnection(null, ps, con);
		}
		
		return false;
	}
    /*
    public Suscriptor validarUsuario() {
    	Suscriptor suscriptor = null;
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        try {
            con = AccesoBD.getConnection();
            
            String sql = "SELECT * FROM suscriptores;";
            ps = con.prepareStatement(sql);
            
            rs = ps.executeQuery();
            
            if (rs.next()) {
            	
            	suscriptor = new Suscriptor();
            	suscriptor.setIdSuscriptor(rs.getInt("id_suscriptor"));
            	suscriptor.setUsername(rs.getString("username"));
            	suscriptor.setEstado(rs.getString("estado"));
            	suscriptor.setFechaAlta(rs.getDate("fecha_alta"));
            	suscriptor.setTipo(rs.getString("tipo"));
            	suscriptor.setPassword(rs.getString("password"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            AccesoBD.closeConnection(rs, ps, con);
        }
        
        return suscriptor;
    }
    */
}