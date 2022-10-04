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

            <div class="row">
                <div class="col-md-12">
                    <form name="aspnetForm" method="post" action="./Default.aspx" id="aspnetForm">
                        <table>
                            <tr style="border-bottom: 0 none">
                                <td>
                                    <div>
                                        <meta name="google-signin-scope" content="profile email" />
                                        <script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
                                        <meta name="google-signin-client_id" content="183063314780-0j6vj5ddfm7j3lsledglk2egnk18up7f.apps.googleusercontent.com" />
                                        <input type="hidden" name="ctl00$mainContent$message" id="ctl00_mainContent_message" />
                                        <div id="ctl00_mainContent_divcontent">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div style="border: solid 1px #ccc; height: 150px;">
                                                        <fieldset>
                                                            <legend><span class="label label-default  btn-warning"><b>Phụ huynh</b></span></legend>
                                                            <div style="margin-top: -15px">
                                                                <a href="Phuhuynh/Login.aspx">
                                                                    <h3>
                                                                        <span class="btn btn-primary"><b>Đăng nhập</b></span></h3>
                                                                </a>
                                                            </div>
                                                        </fieldset>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div style="border: solid 1px #ccc; height: 150px;">
                                                        <fieldset>
                                                            <legend><span class="label label-default  btn-warning"><b>Sinh viên, Giảng viên, Cán bộ ĐH-FPT</b></span></legend>
                                                            <br />
                                                            <div id="loginform" 
                                                                 vertical-align: central">
                                                                <center>
                                                                    <div class="row">
                                                                        <div class="col-sm-4">

                                                                            <select name="ctl00$mainContent$ddlCampus" onchange="javascript:setTimeout( & #39; __doPostBack(\ & #39; ctl00$mainContent$ddlCampus\ & #39; , \ & #39; \ & #39; ) & #39; , 0)" id="ctl00_mainContent_ddlCampus" class="btn btn-default">
                                                                                <option selected="selected" value="">Select Campus</option>
                                                                                <option value="3">FU-H&#242;a Lạc</option>
                                                                                <option value="4">FU-Hồ Ch&#237; Minh</option>
                                                                                <option value="5">FU-Đ&#224; Nẵng</option>
                                                                                <option value="6">FU-Cần Thơ</option>
                                                                                <option value="7">FU-Quy Nhơn</option>
                                                                            </select>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div style="margin-left: -50px" class="g-signin2" data-onsuccess="onSignIn" data-theme="dark"></div>
                                                                        </div>
                                                                        <span id="ctl00_mainContent_lblMessage" class="information"></span>
                                                                    </div>

                                                                    <br />

                                                                </center>
                                                            </div>
                                                        </fieldset>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <tr style="border-bottom: 0 none">
                                <td>
                                    <br />
                                    <table width="100%" style="border: 1px solid transparent;" id="cssTable">
                                        <tr>
                                            <td>
                                                <p style="text-align: center">
                                                    © Powered by <a href="http://fpt.edu.vn" target="_blank">FPT University</a>&nbsp;|&nbsp;
                                                    <a href="http://cms.fpt.edu.vn/" target="_blank">CMS</a>&nbsp;|&nbsp; <a href="http://library.fpt.edu.vn" target="_blank">library</a>&nbsp;|&nbsp; <a href="http://library.books24x7.com" target="_blank">books24x7</a>
                                                    <span id="ctl00_lblHelpdesk"></span>
                                                </p>
                                            </td>
                                        </tr>
                                    </table>

                                </td>
                            </tr>
                        </table>

                    </form>
                </div>
            </div>
        </div>




    </body>
    <%@include file="../navigator/footer.jsp" %>

</html>
