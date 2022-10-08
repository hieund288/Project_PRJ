<%-- 
    Document   : teacherhome
    Created on : Oct 8, 2022, 6:25:31 AM
    Author     : l
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="style/css/TeacherHome.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include file="../navigator/header.jsp" %>


        <div class="container">
            <!-- Header -->

            <div class="row">
                <div class="col-md-12" style="background-color: #F5F5F5">
                    <div>
                        <div style="float: right; margin-right: 16px;">
                            <a href="?view=user">
                                <span class="label label-success">Mail gv</span></a> | <a href="?logout=true" class="label label-success">logout</a> |
                            <span class="label label-success"> CAMPUS: FPTU-Hòa Lạc</span>
                        </div>
                    </div>
                </div>
            </div>


            <!-- End Header -->


            <div class="box" >
                <h3 class="orangeTitle">Teacher Infomation</h3>
                <table>
                    <div class="row">
                        <div class="col-md-6">
                            <h4>Information Access(Tra cứu thông tin)</h4>
                            <ul>
                                <li><a href="schedule"> Schedule </a>(Lịch dạy)</li>
                                <li><a href="FrontOffice/SubjectFees.aspx"> Take attendance </a> (Điểm danh)</li>
                                <li><a href="Attendent">Weekly timetable</a> (Thời khóa biểu từng tuần)</li>
                                <li><a href="Schedule/TimeTable.aspx">Class timetable</a> (Xem thời khóa biểu của một lớp)</li>
                                <li><a href="Exam/ScheduleExams.aspx" target="_blank">View exam schedule </a>(Xem lịch thi)</li>
                            </ul>
                        </div>
                        <div class="col-md-6">
                            <h4>Reports(Báo cáo)</h4>
                            <ul>
                                <li><a href="Report/ViewAttendstudent.aspx">Attendance report</a> (Báo cáo điểm danh)</li>
                                <li><a href="Grade/StudentGrade.aspx">Mark Report</a> (Báo cáo điểm)</li>
                                <li><a href="Grade/StudentTranscript.aspx">Academic Transcript</a> (Báo cáo điểm)</li>
                                <li><a href="FrontOffice/StudentCurriculum.aspx">Curriculum</a> (Khung chương trình)</li>
                                <li><a href="Report/StudentFees.aspx">Student Fee</a> (Tra cứu học phí đã nộp theo kỳ)</li>
                                <li><a href="Finance/TransReport.aspx">Transaction history</a> (Lịch sử giao dịch)</li>
                            </ul>
                        </div>
                    </div>
                </table>
            </div>
        </div>
        <%@include file="../navigator/footer.jsp" %>
    </body>
</html>
