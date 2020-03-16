<%-- 
    Document   : process-update
    Created on : May 15, 2019, 1:07:37 AM
    Author     : fhfai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>update process</title>
    </head>
    <body>
        <sql:setDataSource var="update" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://chanttek.my:3306/chanttek_classicmodels" user="classicmodels" password="classicmodels1234"/>
        <sql:update dataSource="${update}" var="updatedb">
            update products set productName=?, productLine=?, productScale=?, productVendor=?, productDescription=?, quantityInStock=?, buyPrice=?, MSRP=? where productCode=?;
            <sql:param value="${param.name}"/>
            <sql:param value="${param.line}"/>
            <sql:param value="${param.scale}"/>
            <sql:param value="${param.vendor}"/>
            <sql:param value="${param.description}"/>
            <sql:param value="${param.quantity}"/>
            <sql:param value="${param.price}"/>
            <sql:param value="${param.msrp}"/>
            <sql:param value="${param.code}"/>
        </sql:update>
            <c:redirect url="index.jsp"/>
    </body>
</html>
