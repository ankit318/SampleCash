<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Company Name | Dashboard</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- All CSS-->
        
          <%@include file="include/css.jsp" %>
        
    </head>
    <body class="hold-transition skin-yellow sidebar-mini">
        <div class="wrapper">
        
            <!--Header start -->
            <%@include file="include/header.jsp" %>
            
            <!--Header End -->

            <!-- Left side column. contains the logo and sidebar -->
            <!--Sidebar start -->
            <%@include file="include/sidebar.jsp" %>
            
            <!--Sidebar End -->

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Dashboard 1
                        <small>Control panel</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active">Dashboard</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">

                </section><!-- /.content -->
            </div><!-- /.content-wrapper -->
            <!--Footer Start-->   
            <%@include file="include/footer.jsp" %>       
            
            <!--Footer End-->
        </div><!-- ./wrapper -->
<!-- All JS-->
<%@include file="include/allJS.jsp" %>
      
 </body>
</html>
