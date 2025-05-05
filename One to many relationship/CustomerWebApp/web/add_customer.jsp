<%-- 
    Document   : add_customer
    Created on : Apr 3, 2025, 9:41:44 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Customer Page</title>
    </head>
    <body>
        <h1>Add customer</h1>
        
        <p>
            Please add customer details below:
        </p>
        
        <form action="AddCustomerServlet.do" method="POST">
            <table border="1">
                <tbody>
                    <tr>
                        <td>Customer number: </td>
                        <td>
                            <input type="text" name="custID"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Name: </td>
                        <td>
                            <input type="text" name="name"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Surname </td>
                        <td>
                            <input type="text" name="surname"/>
                        </td>
                    </tr>
                    <tr>
                        <td>First cell number: </td>
                        <td>
                            <input type="text" name="cellNo1"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Second cell number: </td>
                        <td>
                            <input type="text" name="cellNo2"/>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <input type="submit" value="ADD CUSTOMER"/>
                        </td>
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>
