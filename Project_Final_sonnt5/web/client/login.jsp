<%-- 
    Document   : login
    Created on : Oct 4, 2022, 11:06:12 AM
    Author     : l
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <%@include file="../navigator/header.jsp" %>
    <body>
        <!-- Form login  -->

        <div class="container">
            <div class="row" >
                <div class="col-md-6">
                    <div style="border-style: groove;height:150px;">
                        <fieldset>
                            <legend>
                                <span class="label label-default btn-warning">
                                    <b style="color: white; border-radius: 120px;"> Phụ Huynh </b>
                                </span>
                            </legend>
                            <div style="margin-top: -15px">
                                <a href="#"> 
                                    <h3 style="text-align: center;">
                                        <span class="btn btn-primary">
                                            <b> Đăng nhập</b>
                                        </span>
                                    </h3>
                                </a>
                            </div>
                        </fieldset>
                    </div>
                </div>

                <div style=" border-style: groove; height:150px;">
                    <fieldset>
                        <legend>
                            <span class="label label-default btn-warning">
                                <b style="color: white">Sinh viên, Giảng viên, Cán bộ ĐH-FPT </b>
                            </span>
                        </legend>
                        <br>
                        <form   action="login" method="POST" >
                            <input type="text" name="username" placeholder="username"/>
                            <input type="password" name="password" placeholder="password"/>
                            <button value="Login">login</button>
                            <p class="text-danger">${requestScope.error}</p>
                        </form>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>







</div>





</body>
<%@include file="../navigator/footer.jsp" %>
</html>
