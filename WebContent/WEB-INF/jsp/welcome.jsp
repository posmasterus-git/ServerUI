<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Server Admin</title>
	<meta http-equiv="refresh" content="30"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css" />" />
	<link rel="stylesheet" href="<c:url value="/css/bootstrap-responsive.min.css" />" />
	<link rel="stylesheet" href="<c:url value="/css/uniform.css"/>" />
	<link rel="stylesheet" href="<c:url value="/css/select2.css"/>" />
	<link rel="stylesheet" href="<c:url value="/css/matrix-style.css"/>" />
	<link rel="stylesheet" href="<c:url value="/css/matrix-media.css"/>" />
	<link href="<c:url value="/font-awesome/css/font-awesome.css" />" rel="stylesheet" />
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
	
	<script type="text/javascript" src="/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript">
	$.ajax({
	    url : 'http://wrp-api.posmasterus.com/api_redir_srvr/current_api_srvr',
	    dataType: 'json',
	    contentType: "application/json",
	          	    
	});
	</script>
	
</head>
<body>
	<div id="header">
  			<h1>metro PCS</h1>
	</div>
	
  		
	<div id="user-nav" class="navbar navbar-inverse">
  <ul class="nav">
    <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">Welcome User</span><b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a href="#"><i class="icon-user"></i> My Profile</a></li>
        <li class="divider"></li>
        <li><a href="#"><i class="icon-check"></i> My Tasks</a></li>
        <li class="divider"></li>
        <li><a href="Login.jsp"><i class="icon-key"></i> Log Out</a></li>
      </ul>
    </li>
    <li class="dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i> <span class="text">Messages</span> <span class="label label-important">5</span> <b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a class="sAdd" title="" href="#"><i class="icon-plus"></i> new message</a></li>
        <li class="divider"></li>
        <li><a class="sInbox" title="" href="#"><i class="icon-envelope"></i> inbox</a></li>
        <li class="divider"></li>
        <li><a class="sOutbox" title="" href="#"><i class="icon-arrow-up"></i> outbox</a></li>
        <li class="divider"></li>
        <li><a class="sTrash" title="" href="#"><i class="icon-trash"></i> trash</a></li>
      </ul>
    </li>
    <li class=""><a title="" href="#"><i class="icon icon-cog"></i> <span class="text">Settings</span></a></li>
    <li class=""><a title="" href="Login.jsp"><i class="icon icon-share-alt"></i> <span class="text">Logout</span></a></li>
  </ul>
</div>

	<div id="content">
	  <div id="content-header">
	  	<div id="breadcrumb"> <a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> </div>
	    <h1>Admin Page</h1>
	  </div>
		<div class="container-fluid">
    <hr>
    
		<div class="row-fluid">
		      <div class="span4">
		        <div class="widget-box">
		          <div class="widget-title"> <span class="icon"> <i class="icon-list"></i> </span>
		            <h5>Redirect Server Status </h5>
		          </div>
		          <div class="widget-content">
		          
		          		<div class="todo">
				              <ul>
									
									<li class="clearfix">
				                  <div class="txt"> Server ID <span class="by label"></span> </div>
				                </li> 
				                	<li class="clearfix">
				                  <div class="txt"> Server <span class="by label">
				                 
				                   </span> </div>
				                </li>
				                <li class="clearfix">
				                  <div class="txt"> Status <span class="by label"></span> </div>
				                </li>
				                
				              
				              </ul>
            			</div>
          				
                  </div>
		        </div>
		      </div>
		      <div class="span4">
		        <div class="widget-box">
		          <div class="widget-title"> <span class="icon"> <i class="icon-list"></i> </span>
		         
		            <h5>Current API Server & Switch</h5>
		          </div>
		          
		          	<div class="widget-content nopadding"> 
		          	<div class="todo">
		          		<c:forEach var="listValue" items="${list}">
		          			<ul>
		          		
		          				<li class="clearfix">
		          				 
				                  <div class="txt"> Server ID <span class="by label"><c:out value="${listValue.id}"></c:out></span> </div>
				                </li> 
				                	<li class="clearfix">
				                  <div class="txt"> Server Domain<span class="by label">
				                  <c:out value="${listValue.domain}"></c:out>
				                   </span> </div>
				                </li>
				                <li class="clearfix">
				                  <div class="txt"> API Server Status <span class="by label">
				                  <c:out value="${listValue.apiStatus}"></c:out>
				                  </span> </div>
				                </li>
				                <li class="clearfix">
				                  <div class="txt"> Last Heartbeat <span class="by label">
				                  <c:out value="${listValue.lastHeartbeat}"></c:out>
				                  </span> </div>
				                </li>
				                
				               </ul>
				              </c:forEach>
		          		</div>
		          	  <form action="#" method="get" class="form-horizontal">
		          			<div class="control-group">
					              <label class="control-label">Select Server</label>
					              <div class="controls">
					                <select >
					                  
					                 </select>
            			  		</div>
            				</div>
            				<div class="form-actions">
              					<button type="submit" class="btn btn-success" onClick="">Switch</button>
            				</div>
          			   </form>
		          	</div>
		      	</div>
		      </div>
		      <div class="span4">
		        <div class="widget-box">
		          <div class="widget-title"> <span class="icon"> <i class="icon-list"></i> </span>
		            <h5>API Functions</h5>
		          </div>
		          <div class="widget-content"> 
						<div class="row-fluid">
				           
				            
				              <ul class="site-stats">
				              <%-- <c:forEach var="pendingval" items="${pendingreqlist}"> --%>
				               <li class="bg_lh"><i class="icon-repeat"></i> <strong>
								
								
								<%-- 	 <c:out value="${pendingval.totalPendingRequests}"></c:out> --%>
								
								</strong> <small>Pending Requests</small></li>
								<%-- </c:forEach> --%>
				                <li class="bg_lh"><i class="icon-repeat"></i> <strong></strong> <small>Total Pending Requests</small></li>
				              </ul>
				              <div class="site-stats">
					              <button class="btn btn-info btn-large">Refresh API</button>
					              <button class="btn btn-info btn-large">Reset Pending</button>
				         	  </div>
		        </div>
		      </div>
    	</div>
    </div>
    	
    	
	<!-- Table Contents for Server -->

    	<div class="row-fluid">
    	
		
     		 <div class="span12">
				<div class="widget-box">
          			<div class="widget-title"> <span class="icon"><i class="icon-repeat" onClick=""></i></span>
				          <h5>Server Value</h5>
				          <a href='#myModal' data-toggle="modal" class="btn btn-success btn-mini">Add</a>
				                 <div id="myModal" class="modal hide">
					              <div class="modal-header">
					                <button data-dismiss="modal" class="close" type="button">×</button>
					                <h3>Pop up</h3>
					              </div>
					              <div class="modal-body">
					                
					              </div>
           					</div>
				     </div>
				          <div class="widget-content nopadding">
				            <table class="table table-bordered data-table">
				              <thead>
				                <tr>
				                  <th>ID</th>
				                  <th>Server</th>
				                  <th>Domain</th>
				                  <th>Time</th>
				                  <th>API Status</th>
				                  <th>Action</th>
				                </tr>
				              </thead>
				              <tbody>
				                <tr class="gradeX">
				                  <td></td>
				                  <td>Server 1</td>
				                  <td>http://localhost:8080/AWS_UI/index.jsp</td>
				                  <td>12/13/17 12:13:14</td>
				                  <td class="center">
				                  		
				                  		
				                  		
				                  		 <a href="#editServer" data-toggle="modal" class="btn btn-warning btn-mini">Edit</a>
				                  		<div id="editServer" class="modal hide">
			<div class="modal-header">
				<button data-dismiss="modal" class="close" type="button">x</button>
				<h3>Alert modal</h3>
			 </div>
			<div class="modal-body">
				<p>Lorem ipsum dolor sit amet...</p>
			</div>
			<div class="modal-footer"> <a data-dismiss="modal" class="btn btn-primary" href="#">Confirm</a> <a data-dismiss="modal" class="btn" href="#">Cancel</a> </div>
		</div>
											         
				                  		<button class="btn btn-danger btn-mini">Delete</button>
				                  </td>
				                </tr>
				                <tr class="gradeC">
				                  <td>2</td>
				                  <td>Server 2</td>
				                  <td>http://localhost:8080/AWS_UI/index.jsp</td>
				                  <td>12/13/17 12:13:14</td>
				                  <td class="center">
				                  		
				                  		<button class="btn btn-warning btn-mini">Edit</button>
				                  		<button class="btn btn-danger btn-mini">Delete</button></td>
				                </tr>
				                <tr class="gradeA">
				                  <td>3</td>
				                  <td>Server 3</td>
				                  <td>http://localhost:8080/AWS_UI/index.jsp</td>
				                  <td>12/13/17 12:13:14</td>
				                  <td class="center">
				                  		
				                  		<button class="btn btn-warning btn-mini">Edit</button>
				                  		<button class="btn btn-danger btn-mini">Delete</button>
				                  </td>
				                </tr>
                
			              </tbody>
			            </table>
			          </div>
			        </div>
			       </div>
			      </div>
        		</div> 
			</div>	
		</div>
		
		<!-- Adding the dialog boxes  -->
		<div id="editServer" class="modal hide">
			<div class="modal-header">
				<button data-dismiss="modal" class="close" type="button">x</button>
				<h3>Alert modal</h3>
			 </div>
			<div class="modal-body">
				<p>Lorem ipsum dolor sit amet...</p>
			</div>
			<div class="modal-footer"> <a data-dismiss="modal" class="btn btn-primary" href="#">Confirm</a> <a data-dismiss="modal" class="btn" href="#">Cancel</a> </div>
		</div>	  
		

</body>
</html>