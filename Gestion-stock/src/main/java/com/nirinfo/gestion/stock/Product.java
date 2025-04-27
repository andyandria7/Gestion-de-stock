/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nirinfo.gestion.stock;

/**
 *
 * @author ANDI
 */
public class Product {
    private int id;
    private String ref;
    private String designation;
    private int pu;
    private int stock;
    
    public Product(){
        this.id = 0;
        this.ref = "";
        this.designation = "";
        this.pu = 0;
        this.stock = 0;
    }
    
    public Product(int id, String ref, String designation,int pu, int stock){
        this.id = id;
        this.ref = ref;
        this.designation = designation;
        this.pu = pu;
        this.stock = stock;
    }
    
    // set
    public void setId(int id){
        this.id = id;
    }
    public void setRef(String ref){
        this.ref = ref;
    }
    public void setDesignation(String designation){
        this.designation = designation;
    }
    public void setUp(int pu){
        this.pu = pu;
    }
    public void setStock(int stock){
        this.stock = stock;
    }
    
    // get
    public int getId(){
        return id;
    }
    public String getRef(){
        return ref;
    }
    public String getDesignation(){
        return designation;
    }
    public int getPu(){
        return pu;
    }
    public int getStock(){
        return stock;
    }
}
