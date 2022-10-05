<%-- 
    Document   : login
    Created on : Oct 4, 2022, 11:06:12 AM
    Author     : l
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../navigator/header.jsp" %>
    <body>
        <div class="container">
            <!-- Header FPT UNIVERSITY -->
            <div class="row">
                <div class="col-md-8">
                    <h1><span>FPT University Academic Portal</span>
                    </h1>
                </div>
                <div class="col-md-4">
                    <table>
                        <tr>
                            <td colspan="2" class="auto-style1"><strong>FAP mobile app (myFAP) is ready at</strong></td>
                        </tr>
                        <tr>
                            <td><a href="https://apps.apple.com/app/id1527723314">
                                    <img src="https://fap.fpt.edu.vn/images/app-store.svg" style="width: 120px; height: 40px" alt="apple store" /></a></td>
                            <td><a href="https://play.google.com/store/apps/details?id=com.fuct">
                                    <img src="https://fap.fpt.edu.vn/images/play-store.svg" style="width: 120px; height: 40px" alt="google store" /></a></td>
                        </tr>
                    </table>
                </div>
            </div>
            <br>
        </div>
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
                <div class="col-md-6">
                    <div style=" border-style: groove; height:150px;">
                        <fieldset>
                            <legend>
                                <span class="label label-default btn-warning">
                                    <b style="color: white">Sinh viên, Giảng viên, Cán bộ ĐH-FPT </b>
                                </span>
                            </legend>
                            <br>
                            <div id="login">
                                Login
                            </div>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>







    </div>





</body>
<%@include file="../navigator/footer.jsp" %>
</html>
