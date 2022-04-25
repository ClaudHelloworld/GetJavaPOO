/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package demo;

import java.util.ArrayList;



/**
 *
 * @author Fatec
 */
public class Contato {
    private String nome;
    private String telefone;
    private Data nascimento;

    public Contato(String nome, String telefone, Data nascimento) {
        this.nome = nome;
        this.telefone = telefone;
        this.nascimento = nascimento;
    }

    public static ArrayList<Contato> getList(){
        ArrayList<Contato> list = new ArrayList<>();
        list.add(new Contato("Claudinei", "(13) 9696-9696", new Data(18, 6, 2002)));
        
        return list;
    }
    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public Data getNascimento() {
        return nascimento;
    }

    public void setNascimento(Data nascimento) {
        this.nascimento = nascimento;
    }
    
    
}
