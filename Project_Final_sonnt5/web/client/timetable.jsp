<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : timetable
    Created on : Oct 8, 2022, 4:55:46 AM
    Author     : l
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                                <span class="label label-success">hieundhe150417</span></a> | <a href="?logout=true" class="label label-success">logout</a> |
                            <span class="label label-success"> CAMPUS: FPTU-Hòa Lạc</span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Header -->


            <!-- Start Body -->
            <table>
                <tbody>
                    <tr style="border-bottom: 0 none">
                        <td>
                            <div>
                                <br>
                                <h2>Activities for <span id="ctl00_mainContent_lblStudent">HieuNDHE150417 (Nguyễn Đức Hiếu)</span></h2>
                                <br>
                                <p style="font-size: 16px">
                                    <b>Note</b>: These activities do not include extra-curriculum activities, such as
                                    club activities ...
                                </p>
                                <p style="font-size: 16px">
                                    <b>Chú thích</b>: Các hoạt động trong bảng dưới không bao gồm hoạt động ngoại khóa,
                                    ví dụ như hoạt động câu lạc bộ ...
                                </p>
                                <div style="font-size: 13px">
                                    <p>
                                        Các phòng bắt đầu bằng AL thuộc tòa nhà Alpha. VD: AL...<br>
                                        Các phòng bắt đầu bằng BE thuộc tòa nhà Beta. VD: BE,..<br>
                                        Các phòng bắt đầu bằng G thuộc tòa nhà Gamma. VD: G201,...<br>
                                        Các phòng tập bằng đầu bằng R thuộc khu vực sân tập Vovinam.<br>
                                        Các phòng bắt đầu bằng DE thuộc tòa nhà Delta. VD: DE,..<br>
                                        Little UK (LUK) thuộc tầng 5 tòa nhà Delta
                                    </p>
                                </div>

                                <!-- TIME TABLE -->
                                <table>
                                    <thead style="background:#6B90DA;">
                                        <tr>
                                            <th rowspan="2">
                                                <span class="auto-style1"><strong>Year</strong></span>
                                                <select name="" onchange="" id="">
                                                    <option value="2019">2019</option>
                                                    <option value="2020">2020</option>
                                                    <option selected="selected" value="2022">2022</option>
                                                    <option value="2023">2023</option>

                                                </select>
                                                <br>
                                                Week
                                                <select name="" onchange="" id="">
                                                    <option value="1">03/01 To 09/01</option>
                                                    <option value="2">10/01 To 16/01</option>
                                                    <option value="3">17/01 To 23/01</option>
                                                </select>
                                            </th>
                                            <th align="center">MON</th>
                                            <th align="center">TUE</th>
                                            <th align="center">WED</th> 
                                            <th align="center">THU</th>
                                            <th align="center">FRIDAY</th>
                                            <th align="center">SAT</th>
                                            <th align="center">SUN</th>
                                        </tr>
                                        <tr>
                                            <th align="center">03/10</th><th align="center">04/10</th><th align="center">05/10</th><th align="center">06/10</th><th align="center">07/10</th><th align="center">08/10</th><th align="center">09/10</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Slot 0 </td>
                                            <td>
                                                <p>
                                                    <a href="">SWR302</a>
                                                    <a class="label label-warning" href="" target="_blank"> View Materials</a>
                                                    <br> at DE-314A 
                                                    <a class="label label-primary" href=""> EduNext </a>
                                                    <br>(<font color="Red">absent</font>)
                                                    <br>
                                                    <span class="label label-success">(7:30-9:00)</span>
                                                    <br>
                                                </p>
                                            </td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                        </tr>
                                        <tr>
                                            <td>Slot 1 </td>
                                            <td>-</td>
                                            <td>
                                                <p>
                                                    <a href="">SWR302</a>
                                                    <a class="label label-warning" href="" target="_blank"> View Materials</a>
                                                    <br> at DE-314A 
                                                    <a class="label label-primary" href=""> EduNext </a>
                                                    <br>(<font color="Red">absent</font>)
                                                    <br>
                                                    <span class="label label-success">(7:30-9:00)</span>
                                                    <br>
                                                </p>
                                            </td>
                                            <td>
                                                <p>
                                                    <a href="">SWR302</a>
                                                    <a class="label label-warning" href="" target="_blank"> View Materials</a>
                                                    <br> at DE-314A 
                                                    <a class="label label-primary" href=""> EduNext </a>
                                                    <br>(<font color="Red">absent</font>)
                                                    <br>
                                                    <span class="label label-success">(7:30-9:00)</span>
                                                    <br>
                                                </p>
                                            </td>
                                            <td>
                                                <p>
                                                    <a href="">SWR302</a>
                                                    <a class="label label-warning" href="" target="_blank"> View Materials</a>
                                                    <br> at DE-314A 
                                                    <a class="label label-primary" href=""> EduNext </a>
                                                    <br>(<font color="Red">absent</font>)
                                                    <br>
                                                    <span class="label label-success">(7:30-9:00)</span>
                                                    <br>
                                                </p>
                                            </td>
                                            <td>
                                                <p>
                                                    <a href="">SWR302</a>
                                                    <a class="label label-warning" href="" target="_blank"> View Materials</a>
                                                    <br> at DE-314A 
                                                    <a class="label label-primary" href=""> EduNext </a>
                                                    <br>(<font color="Red">absent</font>)
                                                    <br>
                                                    <span class="label label-success">(7:30-9:00)</span>
                                                    <br>
                                                </p>
                                            </td>
                                            <td>
                                                <p>
                                                    <a href="">SWR302</a>
                                                    <a class="label label-warning" href="" target="_blank"> View Materials</a>
                                                    <br> at DE-314A 
                                                    <a class="label label-primary" href=""> EduNext </a>
                                                    <br>(<font color="Red">absent</font>)
                                                    <br>
                                                    <span class="label label-success">(7:30-9:00)</span>
                                                    <br>
                                                </p>
                                            </td>
                                        <tr>
                                            <td>Slot 2 </td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                        </tr>
                                        <tr>
                                            <td>Slot 3 </td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                        </tr>
                                        <tr>
                                            <td>Slot 4 </td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                        </tr>
                                        <tr>
                                            <td>Slot 5 </td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                        </tr>
                                        <tr>
                                            <td>Slot 6 </td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                            <td>-</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>

            <!-- End Body -->
            <p>
                <b>More note / Chú thích thêm</b>:
            </p>
            <div id="ctl00_mainContent_divfoot"><ul><li>(<font color="green">attended</font>): HieuNDHE150417 had attended this activity / Nguyễn Đức Hiếu đã tham gia hoạt động này</li><li>(<font color="red">absent</font>): HieuNDHE150417 had NOT attended this activity / Nguyễn Đức Hiếu đã vắng mặt buổi này</li>   <li>(-): no data was given / chưa có dữ liệu</li> </ul></div>

        </div>

        <%@include file="../navigator/footer.jsp" %>
    </body>
</html>
