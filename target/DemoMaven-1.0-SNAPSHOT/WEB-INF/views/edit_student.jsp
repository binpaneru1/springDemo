<%-- 
    Document   : edit_student
    Created on : Sep 12, 2016, 8:00:15 PM
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
                <div class="row">
                    <div class="col-lg-6">

                        <form role="form"  action="${pageContext.request.contextPath}/updateStudent" method="POST">
                            <div>
                                <label>SID</label>
                                <input type="hidden" name="sid" value="${studentdata.get(0).sid}"
                            </div>
                            <div class="form-group">
                                <label>First Name</label>
                                <input class="form-control" type="text" name="fname" value="${studentdata.get(0).fname}">
                               
                            </div>

                            <div class="form-group">
                                <label>Middle Name</label>
                                <input class="form-control" type="text" name="mname" value="${studentdata.get(0).mname}">
                            </div>
                            
                            <div class="form-group">
                                <label>Last Name</label>
                                <input class="form-control" type="text" name="lname" value="${studentdata.get(0).lname}">
                            </div>

                            <div class="form-group">
                                <label>Gender</label>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="gender" id="optionsRadios1" value="male" <c:if test="${studentdata.get(0).gender=='male'}">checked</c:if>>Male
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="gender" id="optionsRadios2" value="female"<c:if test="${studentdata.get(0).gender=='female'}">checked</c:if>>Female
                                    </label>
                                </div>
                               
                            </div>
                            
                             <div class="form-group">
                                <label>Address</label>
                                <input class="form-control" type="text" name="address" value="${studentdata.get(0).address}">
                            </div>
                            
                             <div class="form-group">
                                <label>City</label>
                                <input class="form-control" type="text" name="city" value="${studentdata.get(0).city}">
                            </div>
                            
                             <div class="form-group">
                                <label>Phone</label>
                                <input class="form-control" type="text" name="phone" value="${studentdata.get(0).phone}">
                            </div>
                            
                             <div class="form-group">
                                <label>Email</label>
                                <input class="form-control" type="text" name="email" value="${studentdata.get(0).email}">
                            </div>
                            <div class="form-group">
                                <label>Lavel</label>
                                <select class="form-control">
                                    <c:forEach items="S.L.C,+2,Bachlore" var="levelvar">
                                        <c:choose>
                                            <c:when test="${studentdata.get(0).level==levelvar}">
                                                <option>${studentdata.get(0).level}</option>
                                            </c:when>
                                            <c:otherwise>
                                                <option>${levelvar}</option>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:forEach>
                                </select>
                            </div>
                            
                           

                           
                            <button type="submit" class="btn btn-default">Submit Button</button>
                            

                        </form>

                    </div>
    <!-- /#wrapper -->

    <!-- jQuery Version 1.11.0 -->
    <script src="${pageContext.request.contextPath}/Tamplet/js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/Tamplet/js/bootstrap.min.js"></script>

</body>

</html>





