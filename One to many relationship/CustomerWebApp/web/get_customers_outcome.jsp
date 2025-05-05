<%-- 
    Document   : get_customers_outcome
    Created on : Apr 3, 2025, 10:09:32 AM
    Author     : user
--%>

<%@page import="za.ac.tut.entities.Customer"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Customers Outcome Page</title>
    </head>
    <body>
        <h1>Get books outcome</h1>
        
        <%
            List<Customer> custs = (List<Customer>)request.getAttribute("customers");
        %>
        
        <p>
            Below are the customers retrieved from the database.
        </p>
        
        <table border="1">
            
            <%
                for(int x =0; x < custs.size(); x++){
                
                    Customer p = custs.get(x);
                    
                    Long id = p.getId();
                    
                    String name = p.getName();
                    
                    String surname = p.getSurname();
                    
                    String cellNo1 = p.getContacts().get(0).getCellNo();
                    String cellNo2 = p.getContacts().get(1).getCellNo();
                
            %>

            <tr>
                <td>Customer number: </td>
                <td><%=id%></td>
            </tr>
            <tr>
                <td>Name: </td>
                <td><%=name%></td>
            </tr>
            <tr>
                <td>Surname: </td>
                <td><%=surname%></td>
            </tr>
            <tr>
                <td>Cell number 1: </td>
                <td><%=cellNo1%></td>
            </tr>
            <tr>
                <td>Cell number 2: </td>
                <td><%=cellNo1%></td>
            </tr>
            <%
                }
            %>
        </table>
 
        <ul>
            <li>Please click <a href="menu.jsp">here</a> to get back to menu page</li>
            <li>Please click <a href="index.html">here</a> to get back to main page</li>
        </ul>
    </body>
</html>
