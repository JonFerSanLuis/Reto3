package com.bilbaoskp.model;

public class Centro {
    private int codCentro;
    private String nombre;
    private String localidad;
    private String etapasEducativas;
    private int numAlumnos;
    private String email;
    private int idSuscriptor; // Relación con la tabla suscriptores

    // Constructores
    public Centro() {
    }

    public Centro(int codCentro, String nombre, String localidad, String etapasEducativas, int numAlumnos, String email) {
        this.codCentro = codCentro;
        this.nombre = nombre;
        this.localidad = localidad;
        this.etapasEducativas = etapasEducativas;
        this.numAlumnos = numAlumnos;
        this.email = email;
    }

    // Getters y Setters
    public int getCodCentro() {
        return codCentro;
    }

    public void setCodCentro(int codCentro) {
        this.codCentro = codCentro;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getLocalidad() {
        return localidad;
    }

    public void setLocalidad(String localidad) {
        this.localidad = localidad;
    }

    public String getEtapasEducativas() {
        return etapasEducativas;
    }

    public void setEtapasEducativas(String etapasEducativas) {
        this.etapasEducativas = etapasEducativas;
    }

    public int getNumAlumnos() {
        return numAlumnos;
    }

    public void setNumAlumnos(int numAlumnos) {
        this.numAlumnos = numAlumnos;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getIdSuscriptor() {
        return idSuscriptor;
    }

    public void setIdSuscriptor(int idSuscriptor) {
        this.idSuscriptor = idSuscriptor;
    }

    @Override
    public String toString() {
        return "Centro{" +
                "codCentro=" + codCentro +
                ", nombre='" + nombre + '\'' +
                ", localidad='" + localidad + '\'' +
                ", etapasEducativas='" + etapasEducativas + '\'' +
                ", numAlumnos=" + numAlumnos +
                ", email='" + email + '\'' +
                ", idSuscriptor=" + idSuscriptor +
                '}';
    }
}