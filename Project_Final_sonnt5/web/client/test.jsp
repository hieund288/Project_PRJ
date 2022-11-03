<%-- 
    Document   : test
    Created on : Nov 3, 2022, 9:33:49 AM
    Author     : l
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="../navigator/header.jsp" %>
        <h1>Hello World!</h1>
        aa

        ${account.username}
        ${account.password}
        ${account.role}
        <c:forEach items="${listAccount}" var="a" >
            ${a.id}
            ${a.role}
            ${a.username}
            ${a.stuID}

        </c:forEach>

    </body>
</html>
