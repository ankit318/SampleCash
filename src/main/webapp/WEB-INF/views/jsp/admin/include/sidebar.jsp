
<aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              <img src="<c:url value="resources/admin/dist/img/user2-160x160.jpg"></c:url>" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
              <p><%=session.getAttribute("userName") %></p>
              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>
<!--           search form 
          <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
              <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i></button>
              </span>
            </div>
          </form>
           /.search form -->
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
<!--            <li class="header">MAIN NAVIGATION</li>-->
          
          
          <li>
                <a href="<%=request.getContextPath() %>/dashboard">
                <i class="fa fa-dashboard"></i> <span>Dashboard</span>
              </a>
            </li>
           
           <li class="treeview">
              <a href="#">
                <i class="fa fa-dashboard"></i> <span>Manage Store</span> <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu"> 
                <li class="active"><a href="<%=request.getContextPath() %>/store"><i class="fa fa-circle-o"></i> Add Store</a></li>
                <li><a href="<%=request.getContextPath() %>/manageStore"><i class="fa fa-circle-o"></i> Store List</a></li>
              </ul> 
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-dashboard"></i> <span>Manage Offer</span> <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">  
                <li class="active"><a href="<%=request.getContextPath() %>/offer"><i class="fa fa-circle-o"></i> Add Offer</a></li>
                <li><a href="<%=request.getContextPath() %>/storeList"><i class="fa fa-circle-o"></i> Offer List</a></li>
              </ul> 
            </li>
           
         
         
           
<!--             <li class="treeview">
              <a href="#">
                <i class="fa fa-share"></i> <span>Multilevel</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>
                <li>
                  <a href="#"><i class="fa fa-circle-o"></i> Level One <i class="fa fa-angle-left pull-right"></i></a>
                  <ul class="treeview-menu">
                    <li><a href="#"><i class="fa fa-circle-o"></i> Level Two</a></li>
                    <li>
                      <a href="#"><i class="fa fa-circle-o"></i> Level Two <i class="fa fa-angle-left pull-right"></i></a>
                      <ul class="treeview-menu">
                        <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                        <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                      </ul>
                    </li>
                  </ul>
                </li>
                <li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>
              </ul>
            </li>-->
                     </ul>
        </section>
        <!-- /.sidebar -->
      </aside>