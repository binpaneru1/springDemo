<%-- 
    Document   : student
    Created on : Sep 5, 2016, 4:51:13 PM
    Author     : vabz grg
--%>
<!DOCTYPE html>
<html lang="en">

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

                        <form role="form"  action="${pageContext.request.contextPath}/saveStudent" method="POST">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
                            <div class="form-group">
                                <label>First Name</label>
                                <input class="form-control" type="text" name="fname" placeholder="Enter First Name">
                               
                            </div>

                            <div class="form-group">
                                <label>Middle Name</label>
                                <input class="form-control" type="text" name="mname" placeholder="Enter Middle Name">
                            </div>
                            
                            <div class="form-group">
                                <label>Last Name</label>
                                <input class="form-control" type="text" name="lname" placeholder="Enter Last Name">
                            </div>

                            <div class="form-group">
                                <label>Gender</label>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="gender" id="optionsRadios1" value="male" checked>Male
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="gender" id="optionsRadios2" value="option2">Female
                                    </label>
                                </div>
                               
                            </div>
                            
                             <div class="form-group">
                                <label>Address</label>
                                <input class="form-control" type="text" name="address" placeholder="Enter address">
                            </div>
                            
                             <div class="form-group">
                                <label>City</label>
                                <input class="form-control" type="text" name="city" placeholder="Enter city">
                            </div>
                            
                             <div class="form-group">
                                <label>Phone</label>
                                <input class="form-control" type="text" name="phone" placeholder="Enter phone">
                            </div>
                            
                             <div class="form-group">
                                <label>Email</label>
                                <input class="form-control" type="text" name="email" placeholder="Enter email">
                            </div>
                            <div class="form-group">
                                <label>Lavel</label>
                                <select class="form-control">
                                    <option>Select A Level</option>
                                    <option>S L C</option>
                                    <option>+2</option>
                                    <option>Bachlore</option>
                                </select>
                            </div>
                            
                           

                           
                            <button type="submit" class="btn btn-default">Submit Button</button>
                            <button type="reset" class="btn btn-default">Reset Button</button>

                        </form>

                    </div>
    <!-- /#wrapper -->

    <!-- jQuery Version 1.11.0 -->
    <script src="${pageContext.request.contextPath}/Tamplet/js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/Tamplet/js/bootstrap.min.js"></script>

</body>

</html>
