/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nirinfo.gestion.stock;

/**
 *
 * @author ANDI
 */
public class Client {
    private int id;
    private String nom;
    private String prenom;
    private String adresse;
    private int contact;
            
    public Client(){
        this.id = 0;
        this.nom = "";
        this.prenom = "";
        this.adresse= "";
        this.contact = 0;
    }
    
    public Client(int id, String nom,String prenom, String adresse, int contact){
        this.id = id;
        this.nom = nom;
        this.prenom = prenom;
        this.adresse = adresse;
        this.contact = contact;
    }
    
//    set
    public void setId(int id){
        this.id = id;
    }
    public void setNom(String nom){
        this.nom = nom;
    }
    
    public void setPrenom(String prenom){
        this.prenom = prenom;
    }
    
    public void setAdresse(String adresse){
        this.adresse = adresse;
    }
    public void setContact(int contact){
        this.contact = contact;
    }
    
//    get
    public int getId(){
        return id;
    }
    public String getNom(){
        return nom;
    }
    public String getPrenom(){
        return prenom;
    }
    public String getAdresse(){
        return adresse;
    }
    public int getContact(){
        return contact;
    }
}
