<%-- 
    Document   : update
    Created on : May 14, 2019, 11:08:31 PM
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
        <title>Update Product</title>
        <style>
            body{
                margin: 30px;
            }
        </style>
    </head>
    <body>

        <sql:setDataSource var="access" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://chanttek.my:3306/chanttek_classicmodels" user="classicmodels" password="classicmodels1234"/>
        <sql:query dataSource="${access}" var="updatedb">
            select * from products where productCode=?;
            <sql:param value="${param.productCode}"/>
        </sql:query>
        <sql:query dataSource="${access}" var="selectdb">
            select * from productlines;
        </sql:query>

        <div class="card">
            <div class="card-header">
                Update Product
            </div>
            <div class="card-body">
                <form action="update-process.jsp" method="post">
                    <table class="table">
                        <c:forEach var="row" items="${updatedb.rows}">
                            <tr>
                                <td>Code </td>
                                <td><input type="text" name="code" class="form-control" value="<c:out value="${row.productCode}"/>" readonly="readonly"/></td>
                            </tr>
                            <tr>
                                <td>Name </td>
                                <td><input type="text" name="name" class="form-control" value="<c:out value="${row.productName}"/>"/></td>
                            </tr>
                            <tr>
                                <td>Line </td>
                                <td>
                                    <select name="line">
                                        <option value="<c:out value="${row.productLine}"/>"><c:out value="${row.productLine}"/></option>
                                        <c:forEach var="row2" items="${selectdb.rows}">
                                            <option value="<c:out value="${row2.productLine}"/>"><c:out value="${row2.productLine}"/></option>
                                        </c:forEach>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>Scale </td>
                                <td><input type="text" name="scale" class="form-control"value="<c:out value="${row.productScale}"/>"/></td>
                            </tr>
                            <tr>
                                <td>Vendor </td>
                                <td><input type="text" name="vendor" class="form-control"value="<c:out value="${row.productVendor}"/>"/></td>
                            </tr>
                            <tr>
                                <td>Description </td>
                                <td><input type="text" name="description" class="form-control" value="<c:out value="${row.productDescription}"/>"/></td>
                            </tr>
                            <tr>
                                <td>Quantity </td>
                                <td><input type="text" name="quantity" class="form-control" value="<c:out value="${row.quantityInStock}"/>"/></td>
                            </tr>
                            <tr>
                                <td>Price </td>
                                <td><input type="text" name="price" class="form-control" value="<c:out value="${row.buyPrice}"/>"/></td>
                            </tr>
                            <tr>
                                <td>MSRP </td>
                                <td><input type="text" name="msrp" class="form-control" value="<c:out value="${row.MSRP}"/>"/></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><input type="submit" class="btn btn-primary" value="Update"/> <input class="btn btn-primary" type="button" onclick="window.location.href='index.jsp'" value="Cancel"></td>
                            </tr>
                        </c:forEach>
                    </table>
                </form>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>

