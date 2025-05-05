/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.ejb.bl.CustomerFacadeLocal;
import za.ac.tut.entities.Contact;
import za.ac.tut.entities.Customer;

/**
 *
 * @author user
 */
public class AddCustomerServlet extends HttpServlet {

    @EJB CustomerFacadeLocal cfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Long custID = Long.parseLong(request.getParameter("custID"));
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String cellNo1 = request.getParameter("cellNo1");
        String cellNo2 = request.getParameter("cellNo2");
        
        Customer customer = createCustomer(custID, name, surname, cellNo1, cellNo2);
    
        RequestDispatcher disp = request.getRequestDispatcher("add_customer_outcome.jsp");
        disp.forward(request, response);
    }

    private Customer createCustomer(Long custID, String name, String surname, String cellNo1, String cellNo2) {
        
        Customer cust = new Customer();
        
        List<Contact> contacts = new ArrayList<>();
        
        Contact contact1 = new Contact();
        Contact contact2 = new Contact();
        
        contact1.setCellNo(cellNo1);
        contact2.setCellNo(cellNo2);
        
        contacts.add(contact1);
        contacts.add(contact2);
        
        cust.setId(custID);
        cust.setName(name);
        cust.setSurname(surname);
        cust.setContacts(contacts);
        
        cust.setCreationDate(new Date());
        
        return cust;
    }

   
}
