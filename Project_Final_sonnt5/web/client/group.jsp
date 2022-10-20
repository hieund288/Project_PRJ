<%-- 
    Document   : group
    Created on : Oct 14, 2022, 9:56:27 AM
    Author     : l
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            .style1 {
                font-weight: bold;
            }
        </style>
    </head> 
    <body>
        <%@include file="../navigator/header.jsp" %>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <form name="aspnetForm" method="post" action="" id="">

                        <div id="ctl00_divUser" style="float: right; margin-right: 16px;">
                            <a href="?view=user">
                                <span id="ctl00_lblLogIn" class="label label-success">hieundhe150417</span></a> | <a href="?logout=true" class="label label-success">logout</a> |
                            <span id="ctl00_lblCampusName" class="label label-success"> CAMPUS: FPTU-Hòa Lạc</span>
                        </div>
                        <ol class="breadcrumb">
                            <li>
                                <span id="ctl00_lblNavigation"><a href='../Student.aspx'>Home</a>&nbsp;|&nbsp;<b>Groups</b></span></li>
                        </ol>
                        <table>
                            <tr style="border-bottom: 0 none">
                                <td>
                                    <div>
                                        <table summary='Select a group'>
                                            <thead style="background-color: #6B90DA">
                                                <tr>
                                                    <th scope='col'>Campus</th>
                                                    <th scope='col'>Term</th>
                                                    <th scope='col'>Department</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td valign='top'>
                                                        <div id=""><table><tr><td><b>FU-HL</b></td></tr></table></div>
                                                    </td>
                                                    <td valign='top'>
                                                        <div id="ctl00_mainContent_divCourse">
                                                            <table>
                                                                <tr><td><a href="?campus=3&term=37&dept=36&course=808">Introduction to Computer Science</a> (CSI104)</td> </tr>
                                                                <tr><td><a href="?campus=3&term=37&dept=36&course=1023">Introduction to Computer Science</a> (CSI105)</td></tr>
                                                                <tr><td><a href="?campus=3&term=37&dept=36&course=1021">Data Analytics</a> (DTA301)</td></tr>
                                                                <tr><td><a href="?campus=3&term=37&dept=36&course=55">Human-Computer Interaction</a> (HCI201)</td></tr>

                                                            </table>
                                                        </div>
                                                    </td>
                                                    <td valign='top'>
                                                        <div id="ctl00_mainContent_divGroup">
                                                            <table>
                                                                <td>
                                                                <tr><td><a href="?group=27273">SE1623-JS</a></td> </tr>
                                                                <tr> <td><a href="?group=27296">SE1624-JS</a></td> </tr>
                                                                <tr><td><a href="?group=27229">SE1625-KS</a></td> </tr>
                                                                <tr><td><a href="?group=27270">SE1626-NET</a></td> </tr>
                                                                </td>
                                                            </table>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>



                                        <div id="ctl00_mainContent_divStudents">
                                            <table class="sortable" id="id" summary="Student list">
                                                <thead>
                                                    <tr>
                                                        <th>Index</th>
                                                        <th>Image</th>
                                                        <th>Member</th>
                                                        <th>Code</th>
                                                        <th>Surname</th>
                                                        <th>Middle name</th>
                                                        <th>Given name</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>1</td>
                                                        <td><center><img alt="" src="" style="height:146px;width:111px;border-width:0px;"/></center></td>
                                                <td><a href='../User/StudentDetails.aspx?rollNumber=HE140232'>QuanTAHE140232</a></td>
                                                <td>HE140232</td>
                                                <td>Trần</td>
                                                <td>Anh</td>
                                                <td>Quân</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </td>
                            </tr>

                        </table>

                    </form>
                </div>
            </div>
        </div>


        <%@include file="../navigator/footer.jsp" %>
    </body>
</html>
