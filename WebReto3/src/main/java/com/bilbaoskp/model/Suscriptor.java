package com.bilbaoskp.model;

import java.util.Date;

public class Suscriptor {
    private int idSuscriptor;
    private String username;
    private String estado;
    private Date fechaAlta;
    private String tipo; // "centro" o "ordinario"
    private String password; // Para registro/login, no se almacena en la BD directamente


    public Suscriptor() {
    }

    public Suscriptor(String username, String estado, Date fechaAlta, String tipo, String password) {
        this.username = username;
        this.estado = estado;
        this.fechaAlta = fechaAlta;
        this.tipo = tipo;
        this.password = password;
    }


    public int getIdSuscriptor() {
        return idSuscriptor;
    }

    public void setIdSuscriptor(int idSuscriptor) {
        this.idSuscriptor = idSuscriptor;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public Date getFechaAlta() {
        return fechaAlta;
    }

    public void setFechaAlta(Date fechaAlta) {
        this.fechaAlta = fechaAlta;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Suscriptor{" +
                "idSuscriptor=" + idSuscriptor +
                ", username='" + username + '\'' +
                ", estado='" + estado + '\'' +
                ", fechaAlta=" + fechaAlta +
                ", tipo='" + tipo + '\'' +
                '}';
    }
}