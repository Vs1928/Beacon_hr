<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!doctype html>
<html lang="en">

<head>
        
        <meta charset="utf-8" />
        <title>Hr</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="Themesbrand" name="author" />

        
 <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
  <link href="<c:url value="/resources/css/custom.min.css"/>" rel="stylesheet">
   <link href="<c:url value="/resources/css/icon.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/libs/datatables/datatables.min.css"/>" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.datatables.net/2.0.0/css/dataTables.dataTables.css" />
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/3.0.0/css/buttons.dataTables.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
	
	
    </head>

    <body data-topbar="dark" data-layout="horizontal">

        <!-- Begin page -->
        <div id="layout-wrapper">

            <header id="page-topbar">
                <div class="navbar-header">
                    <div class="d-flex">
                        <!-- LOGO -->
                        <div class="navbar-brand-box">
                            <a href="index.html" class="logo logo-dark">
                                <span class="logo-sm">
                                    <img src="assets/images/logo.svg" alt="" height="22">
                                </span>
                                <span class="logo-lg">
                                    <img src="assets/images/logo-dark.png" alt="" height="17">
                                </span>
                            </a>

                            <a href="index.html" class="logo logo-light">
                                <span class="logo-sm">
                                    <img src="assets/images/logo-light.svg" alt="" height="22">
                                </span>
                                <span class="logo-lg">
                                    <img src="assets/images/logo-light.png" alt="" height="19">
                                </span>
                            </a>
                        </div>

                        <button type="button" class="btn btn-sm px-3 font-size-16 d-lg-none header-item waves-effect waves-light" data-bs-toggle="collapse" data-bs-target="#topnav-menu-content">
                            <i class="fa fa-fw fa-bars"></i>
                        </button>
                    </div>
			<div class="topnav">
                <div class="container-fluid">
                    <nav class="navbar navbar-light navbar-expand-lg topnav-menu">

                        <div class="collapse navbar-collapse" id="topnav-menu-content">
                            <ul class="navbar-nav">

                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle arrow-none" href="#" id="topnav-dashboard" role="button">
                                        <i class="bx bx-home-circle me-2"></i><span key="t-dashboards">Dashboards</span>
                                    </a>
                                </li>

                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle arrow-none" href="emp_details" id="topnav-uielement" role="button">
                                        <i class="bx bx-tone me-2"></i>
                                        <span key="t-ui-elements"> Add Employee</span> 
                                        
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
                    <div class="d-flex">

                        <div class="dropdown d-inline-block d-lg-none ms-2">
                            <button type="button" class="btn header-item noti-icon waves-effect" id="page-header-search-dropdown"
                                data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="mdi mdi-magnify"></i>
                            </button>
                            <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end p-0"
                                aria-labelledby="page-header-search-dropdown">
                    
                                <form class="p-3">
                                    <div class="form-group m-0">
                                        <div class="input-group">
                                            <input type="text" class="form-control" placeholder="Search ..." aria-label="Search input">
                                
                                            <button class="btn btn-primary" type="submit"><i class="mdi mdi-magnify"></i></button>s
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
    
            

            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="main-content">
                <div class="page-content">
                    <div class="container-fluid">
                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                                    <h4 class="mb-sm-0 font-size-18">Dashboard</h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->   
                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                       <div class="d-flex">
                                        <h4 class="card-title me-3">Employee Table</h4>
                                                                               <div>
                                        <%-- <spring:url value="/report/?type=xls" var="xlsURL" />
                                        <a href="${xlsURL }">
                                        	<i class="fa fa-file-excel-o" style="font-size:24px;color: #4bd94b;"></i>
                                        </a> --%>
                                       </div>
                                       </div>
                                      

                                   
                                        <table id="table" class="table table-bordered dt-responsive nowrap w-100">
                                            <thead>
                                            <tr>
                                                 <!--  <th scope="col">ID</th> -->
											      <th>Company Name</th>
											      <th>Employee Code</th>
											      <th>Employee Name</th>
											      <th>Date of Birth</th>
											      <th>Date of Joining</th>
											      <th>Gender</th>
											      <th>Blood Group</th>
											      <th>Nationality</th>
											      <th>Religion</th>
											      <th>Joining Location</th>
											      <th>Official Email</th>
											      <th>Personal Email</th>
											      <th>Departmeant</th>
											      <th>Designation</th>
											      <th>Reporting Manager</th>
											      <th>Education 1</th>
											      <th>Education 2</th>
											      <th>Education 3</th>
											      <th>Education 4</th>
											      <th>Education 5</th>
											      <th>Additional Courses</th>
											      <th>Current Address</th>
											      <th>Permanent Address</th>
											      <th>Previous Company Name</th>
											      <th>Previous Company Designation</th>
											      <th s>Previous Company CTC</th>
											      <th s>Previous Experience</th>
											      <th s>Beacon Experience</th>
											      <th s>Total Experience</th>
											      <th s>Aadhar Card</th>
											      <th s>Pan Card</th>
											      <th s>Bank Name</th>
											      <th s>Account</th>
											      <th s>IFSC</th>
											      <th s>Dependents</th>
											      <th s>Dependent 1 Name and Age</th>
											      <th s>Dependent 2 Name and Age</th>
											      <th s>Dependent 3 Name and Age</th>
											      <th scope="col">Dependent 4 Name and AgeC</th>
											      <th scope="col">Dependent 5 Name and Age</th>
											      <th scope="col">Dependent 6 Name and Age</th>
											      <th scope="col">Emergency Contact Name</th>
											      <th scope="col">Emergency Contact Relation</th>
											      <th scope="col">Emergency Contact Phone Number</th>
											      <th scope="col">UAN</th>
											      <th scope="col">PF</th>
											      <th scope="col">ESIC</th>
                                            </tr>
                                            </thead>
                                           		 <tbody>
                                            	<c:forEach items="${emplist }" var="emp" >
												    <tr>
												     <%--  <th scope="row">${emp.id}</th> --%>
												      <td>${emp.compname }</td>
												      <td>${emp.empcode }</td>
												      <td>${emp.empname }</td>
												      <td>${emp.dob }</td>
												      <td>${emp.doj }</td>
												      <td>${emp.gender }</td>
												      <td>${emp.bloodgroup }</td>
												      <td>${emp.nationality }</td>
												      <td>${emp.religion }</td>
												      <td>${emp.location }</td>
												      <td>${emp.empemail }</td>
												      <td>${emp.personalemail }</td>
												      <td>${emp.deptname }</td>
												      <td>${emp.desig }</td>
												      <td>${emp.rm }</td>
												      <td>${emp.ssc }</td>
												      <td>${emp.hsc }</td>
												      <td>${emp.graduation }</td>
												      <td>${emp.master }</td>
												      <td>${emp.other }</td>
												      <td>${emp.courses }</td>
												      <td>${emp.caddress }</td>
												      <td>${emp.paddress }</td>
												      <td>${emp.xcompnay }</td>
												      <td>${emp.pcdesign }</td>
												      <td>${emp.pcctc }</td>
												      <td>${emp.preexp }</td>
												      <td>${emp.btlexp }</td>
												      <td>${emp.totexp }</td>
												      <td>${emp.aadhar }</td>
												      <td>${emp.pan }</td>
												      <td>${emp.bankname }</td>
												      <td>${emp.accountno }</td>
												      <td>${emp.ifsc }</td>
												      <td>${emp.depts }</td>
												      <td>${emp.depts1 }</td>
												      <td>${emp.depts2 }</td>
												      <td>${emp.depts3 }</td>
												      <td>${emp.depts4 }</td>
												      <td>${emp.depts5 }</td>
												      <td>${emp.depts6 }</td>
												      <td>${emp.emgncyname }</td>
												      <td>${emp.emgncyrel }</td>
												      <td>${emp.emgncycon }</td>
												      <td>${emp.una }</td>
												      <td>${emp.pf }</td>
												      <td>${emp.esic }</td>
						   							 </tr>
						    					</c:forEach>
                                            </tbody> 
                                        </table>
                                    </div>
                                </div>
                            </div> 
                        </div>  
                    </div> 
                </div>
                

			<!-- ---Main Content End-->
 					


                
           
                
                <footer class="footer">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-sm-6">
                                <script>document.write(new Date().getFullYear())</script> © Beacon.
                            </div>
                            <div class="col-sm-6">
                                <div class="text-sm-end d-none d-sm-block">
                                    Design & Develop by Beacon Trusteeship Limited
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
           

        </div>
        <!-- END layout-wrapper -->
		
  		<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
  		<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script> -->
      
      
      <script src="https://cdn.datatables.net/2.0.0/js/dataTables.js"></script>
      <script src="<c:url value="resources/libs/datatables/datatables.min.js"/>"></script>
      
      <script src="https://cdn.datatables.net/buttons/3.0.0/js/dataTables.buttons.js"></script>
      <script src="https://cdn.datatables.net/buttons/3.0.0/js/buttons.dataTables.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.jss"></script>
      
      <script src="https://cdn.datatables.net/buttons/3.0.0/js/buttons.html5.min.js"></script> 
      <script src="https://cdn.datatables.net/buttons/3.0.0/js/buttons.print.min.js"></script> 
      
      	<%-- <script src="<c:url value="resources/js/pages/datatables.init.js"/>"></script> --%> 
 

      
        <script>
        	$(document).ready(function(){
        		/* $('#submitdata').click(function(){
        			$.ajax({
        				type:"POST",
        				url:""
        			})
        		}); */
        		
        		/* $('#table').DataTable(); */
        		new DataTable('#table', {
        		
        			layout: {
        		        topStart: {
        		            buttons: ['excel']
        		        }
        		    }
        		});
        	});
        </script> 
 </body>


</html>
