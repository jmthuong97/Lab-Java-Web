/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.Product;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author Chuc Nguyen
 */
public class Controller extends SimpleTagSupport {

    private String className;
    private String methodName;
    private String params;
    private String returnedAttribute;

    /**
     * Called by the container to invoke this tag. The implementation of this
     * method is provided by the tag library developer, and handles all tag
     * processing, body iteration, etc.
     */
    @Override
    public void doTag() throws JspException {
        JspWriter out = getJspContext().getOut();
        
        try {
            // TODO: insert code to write html before writing the body content.
            // e.g.:
            //
            // out.println("<strong>" + attribute_1 + "</strong>");
            // out.println("    <blockquote>");

            JspFragment f = getJspBody();
            if (f != null) {
                f.invoke(out);
            }
            
            
            
            try {
                if(params==null || params.trim().isEmpty()) {
                    Class<?> c = Class.forName(className);
                    Method method = c.getDeclaredMethod(methodName, null);
                    
                    if(returnedAttribute==null || returnedAttribute.trim().isEmpty()) {
                        method.invoke(c.newInstance(), null);
                    } else {
                        Object resultReturned=method.invoke(c.newInstance(), null);
                        getJspContext().setAttribute(this.returnedAttribute, resultReturned, 1);
                    }
                } else {
                    String [] parameters = params.split(",");
                    for(int i=0, size=parameters.length; i<size; i++) {
                        parameters[i]=parameters[i].trim();
                    }
                    
                    if(parameters.length==1) {
                        Class<?> c = Class.forName(className);
                        Class[] argTypes = new Class[] { String.class};
                        Method method = c.getDeclaredMethod(methodName, argTypes);
                        if(returnedAttribute==null || returnedAttribute.trim().isEmpty()) {
                            method.invoke(c.newInstance(), parameters[0]);
                        } else {
                            Object resultReturned=method.invoke(c.newInstance(), parameters[0]);
                            getJspContext().setAttribute(this.returnedAttribute, resultReturned, 1);
                        }
                    } else {
                        Class<?> c = Class.forName(className);
                        Class[] argTypes = new Class[] { String[].class};
                        Method method = c.getDeclaredMethod(methodName, argTypes);
                        if(returnedAttribute==null || returnedAttribute.trim().isEmpty()) {
                            method.invoke(c.newInstance(), parameters);
                        } else {
                            Object resultReturned=method.invoke(c.newInstance(), parameters);
                            getJspContext().setAttribute(this.returnedAttribute, resultReturned, 1);
                        }
                    }
                    
                    /*
                    Class<?> c = Class.forName(className);
                    Class[] argTypes = new Class[] { Object[].class};
                    Method method = c.getDeclaredMethod(methodName, argTypes);
                    if(returnedAttribute==null || returnedAttribute.trim().isEmpty()) {
                        method.invoke(c.newInstance(), parameters);
                    } else {
                        Object resultReturned=method.invoke(c.newInstance(), parameters);
                        getJspContext().setAttribute(this.returnedAttribute, resultReturned, 1);
                    }*/
                    
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        
            /*
            
            IIndexController indexController = new IndexController();
            if("IIndexController.getTopTwoProduct()".equals(className)) {
                List<Product> list = indexController.getTopTwoProduct();
                getJspContext().setAttribute(this.returnedAttribute, list, 1);
            }
            */
            
            // TODO: insert code to write html after writing the body content.
            // e.g.:
            //
            // out.println("    </blockquote>");
        } catch (java.io.IOException ex) {
            throw new JspException("Error in Controller tag", ex);
        }
    }

    public void setClassName(String className) {
        this.className = className;
    }
    
    public void setMethodName(String methodName) {
        this.methodName = methodName;
    }

    public void setParams(String params) {
        this.params = params;
    }

    public void setReturnedAttribute(String returnedAttribute) {
        this.returnedAttribute = returnedAttribute;
    }
    
}
