<%-- 
    Document   : delete
    Created on : May 14, 2019, 11:08:41 PM
    Author     : fhfai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>delete process</title>
    </head>
    <body>
        <sql:setDataSource var="delete" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://chanttek.my:3306/chanttek_classicmodels" user="classicmodels" password="classicmodels1234"/>
        <sql:update dataSource="${delete}" var="deletedb">
            delete from products where productCode=?;
            <sql:param value="${param.productCode}"/>
        </sql:update>
            <c:redirect url="index.jsp"/>
    </body>
</html>
