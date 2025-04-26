package com.bilbaoskp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bilbaoskp.model.RankingUsuario;

import db.AccesoBD;

/**
 * Clase para acceder a los datos del ranking
 */
public class RankingDAO {
    
    /**
     * Obtiene la lista de usuarios para el ranking ordenados por puntuación
     * @return Lista de usuarios con sus puntuaciones
     */
    public List<RankingUsuario> obtenerRanking() {
        List<RankingUsuario> listaRanking = new ArrayList<>();
        
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        try {
            // Obtener conexión a la base de datos
            con = AccesoBD.getConnection();
            
            // Consulta SQL para obtener el ranking
            // Unimos las tablas suscriptores, partida y escape_room para obtener los puntos
            String sql = "SELECT s.id_suscriptor, s.username, " +
                         "COALESCE(MAX(e.puntos_totales), 0) as puntos, " +
                         "COUNT(DISTINCT e.id) as partidas " +
                         "FROM suscriptores s " +
                         "LEFT JOIN partida p ON p.tipo_partida = s.tipo " +
                         "LEFT JOIN escape_room e ON e.id_partida = p.id " +
                         "GROUP BY s.id_suscriptor, s.username " +
                         "ORDER BY puntos DESC, partidas DESC";
            
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            int posicion = 1;
            
            // Recorrer los resultados y crear objetos RankingUsuario
            while (rs.next()) {
                RankingUsuario usuario = new RankingUsuario();
                usuario.setPosicion(posicion++);
                usuario.setId(rs.getInt("id_suscriptor"));
                usuario.setNombre(rs.getString("username"));
                usuario.setPuntuacion(rs.getInt("puntos"));
                usuario.setPartidas(rs.getInt("partidas"));
                
                // Calculamos el nivel basado en los puntos (ejemplo simple)
                // Cada 1000 puntos sube un nivel
                int nivel = (rs.getInt("puntos") / 1000) + 1;
                usuario.setNivel(nivel);
                
                listaRanking.add(usuario);
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Cerrar conexiones
            AccesoBD.closeConnection(rs, ps, con);
        }
        
        return listaRanking;
    }
    
    /**
     * Busca usuarios en el ranking por nombre
     * @param nombreBusqueda Nombre o parte del nombre a buscar
     * @return Lista de usuarios que coinciden con la búsqueda
     */
    public List<RankingUsuario> buscarUsuariosPorNombre(String nombreBusqueda) {
        List<RankingUsuario> listaRanking = new ArrayList<>();
        
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        
        try {
            con = AccesoBD.getConnection();
            
            String sql = "SELECT s.id_suscriptor, s.username, " +
                         "COALESCE(MAX(e.puntos_totales), 0) as puntos, " +
                         "COUNT(DISTINCT e.id) as partidas " +
                         "FROM suscriptores s " +
                         "LEFT JOIN partida p ON p.tipo_partida = s.tipo " +
                         "LEFT JOIN escape_room e ON e.id_partida = p.id " +
                         "WHERE s.username LIKE ? " +
                         "GROUP BY s.id_suscriptor, s.username " +
                         "ORDER BY puntos DESC, partidas DESC";
            
            ps = con.prepareStatement(sql);
            ps.setString(1, "%" + nombreBusqueda + "%");
            rs = ps.executeQuery();
            
            int posicion = 1;
            
            while (rs.next()) {
                RankingUsuario usuario = new RankingUsuario();
                usuario.setPosicion(posicion++);
                usuario.setId(rs.getInt("id_suscriptor"));
                usuario.setNombre(rs.getString("username"));
                usuario.setPuntuacion(rs.getInt("puntos"));
                usuario.setPartidas(rs.getInt("partidas"));
                
                int nivel = (rs.getInt("puntos") / 1000) + 1;
                usuario.setNivel(nivel);
                
                listaRanking.add(usuario);
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            AccesoBD.closeConnection(rs, ps, con);
        }
        
        return listaRanking;
    }
}