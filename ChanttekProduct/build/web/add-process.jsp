<%-- 
    Document   : add-process
    Created on : May 15, 2019, 12:15:48 AM
    Author     : fhfai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>add process</title>
    </head>
    <body>
        <sql:setDataSource var="add" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://chanttek.my:3306/chanttek_classicmodels" user="classicmodels" password="classicmodels1234"/>
        <sql:update dataSource="${add}" var="dbadd">
            insert into products values (?,?,?,?,?,?,?,?,?);
            <sql:param value="${param.code}"/>
            <sql:param value="${param.name}"/>
            <sql:param value="${param.line}"/>
            <sql:param value="${param.scale}"/>
            <sql:param value="${param.vendor}"/>
            <sql:param value="${param.description}"/>
            <sql:param value="${param.quantity}"/>
            <sql:param value="${param.price}"/>
            <sql:param value="${param.msrp}"/>
        </sql:update>
            <c:redirect url="index.jsp"/>
    </body>
</html>
