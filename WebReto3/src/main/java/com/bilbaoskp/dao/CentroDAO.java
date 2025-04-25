package com.bilbaoskp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.bilbaoskp.model.Centro;

import db.AccesoBD;

public class CentroDAO {
    
    public boolean addCentro(Centro centro) {
        Connection con = AccesoBD.getConnection();
        PreparedStatement ps = null;
        
        String sql = "INSERT INTO centros (cod_centro, nombre, num_alumnos, email, telefono) VALUES (?, ?, ?, ?, ?);";
        
        try {
            ps = con.prepareStatement(sql);
            
            ps.setInt(1, centro.getCodCentro());
            ps.setString(2, centro.getNombre());
            ps.setInt(3, centro.getNumAlumnos());
            ps.setString(4, centro.getEmail());
            ps.setString(5, centro.getTelefono());
            
            if (ps.executeUpdate() > 0) {
                return true;
            } else {
                return false;
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            AccesoBD.closeConnection(null, ps, con);
        }
        
        return false;
    }
}
