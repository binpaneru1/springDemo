<%-- 
    Document   : display_student
    Created on : Sep 10, 2016, 7:59:02 AM
    Author     : Hauday
--%>
<%-- 
    Document   : displaycourse
    Created on : Sep 8, 2016, 3:20:39 PM
    Author     : Hauday
--%>

<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin - Bootstrap Admin Template</title>

    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/Tamplet/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/Tamplet/css/sb-admin.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}/Tamplet/font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <%@include file="header.jsp" %>
        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Tables
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.html">Dashboard</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-table"></i> Tables
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

                    <div class="col-lg-6">
                        <h2>Students</h2>
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover table-striped">
                                <thead>
                                    <tr>
                                        <th>Sid</th>
                <th>Fname</th>
                <th>Mname</th>
                <th>Lname</th>
                <th>Gender</th>
                <th>Address</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Delete</th>
                <th>Edit</th>
                <th>Add Course</th>
                <th>Courses</th>
                                    </tr>
                                </thead>
                                <tbody>
                   <c:forEach var="displaystudent" items="${student}">
                        <tr>
                            <td>${displaystudent.sid}</td>
                            <td>${displaystudent.fname}</td>
                            <td>${displaystudent.mname}</td>
                            <td>${displaystudent.lname}</td>
                            <td>${displaystudent.gender}</td>
                            <td>${displaystudent.address}</td>
                            <td>${displaystudent.email}</td>
                            <td>${displaystudent.phone}</td>                           
                            <td><a href="${pageContext.request.contextPath}/deleteStudent/${displaystudent.sid}">Delete</a></td>
                            <td><a href="${pageContext.request.contextPath}/editStudent/${displaystudent.sid}">Edit</a></td>
                            <td><a href="${pageContext.request.contextPath}/addstudentcourse/${displaystudent.sid}">Add Course</td>
                            <td>
                             <c:forEach var="courseid" items="${courseid}">
                            <c:forEach var="course" items="${course}">
                            <c:if test="${courseid.sid==displaystudent.sid}">
                                <c:if test="${courseid.cid==course.cid}">
                                    ${course.title}   
                                </c:if>
                            </c:if>
                                         </c:forEach>
                                            </c:forEach> 
                                </td>
                    </tr>
                </c:forEach> 
            </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- /.row -->

                
        </div>
        <!-- /#page-wrapper -->

    
    <!-- /#wrapper -->

    <!-- jQuery Version 1.11.0 -->
    <script src="js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>
