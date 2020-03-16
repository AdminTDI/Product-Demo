<%-- 
    Document   : HomePage
    Created on : May 11, 2019, 2:02:54 AM
    Author     : fhfai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*, java.io.*, java.sql.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product List</title>
        <style>
            body{
                margin: 10px;
            }
            h1{
                padding: 10px;
            }
            a{
                float: right;
                margin-right: 10px;
            }
        </style>
    </head>
    <body>
        <h1><center>Product List</center></h1>
                <sql:setDataSource var="productList" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://chanttek.my:3306/chanttek_classicmodels" user="classicmodels" password="classicmodels1234"/>
                <sql:query dataSource="${productList}" var="productListdb">
            select * from products;
        </sql:query>

        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">Product Code</th>
                    <th scope="col">Product Name</th>
                    <th><a href="add.jsp"><i style="float: right; margin: 10px; color: white" class="fas fa-plus-circle fa-lg"></a></i></th>
                </tr>
            </thead>
            <c:forEach var="row" items="${productListdb.rows}">
                <tbody>
                    <tr>
                        <td>${row.productCode}</td>
                        <td>${row.productName}</td>
                        <td>
                            <a href="delete.jsp?productCode=<c:out value="${row.productCode}"/>"><i class="fas fa-trash-alt"></i></a>
                            <a href="update.jsp?productCode=<c:out value="${row.productCode}"/>"><i class="fas fa-edit"></i></a>
                            <a href="details.jsp?productCode=<c:out value="${row.productCode}"/>"><i class="fas fa-eye"></i></a>
                        </td>
                    </tr>
                </tbody>
            </c:forEach>
        </table>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
