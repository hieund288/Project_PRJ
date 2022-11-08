<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : timetable
    Created on : Oct 8, 2022, 4:55:46 AM
    Author     : l
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="helper" class="helper.DateTimeHelper"/>
<jsp:useBean id="subject" class="dao.SubjectDAO"/> 
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
             ${pageContext.request.contextPath}
             ${sessionScope.account.id}<br/>
             ${pageContext.request.contextPath}/timetable?sid=${sessionScope.account.id}&from=${param.from}&to=${param.to}
             
            <div style="display: flex; justify-content: center;">
                <table class="content-table">
                    <thead >
                        <tr>
                            <th>
                                <form action="${pageContext.request.contextPath}/timetable?sid=${sessionScope.account}&from=${param.from}&to=${param.to}" method="GET">
                                    Date From: <input type="date" name="from" value="${requestScope.from}"><br/>
                                    Date To: <input type="date" name="to" value="${requestScope.to}"}>
                                    <button type="submit" ><i class="fa-solid fa-eye"></i></button>

                                </form> 
                            </th>
                            <c:forEach items="${requestScope.datelist}" var="datelist">
                                <th>${datelist}<br/> ${helper.getDayNameofWeek(datelist)}</th> 
                                </c:forEach>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${requestScope.timeslots}" var="s">
                            <tr >
                                <td style="background-color: #A4C3A2;">Slot ${s.id}<br/> ${s.description}</td>
                                    <c:forEach items="${requestScope.datelist}" var="datelist">
                                    <td align="center" >
                                        <c:set var="num" value="0">
                                        </c:set>
                                        <c:forEach items="${requestScope.sessions}" var="session">
                                            <c:if test="${helper.compare(datelist,session.date) eq 0 and (session.timeslot.id eq s.id)}">
                                                <c:set var="num" value="1"/>
                                                <a style='text-decoration: none '  href="#" onclick="slotStatus(${session.status})">${session.group.id}</a><br/>
                                                at ${session.room.name} <br/>
                                                <c:if test="${session.status eq true  }">
                                                    <i style="color: green   ">(Attend)</i>
                                                </c:if>
                                                <c:if test="${session.status eq false and (helper.compare(helper.dateToday(),datelist) == 1)}" >
                                                    <i style="color: red   ">(Absent)</i>
                                                </c:if>
                                                <c:if test="${helper.compare(helper.dateToday(),datelist) == 0 and (session.status ne null)}">
                                                    <i style="color: blue   ">(Happening)</i>
                                                </c:if>    
                                                <c:if test="${session.status ne null and (helper.compare(helper.dateToday(),datelist) < 0)}">
                                                    <i style="color: yellow   ">(Not yet)</i>
                                                </c:if>

                                            </c:if>
                                        </c:forEach>
                                        <c:if test="${num eq 0}">
                                            -
                                        </c:if>

                                    </td>


                                </c:forEach>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>


        <!-- End Body -->
        <p>
            <b>More note / Chú thích thêm</b>:
        </p>
        <div id="ctl00_mainContent_divfoot"><ul><li>(<font color="green">attended</font>): HieuNDHE150417 had attended this activity / Nguyễn Đức Hiếu đã tham gia hoạt động này</li><li>(<font color="red">absent</font>): HieuNDHE150417 had NOT attended this activity / Nguyễn Đức Hiếu đã vắng mặt buổi này</li>   <li>(-): no data was given / chưa có dữ liệu</li> </ul></div>



        <%@include file="../navigator/footer.jsp" %>
        <script >

            </body>
                    function slotStatus(status) {
                        if (status == true) {
                            alert('This slot had attended');
                        }
                        if (status == false) {
                            alert('This slot had not attended');
                        }
                        if (status == null) {
                            alert('This slot will learn in future');
                        }
                    }
        </script>
                        </html>