<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : timetable
    Created on : Oct 8, 2022, 4:55:46 AM
    Author     : l
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="style/css/TimeTable.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include file="../navigator/header.jsp" %>
        <div class="container">

            <!-- Header -->
            <div class="row">
                <div class="col-md-12">
                    <div style="background-color: #F5F5F5">
                        <a href="home">Home</a>
                        &nbsp;|&nbsp;
                        <b>View TimeTable</b>
                        <div style="float: right; margin-right: 16px;">
                            <a href="?view=user">
                                <span class="label label-success">${account.username}</span></a> | <a href="logout" class="label label-success">logout</a> |
                            <span class="label label-success"> CAMPUS: FPTU-Hòa Lạc</span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Header -->

${session.group.name}
                </c:forEach>
                <table border="1" style="margin: 0px auto; width: 80%">
                        <tr>
                                <c:forEach items="${requestScope.datelist}" var="datelist">
                                    <c:set var="num" value="0">

                                    </c:set>
                                    <c:forEach items="${requestScope.sessions}" var="session">
                                        <c:if test="${helper.compare(datelist,session.date) eq 0 and (session.slot.slot eq s.slot)}">
                                            <c:set var="num" value="1"/>

                                            <a style='text-decoration: none '  href="#" onclick="slotStatus(${session.status})">${session.group.gid}</a><br/>

                                            at ${session.room.room} <br/>
                                            

                                        </c:if>
                                    </c:forEach>
                                    <c:if test="${num eq 0}">
                                        -
                                    </c:if>

                                </td>


                            </c:forEach>
                        </tr>
                    </c:forEach>
                    </tr>
                </table>

            </div>


            <!-- End Body -->
            <p>
                <b>More note / Chú thích thêm</b>:
            </p>
            <div id="ctl00_mainContent_divfoot"><ul><li>(<font color="green">attended</font>): HieuNDHE150417 had attended this activity / Nguyễn Đức Hiếu đã tham gia hoạt động này</li><li>(<font color="red">absent</font>): HieuNDHE150417 had NOT attended this activity / Nguyễn Đức Hiếu đã vắng mặt buổi này</li>   <li>(-): no data was given / chưa có dữ liệu</li> </ul></div>

        </div>

        <%@include file="../navigator/footer.jsp" %>
    </body>
</html>