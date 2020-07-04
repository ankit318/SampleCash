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
										<th width="10%">Store Slug</th>
										<th width="12%">Store Domain</th>
										<th width="20%" >Heading</th>
										<th width="10%" >Prioriy</th>
										<th width="10%" >Minimun Amount</th>
										<th width="10%"style="text-align: center; " >Status</th>
										<th width="20%" style="text-align: right; vertical-align: top">Action</th>
		
									</tr>
								</thead>
								<tbody>
								<c:forEach var="storeList" varStatus="count" items="${storeList }">
									<tr>
										<td style="text-align: center;">${count.index + 1 }</td>
										<td>${storeList.storeName }</td>
										<td>${storeList.storeSlug }</td>
										<td>${storeList.storeDomain }</td>
										<td>${storeList.storeHeading }</td>
										<td>${storeList.priority }</td>
										<td>${storeList.miniumTransactionAmount }</td>
										<td style="text-align: center; "><input type="checkbox" > </td>
										<td style="text-align: right; vertical-align: top"><a href="#" class="btn btn-danger btn-sm" onclick="Delete(${storeList.masterStoreId })">Delete</button></td>
										
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
       <script>
       fucntion Delete (){
    	  
       }
       </script>
    </body>
</html>
