/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model;

/**
 *
 * @author Chuc Nguyen
 */
public class Info {
    private String address;
    private String tel;
    private String email;
    private String openningHours;

    public Info() {
    }

    public Info(String address, String tel, String email, String openningHours) {
        this.address = address;
        this.tel = tel;
        this.email = email;
        this.openningHours = openningHours;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getOpenningHours() {
        return openningHours;
    }

    public void setOpenningHours(String openningHours) {
        this.openningHours = openningHours;
    }
    
}
