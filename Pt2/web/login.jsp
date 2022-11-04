<%-- 
    Document   : login
    Created on : Nov 4, 2022, 9:44:40 AM
    Author     : l
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="login-page">
            <div class="form" >            
                <form   action="login" method="POST" >
                    <input type="text" name="username" placeholder="username"/>
                    <input type="password" name="password" placeholder="password"/>
                    <button value="Login">login</button>
                    <p class="text-danger">${requestScope.error}</p>
                </form>
            </div>
        </div>
    </body>
</html>
