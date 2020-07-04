<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Manage Offer</title>
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
                       <small>Manage Offer</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active">Manage Offer</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="box box-info">
                        <div class="box-header with-border">
                            <h3 class="box-title">Manage Offer</h3>
                        </div><!-- /.box-header -->
                        <!-- form start -->
                        <div class="box-body" style="margin: 5px;">
                            <div class="row">
                            	<div class="form-group">
		                            <div class="col-md-6 col-sm-12">
		                                <input type="text" class="form-control" id="OfferTitle" value="" name="OfferTitle" placeholder="Offer Title" maxlength="150"  title="Please enter Offer title" required>
		                            </div>
		                            <div class="col-md-3 col-sm-12">
		                                <input type="text" class="form-control" id="OfferSlug" value="" name="OfferSlug" placeholder="Coupon Code" maxlength="150"  title="Please enter Strore slug" required>
		                            </div>
		                            <div class="col-md-3 col-sm-12">
		                                <input type="text" class="form-control" id="OfferDomain" value="" name="OfferDomain" placeholder="Coupon Cost" maxlength="150"  title="Please enter category name" required>
		                            </div>
		                            <div class="col-md-3 col-sm-12">
		                              <!--  <input type="text" class="form-control" id="OfferPatnerKey" value="" name="OfferPatnerKey" placeholder="Offer Patner key" maxlength="150"  title="Please enter category name" required> -->
		                            </div>
		                       </div> 
	                        </div>
	                        <br>
                            <div class="row">
	                            <div class="col-md-3 col-sm-12">
	                                <select class="form-control"name="vary" id="vary">
	                            		<option>Select Allot Type</option>
	                            		<option>Vary 1</option>
	                            		<option>Vary 2</option>
	                            	</select>
	                            </div>
	                            <div class="col-md-3 col-sm-12">
	                                <select class="form-control"name="vary" id="vary">
	                            		<option>Cashback Type</option>
	                            		<option>Vary 1</option>
	                            		<option>Vary 2</option>
	                            	</select>
	                            </div>
	                            <div class="col-md-6 col-sm-12">
	                                <input type="text" class="form-control" id="OfferDomain" value="" name="OfferDomain" placeholder="Cashback Value" maxlength="150"  title="Please enter category name" required>
                            	</div>
                            </div>
                            <br>
                            <div class="row">
	                            <div class="col-md-3 col-sm-12">
	                                <input type="text" class="form-control" id="OfferNotice" value="" name="OfferNotice" placeholder="Expiry" maxlength="150"  title="Please enter Offer name" required>
	                            </div>
	                            <div class="col-md-3 col-sm-12">
	                                <input type="text" class="form-control" id="OfferPriority" value="" name="OfferPriority" placeholder="Offer Text" maxlength="150"  title="Please enter Strore slug" required>
	                            </div>
	                             <div class="col-md-3 col-sm-12">
	                                <select class="form-control"name="vary" id="vary">
	                            		<option>Select Bank</option>
	                            		<option>Vary 1</option>
	                            		<option>Vary 2</option>
	                            	</select>
	                            </div>
	                            <div class="col-md-3 col-sm-12">
	                            	<input type="text" class="form-control" id="OfferNotice" value="" name="OfferNotice" placeholder="Categories" maxlength="150"  title="Please enter Offer name" required>
	                            </div>
                            </div>
                            <br>
                            <div class="row">
	                            <div class="col-md-4 col-sm-12">
	                                <select class="form-control"name="vary" id="vary">
	                            		<option>Select Store</option>
	                            		<option>Store 1</option>
	                            		<option>Store 2</option>
	                            	</select>
	                            </div>
	                            <div class="col-md-4 col-sm-12">
	                                <input type="text" class="form-control" id="OfferPrimaryKey" value="" name="OfferPrimaryKey" placeholder="Display Priority" maxlength="150"  title="Please enter Strore slug" required>
	                            </div>
	                             <div class="col-md-4 col-sm-12">
	                                <input type="text" class="form-control" id="OfferSecKey" value="" name="OfferSecKey" placeholder="Priority" maxlength="150"  title="Please enter Strore slug" required>
	                            </div>
	                            
	                        </div>
                       	    <br>
                       	    <div class="row">
                       	         <div class="col-md-3 col-sm-12">
	                                <input type="text" class="form-control" id="OfferSecKey" value="" name="OfferSecKey" placeholder="Base Link" maxlength="150"  title="Please enter Strore slug" required>
	                            </div>
	                       	    <div class="col-md-3 col-sm-12">
	                                <select class="form-control" name="OfferClass" id="OfferClass">
	                            		<option>Select Status</option>
	                            		<option>Advance</option>
	                            	</select>
	                            </div>
	                            <div class="col-md-3 col-sm-12">
	                                <select class="form-control" name="OfferClass" id="OfferClass">
	                            		<option>Select Verify</option>
	                            		<option>Advance</option>
	                            	</select>
	                            </div>
	                            <div class="col-md-3 col-sm-12">
	                                <select class="form-control" name="OfferClass" id="OfferClass">
	                            		<option>Select Network Partner</option>
	                            		<option>Advance</option>
	                            	</select>
	                            </div>
	                        </div>
	                        <hr>
	                        
                            <div class="row">
                                <div class="col-md-12 col-sm-12">
                                    <div class="form-group"> 
                                        <a href="#" class="btn btn-primary" style="margin-top: 24px" > ADD</a>
                                        <a href="#" class="btn btn-danger" style="margin-top: 24px" > Back</a>
                                    </div> 
                                </div>
                            </div>
                            </div>
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
