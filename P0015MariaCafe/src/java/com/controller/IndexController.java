/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.db.InfoContext;
import com.db.IntroContext;
import com.db.ProductContext;
import com.model.Info;
import com.model.Intro;
import com.model.Product;
import java.util.List;

/**
 *
 * @author Chuc Nguyen
 */
public class IndexController {

    public List<Product> getTopTwoProduct() {
        try {
            return new ProductContext().getTopTwoProducts() ;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public Info getInfo() throws Exception {
        return new InfoContext().getInfo();
    }
    
    public Intro getIntro(String type) throws Exception {
        return new IntroContext().getIntro(type);
    }
    
}
