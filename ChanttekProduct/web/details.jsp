<%-- 
    Document   : display
    Created on : May 11, 2019, 2:20:19 AM
    Author     : fhfai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*, java.io.*, java.sql.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Details</title>
        <style>
            body{
                margin: 20px;
            }
            h2{
                padding:20px; 
                background-color: #343a40; 
                color: white;
            }
        </style>
    </head>
    <body>
        <sql:setDataSource var="details" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://chanttek.my:3306/chanttek_classicmodels" user="classicmodels" password="classicmodels1234"/>
        <sql:query dataSource="${details}" var="detailsdb">
            select * from products where productCode=?;
            <sql:param value="${param.productCode}"/>
        </sql:query>
        <c:forEach var="row" items="${detailsdb.rows}">
            <h2><center>Product Details for ${row.productName}</center></h2>
            <table class="table table-striped">
                <tbody>
                    <tr>
                        <th scope="row">Code</th>
                        <td>${row.productCode}</td>
                    </tr>
                    <tr>
                        <th scope="row">Line</th>
                        <td>${row.productLine}</td>
                    </tr>
                    <tr>
                        <th scope="row">Scale</th>
                        <td>${row.productScale}</td>
                    </tr>
                    <tr>
                        <th scope="row">Vendor</th>
                        <td>${row.productVendor}</td>
                    </tr>
                    <tr>
                        <th scope="row">Description</th>
                        <td>${row.productDescription}</td>
                    </tr>
                    <tr>
                        <th scope="row">Stock Quantity</th>
                        <td>${row.quantityInStock}</td>
                    </tr>
                    <tr>
                        <th scope="row">Price</th>
                        <td>${row.buyPrice}</td>
                    </tr>
                    <tr>
                        <th scope="row">MSRP</th>
                        <td>${row.MSRP}</td>
                    </tr>
                </tbody>
            </table>
        </c:forEach>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
