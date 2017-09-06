<%-- 
    Document   : login
    Created on : Dec 18, 2016, 5:07:53 PM
    Author     : lunatic
--%>
<%-- 
    Document   : add_course
    Created on : Sep 2, 2016, 1:57:11 PM
    Author     : Hauday
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Login</title>

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

<body style="text-align: center" >
  
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-6">

                        <form role="form" action="${pageContext.request.contextPath}/j_spring_security_check" method="POST"  >
                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
                            <div class="form-group">
                               
                                <input type="text" name="j_username" placeholder="username" >
                            </div>
                            <div class="form-group">
                              
                                <input type="password" name="j_password" placeholder="password">
                            </div>
                           
                            
                            <button type="submit" class="btn btn-default">Login</button>
                            
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

    <!-- jQuery Version 1.11.0 -->
    <script src="${pageContext.request.contextPath}/Tamplet/js/jquery-1.11.0.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/Tamplet/js/bootstrap.min.js"></script>

</body>

</html>






