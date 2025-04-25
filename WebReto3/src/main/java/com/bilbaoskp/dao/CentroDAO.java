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
        
        String sql = "INSERT INTO centros (nombre, localidad, etapas_educativas, num_alumnos, email) VALUES (?, ?, ?, ?, ?);";
        
        try {
            ps = con.prepareStatement(sql);
            
            ps.setString(1, centro.getNombre());
            ps.setString(2, centro.getLocalidad());
            ps.setString(3, centro.getEtapasEducativas());
            ps.setInt(4, centro.getNumAlumnos());
            ps.setString(5, centro.getEmail());
            
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
