<%-- 
    Document   : home
    Created on : Oct 4, 2022, 1:42:22 AM
    Author     : l
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fap FPT</title>
        <link href="style/css/home.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include file="../navigator/header.jsp" %>
        <div class="container">
            <!-- Header -->
           
            <div class="row">
                <div class="col-md-12" style="background-color: #F5F5F5">
                    <div>
                        <div style="float: right; margin-right: 16px;">
                            <a href="">
                                <span class="label label-success">${account.id}</span></a> | <a href="logout" class="label label-success">logout</a> |
                            <span class="label label-success"> CAMPUS: FPTU-Hòa Lạc</span>
                        </div>
                    </div>
                </div>
            </div>


            <!-- End Header -->


            <div class="box" >
                <h3 class="btn btn-warning" style="font-size: 150%;">Academic Information</h3>
                <div class="listBoxWrapper">
                    <table>
                        <tbody>
                            <tr>
                                <td>
                                    <table>
                                        <tbody>
                                            <tr>
                                                <td valign="top" style="width: 55%;">
                                                    <h4>Registration/Application(Thủ tục/đơn từ)</h4>

                                                    <ul>
                                                        <li><a href="FrontOffice/AddApplication.aspx?code=R1">Suspend one semester to take repeated course</a>&nbsp;|&nbsp; <a href="FrontOffice/RemoveApplication.aspx?code=R1">Cancel</a> (Xin tạm hoãn tiến độ một học kỳ
                                                            để học lại | Hủy bỏ việc xin tạm hoãn)</li>
                                                        <li><a href="FrontOffice/AddApplication.aspx?code=R2">Suspend one semester</a>&nbsp;|&nbsp;
                                                            <a href="FrontOffice/RemoveApplication.aspx?code=R2">Cancel</a> (Xin tạm nghỉ một học kỳ | Hủy bỏ việc xin tạm nghỉ)</li>
                                                        <li><a href="FrontOffice/Courses.aspx">Move out class </a>(Xin chuyển lớp)</li>
                                                        <li><a href="FrontOffice/RegisterCourse.aspx?code=R3">Register extra courses</a> (Đăng ký môn học đi chậm kỳ)</li>
                                                        <li><a href="FrontOffice/RegisterCourse.aspx?code=R4">Register to improve mark </a>&nbsp;(Đăng ký học cải thiện điểm)</li>
                                                        <li><a href="FrontOffice/RegisterCourse.aspx?code=R5">Register to repeat a course</a> (Đăng ký học lại)</li>
                                                        <li><a href="FrontOffice/RegisteredCourses.aspx">Cancel registration </a>(Hủy đăng ký học)</li>
                                                        <li><a href="FrontOffice/RegisterElective.aspx">Register Free Elective Courses </a>(Đăng ký môn tự chọn)</li>
                                                        <li><a href="App/SendAcad.aspx">Send Application</a> (Gửi đơn) |&nbsp; <a href="App/AcadAppView.aspx">View Application</a> (Xem đơn)</li>
                                                        <li><a href="App/AddApp.aspx">Xin xác nhận sinh viên</a></li>
                                                        <li><a href="FrontOffice/Shopping.aspx">Choose paid items (Lựa chọn các khoản nộp)</a> - <a href="Report/DngRequests.aspx">View</a></li>
                                                        <li><a href="App/CourseChange.aspx">Yêu cầu đổi chéo lớp với sinh viên </a></li>
                                                    </ul>
                                                </td>
                                                <td valign="top">
                                                    <h4>Information Access(Tra cứu thông tin)</h4>
                                                    <ul>
                                                        <li><a href="Course/Courses.aspx">University timetable </a>(Lịch học)</li>
                                                        <li><a href="FrontOffice/SubjectFees.aspx">Tuition fee per course</a> (Biểu học phí)</li>
                                                        <li><a href="timetable">Weekly timetable</a> (Thời khóa biểu từng tuần)</li>
                                                        <li><a href="Schedule/FunixSchedule.aspx">Blended Online Course (BLOC) Schedules </a>(Lịch học các môn theo phương pháp BLOC trong kỳ)</li>
                                                        <li><a href="Schedule/TimeTable.aspx">Class timetable</a> (Xem thời khóa biểu của một lớp)</li>
                                                        <li><a href="Exam/ScheduleExams.aspx" target="_blank">View exam schedule </a>(Xem lịch thi)
                                                        </li>
                                                        <span id="ctl00_mainContent_lnkhocphi"></span>
                                                        <li><a href="" target="_blank">View Syllabuses</a>(Xem đề cương môn học)</li>
                                                        <li><a href="" target="_blank">EduNext student guideline</a></li>
                                                        <li><a href="Report/Help.aspx" target="_blank">Help/Hỗ trợ</a></li>
                                                        <span id="ctl00_mainContent_lblOR"><li><a href="" target="_blank">Tài liệu hướng dẫn: Định hướng cho sinh viên</a><img runat="server" id="img2" src="images/New_icons_10.gif" alt=""></li></span>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td valign="top">
                                                    <h4>Feedback(Ý kiến)</h4>
                                                    <ul>
                                                        <li><a href="Feedback/StudentFeedBack.aspx">Feedback about teaching</a> (Ý kiến về việc giảng dạy)</li>
                                                    </ul>
                                                </td>
                                                <td valign="top">
                                                    <h4>Reports(Báo cáo)</h4>
                                                    <ul>
                                                        <li><a href="Report/ViewAttendstudent.aspx">Attendance report</a> (Báo cáo điểm danh)</li>
                                                        <li><a href="Grade/StudentGrade.aspx">Mark Report</a> (Báo cáo điểm)</li>
                                                        <li><a href="Grade/StudentTranscript.aspx">Academic Transcript</a> (Báo cáo điểm)</li>
                                                        <li><a href="FrontOffice/StudentCurriculum.aspx">Curriculum</a> (Khung chương trình)</li>
                                                        <li><a href="Report/StudentFees.aspx">Student Fee</a> (Tra cứu học phí đã nộp theo kỳ)</li>
                                                        <li><a href="Finance/TransReport.aspx">Transaction history</a> (Lịch sử giao dịch)</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td valign="top">
                                                    <h4>Others(Khác)</h4>
                                                    <ul>
                                                        <li><a href="User/Profile.aspx">Student Profile</a>| <a href="User/verProfile.aspx">Update Profile</a></li>
                                                        <li><a href="Course/Terms.aspx">View semester</a>, <a href="Campus/Rooms.aspx">room</a> ( Xem thông tin về học kỳ, phòng)</li>
                                                        <li><a href="SuFunix.aspx">Công nhận và chuyển đổi tín chỉ các học phần của Đại học trực tuyến (FUNiX)</a></li>
                                                        <li><a href="FrontOffice/WishList.aspx">Danh sách các môn học lại chờ xếp lớp</a></li>
                                                        <li><a href="Report/Awa.aspx">Các loại chứng chỉ</a></li>
                                                        <li><a href="Report/PrintReportFinalS.aspx">Report điểm phong trào</a></li>
                                                    </ul>
                                                </td>
                                                <td>
                                                    <h4>Regulations(Các quy định)</h4>
                                                    <ul>
                                                        <li><a href="User/Regulations.aspx" target="_blank">Regulations...</a></li>
                                                        <li><a href="" target="_blank">Dormitory regulations (Nội quy KTX)</a></li></ul>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td>
                                                    <h4>Courses on FPTU-Coursera</h4>
                                                    <ul>
                                                        <li><a href="" target="_blank">Announcement</a></li>
                                                    </ul>
                                                    <ul>
                                                        <li><a href="SRS/AddQA.aspx" target="_blank">Ask mentor</a></li>
                                                    </ul>
                                                    <ul>
                                                        <li><a href="SRS/ViewQAS.aspx" target="_blank">View answer</a></li>
                                                    </ul>
                                                    <ul>
                                                        <li><a href="" target="_blank">Submit certificates</a></li>
                                                    </ul>
                                                    <ul>
                                                        <li><a href="" target="_blank">Certificate submission guideline</a></li>
                                                    </ul>
                                                </td>
                                                <td>
                                                    <div id="ctl00_mainContent_divKTX" class="row">
                                                        <div class="panel-group">
                                                            <div class="panel panel-default">
                                                                <div class="panel-heading">Thông tin KTX </div>
                                                                <div class="panel-body">
                                                                    <div id="ctl00_mainContent_divContent"><a href="">Thông tin KTX =&gt;Hòa Lạc - On Campus Dormitory</a></div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>

                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <%@include file="../navigator/footer.jsp" %>
    </body>
</html>
