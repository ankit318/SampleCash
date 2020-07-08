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
        <%@include file="include/allJS.jsp" %>

 <script>
 $( document ).ready(function() {
	  storeList(); 
	});

  
	function storeDelete(storeId){ 
		if(confirm("Are you sure you want to delete store?")){
			$.ajax({
				type : "POST",
				url : "<%=request.getContextPath()%>/storeDelete",
				data : {
					storeId : storeId
				},
				success :function(data){
					if(data==true){
						storeList();
					}else{ 
						alert("Store not deleted successfully.")
					}  
					
				},error : function(e){
					console.log("Error ::::"+e);
				}
			});
		}
	}
	
	function updateStoreStatus(storeId){  
		var flag = "0";
		if($("#"+storeId+"_status").is(':checked')){
			flag = "0";
		}else{
			flag = "1";
		}
		  
		if(confirm("Are you sure you want to update store status?")){
			$.ajax({
				type : "POST",
				url : "<%=request.getContextPath()%>/updateStoreStatus",
				data : {
					storeId : storeId,
					flag : flag
				},
				success :function(data){
					if(data==true){
						alert("Store updated successfully.")
					}else{ 
						alert("Store not updated successfully.")
					}  
					
				},error : function(e){
					console.log("Error ::::"+e);
				}
			});
		}
	}
	
	
	function storeList(){
		$.ajax({
			type : "POST",
			url : "<%=request.getContextPath()%>/storeList",
			data : {
			},
			success :function(data){
				$('#storeHeader').empty(); 
				$('#storeData').empty(); 
				for (var i = 0; i < data.length; i++) {
					if(i==0){ 
						$('#storeHeader').append('<tr role="row"><th width="3%" style="text-align: center;">Sr.No</th><th width="15%">Store name</th><th width="10%">Store Slug</th><th width="12%">Store Domain</th><th width="20%" >Heading</th><th width="10%" >Prioriy</th><th width="10%" >Minimun Amount</th>	<th width="10%"style="text-align: center; " >Status</th><th width="20%" style="text-align: right; vertical-align: top">Action</th></tr>');
					} 
					
					var checkStatus = "";
					 
					if(data[i].isActive==0){
						checkStatus = "checked";
					}else 
						checkStatus = "";
					
						$('#storeData').append('<tr><td style="text-align: center;">'+(i+1)+'</td><td>'+data[i].storeName+'</td><td>'+data[i].storeSlug+'</td><td>'+data[i].storeDomain+'</td><td>'+data[i].storeHeading+'</td><td>'+data[i].priority+'</td><td>'+data[i].miniumTransactionAmount+'</td><td style="text-align: center;"><input type="checkbox" name="'+data[i].masterStoreId+'_status" id="'+data[i].masterStoreId+'_status"  '+checkStatus+' onclick="updateStoreStatus('+data[i].masterStoreId+')" > </td>	<td style="text-align: right; vertical-align: top"><a href="#" class="btn btn-danger btn-sm" onclick="storeDelete('+data[i].masterStoreId+')">Delete</a></td></tr>');	
				}
			},error : function(e){
				console.log("Error ::::"+e);
			}
			
			
		});
 	
	}
</script>

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
								<thead id="storeHeader">
									
								</thead>
									<tbody ></tbody>
									<tbody id="storeData"></tbody>
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
        
      
      
    </body>
</html>
