<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Manage Store</title>
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
                       <small>Manage Store</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active">Manage Store</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="box box-info">
                        <div class="box-header with-border">
                            <h3 class="box-title">Store Manager</h3>
                        </div><!-- /.box-header -->
                        <!-- form start -->
                        <div class="box-body" style="margin: 5px;">
                            <div class="row">
                            	<div class="form-group">
		                            <div class="col-md-3 col-sm-12">
		                                <input type="text" class="form-control" id="storeName" value="" name="storeName" placeholder="Store name" maxlength="150"  title="Please enter Store name" required>
		                            </div>
		                            <div class="col-md-3 col-sm-12">
		                                <input type="text" class="form-control" id="storeSlug" value="" name="storeSlug" placeholder="Strore slug" maxlength="150"  title="Please enter Strore slug" required>
		                            </div>
		                            <div class="col-md-3 col-sm-12">
		                                <input type="text" class="form-control" id="storeDomain" value="" name="storeDomain" placeholder="Store Domain E.g Flipkraft.com" maxlength="150"  title="Please enter category name" required>
		                            </div>
		                            <div class="col-md-3 col-sm-12">
		                               <input type="text" class="form-control" id="storePatnerKey" value="" name="storePatnerKey" placeholder="Store Patner key" maxlength="150"  title="Please enter category name" required>
		                            </div>
		                       </div> 
	                        </div>
	                        <br>
                            <div class="row">
	                            <div class="col-md-3 col-sm-12">
	                                <input type="text" class="form-control" id="storeHost" value="" name="storeHost" placeholder="Store host name e.g www.flipkraft.com" maxlength="150"  title="Please enter Store name" required>
	                            </div>
	                            <div class="col-md-3 col-sm-12">
	                                <input type="text" class="form-control" id="storeHeading" value="" name="storeHeading" placeholder="Strore Heading" maxlength="150"  title="Please enter Strore slug" required>
	                            </div>
	                            <div class="col-md-6 col-sm-12">
	                                <textarea class="form-control" id="storeDomain" value="" name="storeDomain" placeholder="Description" maxlength="150"  title="Please enter category name"></textarea>
                            	</div>
                            </div>
                            <br>
                            <div class="row">
	                            <div class="col-md-3 col-sm-12">
	                                <input type="text" class="form-control" id="storeNotice" value="" name="storeNotice" placeholder="Store Notice" maxlength="150"  title="Please enter Store name" required>
	                            </div>
	                            <div class="col-md-3 col-sm-12">
	                                <input type="text" class="form-control" id="storePriority" value="" name="storePriority" placeholder="Strore Priority" maxlength="150"  title="Please enter Strore slug" required>
	                            </div>
	                             <div class="col-md-3 col-sm-12">
	                                <input type="text" class="form-control" id="storeMinAmount" value="" name="storeMinAmount" placeholder="Strore Minimun Trasactional Amount" maxlength="150"  title="Please enter Strore slug" required>
	                            </div>
	                            <div class="col-md-3 col-sm-12">
	                            	<select class="form-control"name="vary" id="vary">
	                            		<option>Select Vary</option>
	                            		<option>Vary 1</option>
	                            		<option>Vary 2</option>
	                            	</select>
	                            </div>
                            </div>
                            <br>
                            <div class="row">
	                            <div class="col-md-4 col-sm-12">
	                                <select class="form-control"name="vary" id="vary">
	                            		<option>Select Cashback</option>
	                            		<option>Cashback 1</option>
	                            		<option>Cashback 2</option>
	                            	</select>
	                            </div>
	                            <div class="col-md-4 col-sm-12">
	                                <input type="text" class="form-control" id="storePrimaryKey" value="" name="storePrimaryKey" placeholder="Strore Primary Keyword" maxlength="150"  title="Please enter Strore slug" required>
	                            </div>
	                             <div class="col-md-4 col-sm-12">
	                                <input type="text" class="form-control" id="storeSecKey" value="" name="storeSecKey" placeholder="Strore Secondory Keyword" maxlength="150"  title="Please enter Strore slug" required>
	                            </div>
	                        </div>
	                        <hr>
	                        <div class="box-header with-border">
                           		 <h3 class="box-title">Store Contact Information</h3>
                       	    </div>
                       	    
                       	    <br>
                            <div class="row">
	                            <div class="col-md-4 col-sm-12">
	                                <input type="text" class="form-control" id="storeContactName" value="" name="storeContactName" placeholder="Store Conatct name" maxlength="150"  title="Please enter Store name" required>
	                            </div>
	                            <div class="col-md-4 col-sm-12">
	                                <input type="text" class="form-control" id="storeMobile" value="" name="storeMobile" placeholder="Strore mobile" maxlength="150"  title="Please enter Strore slug" required>
	                            </div>
	                             <div class="col-md-4 col-sm-12">
	                                <input type="text" class="form-control" id="storeEmail" value="" name="storeEmail" placeholder="Strore Email" maxlength="150"  title="Please enter Strore slug" required>
	                            </div>
	                        </div>
	                        <hr>
	                        <div class="box-header with-border">
                           		 <h3 class="box-title">Query Params</h3>
                       	    </div>
                       	    <br>
                       	    <div class="row">
	                       	    <div class="col-md-12 col-sm-12">
		                                <textarea class="form-control" id="storeQryParm" value="" name="storeQryParm" placeholder="Add  text" maxlength="150"  title="Please enter category name"></textarea>
	                            </div>
	                        </div>
                            <hr>
	                        <div class="box-header with-border">
                           		 <h3 class="box-title">Store pincodes</h3>
                       	    </div>
                       	    <br>
                       	    <div class="row">
	                       	    <div class="col-md-12 col-sm-12">
		                                <textarea class="form-control" id="storePincodes" value="" name="storePincodes" placeholder="Add text" maxlength="150"  title="Please enter category name"></textarea>
	                            </div>
	                        </div>  
	                        <hr>
	                        <div class="box-header with-border">
                           		 <h3 class="box-title">Coupon Source</h3>
                       	    </div>
                       	    <br>
                       	    <div class="row">
	                       	    <div class="col-md-4 col-sm-12">
		                                 <select class="form-control"name="category" id="categoryDetail">
		                                 		<option disabled="disabled">Source type</option>
		                                 		<option>Source type</option>
		                                 		<option>OP3</option>
		                                 </select>
	                            </div>
	                            <div class="col-md-4 col-sm-12">
	                                <input type="text" class="form-control" id="storeSorceUrl" value="" name="storeSorceUrl" placeholder="Store source URL" maxlength="150"  title="Please enter Strore slug" required>
	                            </div>
	                             <div class="col-md-4 col-sm-12">
	                                <input type="text" class="form-control" id="storeQryToRemove" value="" name="" placeholder="Query Params to Remove" maxlength="150"  title="Please enter Strore slug" required>
	                            </div>
	                        </div>
	                        <br>
	                        <div class="box-header with-border">
                           		 <h3 class="box-title">Defaults</h3>
                       	    </div>
                       	    <div class="row">
                       	    
	                       	     <div class="col-md-12 col-sm-12">
		                                <textarea class="form-control" id="storeDefaults" value="" name="storeDefaults" placeholder="Add text" maxlength="150"  title="Please enter category name"></textarea>
	                            </div>
	                        </div>   
	                        <br>
	                        <div class="box-header with-border">
                           		 <h3 class="box-title">Offer Key Text Map</h3>
                       	    </div>
                       	    <div class="row">
                       	    	 <div class="col-md-12 col-sm-12">
		                                <input type="text" class="form-control" id="offerKeyMap" value="" name="offerKeyMap" placeholder="Strore offer key text map " maxlength="150"  title="Please enter Strore slug" required>
	                            </div>
	                        </div> 
	                        <br>
	                        <div class="box-header with-border">
                           		 <h3 class="box-title">Store approval Delay</h3>
                       	    </div>
                       	    <div class="row">
                       	    	 <div class="col-md-12 col-sm-12">
		                                <input type="text" class="form-control" id="storeApproval" value="" name="storeApproval" placeholder="Strore Email" maxlength="150"  title="Please enter Strore approval" required>
	                            </div>
	                        </div>  
	                         <br>
	                        <div class="box-header with-border">
                           		 <h3 class="box-title">Tearms</h3>
                       	    </div>
                       	    <div class="row">
                       	    	 <div class="col-md-12 col-sm-12">
		                                <input type="text" class="form-control" id="storeTearms" value="" name="storeTearms" placeholder="Strore teams" maxlength="150"  title="Please enter Strore approval" required>
	                            </div>
	                        </div>
	                        <hr>
	                        <div class="box-header with-border">
                           		 <h3 class="box-title">Store metadata</h3>
                       	    </div>
                       	    <br>
                       	    <div class="row">
	                       	    <div class="col-md-4 col-sm-12">
	                                <input type="text" class="form-control" id="storeMetadataTitle" value="" name="storeMetadataTitle" placeholder="Store Meta data" maxlength="150"  title="Please enter Strore slug" required>
	                            </div>
	                             <div class="col-md-4 col-sm-12">
	                                <input type="text" class="form-control" id="storeMetadataKey" value="" name="storeMetadataKey" placeholder="Metadata Keywors (comma sparrated)" maxlength="150"  title="Please enter Strore slug" required>
	                            </div>
	                             <div class="col-md-4 col-sm-12">
	                                <input type="text" class="form-control" id="storeMetadataDesc" value="" name="storeMetadataDesc" placeholder="Metadata Description" maxlength="150"  title="Please enter Strore slug" required>
	                            </div>
	                        </div> 
	                         <hr>
	                        <div class="box-header with-border">
                           		 <h3 class="box-title">Category</h3>
                       	    </div>
                       	    <br>
                       	    <div class="row">
	                       	    <div class="col-md-12 col-sm-12">
	                                <input type="text" class="form-control" id="storeMetadataTitle" value="" name="storeMetadataTitle" placeholder="Store Meta data" maxlength="150"  title="Please enter Strore slug" required>
	                            </div>
	                             
	                        </div>  
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
