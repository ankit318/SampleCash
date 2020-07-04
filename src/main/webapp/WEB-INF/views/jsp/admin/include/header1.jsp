<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head> 
    <link rel="stylesheet" href="<c:url value="resources/css/bootstrap-responsive.css"></c:url>">
     <%-- <link rel="stylesheet" href="<c:url value="resources/css/bootstrap.css"></c:url>">    --%>
  </head>

  <body>
  
  	<c:if test="${userName != null }"> 
      <!-- Fixed navbar -->
      <div class="navbar navbar-fixed-top">
        <div class="navbar-inner">
          <div class="container">
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="brand" href="#">Widget</a>
            <div class="nav-collapse collapse">    
              <ul class="nav"> 
                
                
                		<li><a href="<%=request.getContextPath() %>/dashboard">Dashboard</a></li> 
                		<%-- <li><a href="<%=request.getContextPath() %>/masterProfileEmailURL">Profile Email</a></li> --%>
					      <li class="dropdown">
					        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Scripts
					        <span class="caret"></span></a>
					        <ul class="dropdown-menu">
					          	<li><a href="<%=request.getContextPath() %>/test">Test</a></li>
					        </ul>    
					      </li>
					       
                		  <li><a href="#">All</a></li>
                		
                	    
              </ul>   
              <ul class="nav navbar-nav navbar-right" style="float:right;">
              	  <li><a><font color="red" size="4" style="float: right;"> Welcome, <%=session.getAttribute("userName") %> </font></a></li>
			      <li><a href="<%=request.getContextPath() %>/logout"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
			    </ul> 
            </div><!--/.nav-collapse -->
             
                 
          </div>
        </div>
      </div>
      
      </c:if>
      <c:if test="${userName == null }">
      		<c:redirect url="/"></c:redirect>
      </c:if> 
      
  </body>
</html>