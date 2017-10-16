/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.quiz;

import java.util.ArrayList;

/**
 *
 * @author Raul
 */
public class Usuario {
    private String nome;
    private double nota;

    public double getNota() {
        return nota;
    }

    public void setNota(double nota) {
        this.nota = nota;
    }
    
    private static ArrayList<Usuario> user;
    
    public static ArrayList<Usuario> getUsuario()
    {
        if (user == null)
        {
            user = new ArrayList<>();
        }
        
        return user;
    }
    
    private static ArrayList<Usuario> notaUser;
    
    public static ArrayList<Usuario> getNotaUser()
    {
        if (notaUser == null)
        {
            notaUser = new ArrayList<>();
        }
        
        return notaUser;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }    
    
}
