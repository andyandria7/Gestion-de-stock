/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nirinfo.gestion.stock;

/**
 *
 * @author ANDI
 */
public class Fournisseur {
    private int idFournisseur;
    private String nomF;
    private String adresseF;
    private int contactF;
    
    public Fournisseur(){
        this.idFournisseur = 0;
        this.nomF = "";
        this.adresseF = "";
        this.contactF = 0;
    }
    
    public Fournisseur(int idFournisseur, String nomF, String adresseF,int contactF){
        this.idFournisseur = idFournisseur;
        this.nomF = nomF;
        this.adresseF = adresseF;
        this.contactF = contactF;
    }
    
    //set
    public void setId(int idFournisseur){
        this.idFournisseur = idFournisseur;
    }
    public  void setNom(String nomF){
        this.nomF = nomF;
    }
    public void setAdresse(String adresseF){
        this.adresseF = adresseF;
    }
    public void setContact(int contactF){
        this.contactF = contactF;
    }
    
    //get
    public int getIdFournisseur(){
        return idFournisseur;
    }
    public String getNomF(){
        return nomF;
    }
    public String getAdresseF(){
        return adresseF;
    }
    public int getContactF(){
        return contactF;
    }
}
