<%-- 
    Document   : get_customers
    Created on : Apr 3, 2025, 9:49:53 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get Customers Page</title>
    </head>
    <body>
        <h1>Get customer</h1>
        
        <p>
            Please click on the button below to get customers.
        </p>
        
        <form action="GetCustomersServlet.do" method="GET">
            <table>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="GET CUSTOMERS"/>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
