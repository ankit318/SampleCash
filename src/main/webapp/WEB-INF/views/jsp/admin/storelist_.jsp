<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Company | store</title>
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
                       <small>Control panel</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active">Store </li>
                        <li class="active">Store List</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="box box-info">
                        <div class="box-header with-border">
                            <h3 class="box-title">Store List</h3>
                        </div><!-- /.box-header -->
                        <!-- form start -->
                        <div class="box-body">
							<table class="table table-hover">
								<thead>
									<tr role="row">
										<th width="3%" style="text-align: center;">Sr.No</th>
										<th width="15%">Store name</th>
										<th width="30%">Store Slug</th>
										<th width="12%">Store Domain</th>
										<th width="20%" >Heading</th>
										<th width="10%" >Prioriy</th>
										<th width="20%" style="text-align: right; vertical-align: top">Vary</th>
		
									</tr>
								</thead>
								<tbody>
								
								<c:forEach items="${storeList }" var="storeList" varStatus="staus">
									<tr>
										<td style="text-align: center;">${staus.count }</td>
										<td>${storeList.storeName }</td>
										<td>${storeList.storeSlug }</td>
										<td>${storeList.storeDomain }</td>
										<td>${storeList.storeHeading }</td>
										<td>${storeList.priority }</td>
										<td>${storeList.vary }</td>
									</tr>
								</c:forEach>
								</tbody>
							</table>
                        </div>
                       
                    </div>

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
