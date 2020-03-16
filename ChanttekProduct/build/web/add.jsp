<%-- 
    Document   : add
    Created on : May 14, 2019, 11:23:32 PM
    Author     : fhfai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Product</title>
        <style>
            body{
                margin: 30px;
            }
        </style>
    </head>
    <body>

        <sql:setDataSource var="select" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://chanttek.my:3306/chanttek_classicmodels" user="classicmodels" password="classicmodels1234"/>
        <sql:query dataSource="${select}" var="selectdb">
            select * from productlines;
        </sql:query>

        <div class="card">
            <div class="card-header">
                Add New Product
            </div>
            <div class="card-body">
                <form action="add-process.jsp" method="post">
                    <table class="table">
                        <tr>
                            <td>Code </td>
                            <td><input type="text" name="code" class="form-control"/></td>
                        </tr>
                        <tr>
                            <td>Name </td>
                            <td><input type="text" name="name" class="form-control"/></td>
                        </tr>
                        <td>Line</td>
                        <td>
                            <select name="line">
                                <c:forEach var="row" items="${selectdb.rows}">
                                    <option value="<c:out value="${row.productLine}"/>"><c:out value="${row.productLine}"/></option>
                                </c:forEach>
                            </select>
                        </td>
                        <tr>
                            <td>Scale </td>
                            <td><input type="text" name="scale" class="form-control"/></td>
                        </tr>
                        <tr>
                            <td>Vendor </td>
                            <td><input type="text" name="vendor" class="form-control"/></td>
                        </tr>
                        <tr>
                            <td>Description </td>
                            <td><input type="text" name="description" class="form-control"/></td>
                        </tr>
                        <tr>
                            <td>Quantity </td>
                            <td><input type="text" name="quantity" class="form-control"/></td>
                        </tr>
                        <tr>
                            <td>Price </td>
                            <td><input type="text" name="price" class="form-control"/></td>
                        </tr>
                        <tr>
                            <td>MSRP </td>
                            <td><input type="text" name="msrp" class="form-control"/></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" class="btn btn-primary" value="submit"/> <input class="btn btn-primary" type="button" onclick="window.location.href='index.jsp'" value="Cancel"></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
