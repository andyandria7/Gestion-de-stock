/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */
package com.nirinfo.gestion.stock;

import com.formdev.flatlaf.FlatLightLaf;

import javax.swing.UIManager;

/**
 *
 * @author ANDI
 */
public class GestionStock {

    public static void main(String[] args) {
        try {
            UIManager.setLookAndFeel(new FlatLightLaf());
        } catch (Exception ex) {
            System.err.println("Failed to initialize LaF");
        }
        MenuFenetre menu = new MenuFenetre();
        menu.setVisible(true);

    }

}
