<%-- 
    Document   : editcourse
    Created on : Sep 13, 2016, 12:09:53 AM
    Author     : vabz grg
--%>
<%-- 
    Document   : add_course
    Created on : Sep 2, 2016, 1:57:11 PM
    Author     : Hauday
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title></title>

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
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-6">

                        <form role="form" action="${pageContext.request.contextPath}/updateCourse" method="POST">
                           <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
                            <div>
                                <label>CID</label>
                                <input type="hidden" name="cid" value="${editdata.get(0).cid}">
                            </div>
                            <div class="form-group">
                                <label>Title</label>
                                <input class="form-control" type="text" name="title" value="${editdata.get(0).title}"   >
                            </div>
                            <div class="form-group">
                                <label>Price</label>
                                <input class="form-control" type="text" name="price" value="${editdata.get(0).price}"   >
                            </div>
                            <div class="form-group">
                                <label>Duration</label>
                                <input class="form-control" type="text" name="duration" value="${editdata.get(0).duration}"   >
                            </div>
                            
                            <button type="submit" class="btn btn-default">Submit Button</button>
                            <button type="reset" class="btn btn-default">Reset Button</button>

                        </form>

                    </div>
                   
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
    <%@include file="footer.jsp" %>
    <!-- jQuery Version 1.11.0 -->
    <script src="${pageContext.request.contextPath}/Tamplet/js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/Tamplet/js/bootstrap.min.js"></script>

</body>

</html>
