<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
crossorigin="anonymous">
 <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
  <link href="<c:url value="/resources/css/custom.min.css"/>" rel="stylesheet">
   <link href="<c:url value="/resources/css/icon.min.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/libs/datatables/datatables.min.css"/>" rel="stylesheet">
</head>
<body data-topbar="dark" data-layout="horizontal">
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
			<!-- <div class="topnav">
                <div class="container-fluid">
                    <nav class="navbar navbar-light navbar-expand-lg topnav-menu">

                        <div class="collapse navbar-collapse" id="topnav-menu-content">
                            <ul class="navbar-nav">

                               

                                <li class="nav-item dropdown">
                                    <a class="nav-link arrow-none" href="emp_details" id="topnav-uielement" role="button">
                                        <i class="bx bx-tone me-2"></i>
                                        <span key="t-ui-elements"> Add Employee</span> 
                                        
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div> -->
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
	<div class="main-content">
      <div class="page-content">
       <div class="container-fluid">
       <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                                    <h4 class="mb-sm-0 font-size-18">Employee Details</h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title --> 
		<div class="row">
			<div class="col-md-12 ">
				<div class="card">
					<div class="card-header text-center">
						<c:if test="${not empty msg }">
							<h5 class="text-success">${msg }</h5>
							<c:remove var="msg"/>
						</c:if>
					</div>
					<div class="card-body">
						<form action="createEmpdetails" method="post">
							<div class= "row">
								<div class="col">
									<label>Enter Your company Name</label>
									<input type="text" name="compname" class="form-control">
								</div>
								<div class="col">
									<label>Enter Your Employee Code</label>
									<input type="text" name="empcode" class="form-control">
								</div>
								<div class="col">
									<label>Enter Your Full Name</label>
									<input type="text" name="empname" class="form-control">
								</div>
								<div class="col">
									<label>Enter Your Date of Birth</label>
									<input type="date" name="dob" class="form-control">
								</div>
							</div>
							
							<div class= "row">
								<div class="col">
									<label>Enter Your Date of Joining</label>
									<input type="date" name="doj" class="form-control">
								</div>
								<div class="col">
								      <label>Select Your Gender</label>
								      <select id="gender" class="form-control" name="gender">
								        <option selected>Choose...</option>
								        <option value="male">Male</option>
								        <option value="female">Female</option>
								      </select>
								 </div>
								 
								 <div class="col">
								      <label>Select Your Blood Group</label>
								      <select id="bloodgroup" class="form-control" name="bloodgroup">
								        <option selected>Choose...</option>
								        <option value="O negative">O negative</option>
								        <option value="O positive">O positive</option>
								        <option value="A negative">A negative</option>
								        <option value="A positive">A positive</option>
								        <option value="B negative">B negative</option>
								        <option value="B positive">B positive</option>
								        <option value="AB negative">AB negative</option>
								        <option value="AB positive">AB positive</option>
								      </select>
								 </div>
								<div class="col">
									<label>Enter Your Nationality</label>
									<input type="text" name="nationality" class="form-control">
								</div>
							</div>
							
							
							<div class= "row">
								<div class="col">
									<label>Enter Your Religion</label>
									<input type="text" name="religion" class="form-control">
								</div>
								<div class="col">
								      <label>Select Your Joining Location</label>
								      <select id="location" class="form-control" name="location">
								        <option selected>Choose...</option>
								        <option value="mumbai">Mumbai</option>
								        <option value="ahmedabad">Ahmedabad</option>
								        <option value="Bangalore">Bangalore</option>
								        <option value="Chennai">Chennai</option>
								        <option value="Delhi">Delhi</option>
								        <option value="Hyderabad">Hyderabad</option>
								        <option value="IFSC Gandhinagar">IFSC Gandhinagar</option>
								        <option value="Jaipur">Jaipur</option>
								        <option value="Pune">Pune</option>
								      </select>
								 </div>
								<div class="col">
									<label>Enter Your Official Email</label>
									<input type="text" name="empemail" class="form-control">
								</div>
								<div class="col">
									<label>Enter Your Personal Email</label>
									<input type="text" name="personalemail" class="form-control">
								</div>
							</div>
							
							<div class= "row">
								<div class="col">
									<label>Enter Your Department</label>
									<input type="text" name="deptname" class="form-control">
								</div>
								<div class="col">
									<label>Enter Your Designation</label>
									<input type="text" name="desig" class="form-control">
								</div>
								<div class="col">
									<label>Enter Your Reporting Manager</label>
									<input type="text" name="rm" class="form-control">
								</div>
								<div class="col">
									<label>Enter Your Education 1</label>
									<input type="text" name="ssc" class="form-control">
								</div>
							</div>
							
							
							<div class= "row">
								<div class="col">
									<label>Enter Your Education 2</label>
									<input type="text" name="hsc" class="form-control">
								</div>
								<div class="col">
									<label>Enter Your Education 3</label>
									<input type="text" name="graduation" class="form-control">
								</div>
								<div class="col">
									<label>Enter Your Education 4</label>
									<input type="text" name="master" class="form-control">
								</div>
								<div class="col">
									<label>Enter Your Education 5</label>
									<input type="text" name="other" class="form-control">
								</div>
							</div>
							
							
							<div class= "row">
								<div class="col">
									<label>Enter Your Additional Courses</label>
									<input type="text" name="courses" class="form-control">
								</div>
								<div class="col">
									<label>Enter Your Current Address</label>
									<input type="text" name="caddress" class="form-control">
								</div>
								<div class="col">
									<label>Enter Your Permanent Address</label>
									<input type="text" name="paddress" class="form-control">
								</div>
								<div class="col">
									<label> Previous Company Name</label>
									<input type="text" name="xcompnay" class="form-control">
								</div>
							</div>
							
							
							<div class= "row">
								<div class="col">
									<label>Previous Company Designation</label>
									<input type="text" name="pcdesign" class="form-control">
								</div>
								<div class="col">
									<label>Previous Company CTC</label>
									<input type="text" name="pcctc" class="form-control">
								</div>
								<div class="col">
									<label>Enter Your Previous Experience</label>
									<input type="text" name="preexp" class="form-control">
								</div>
								<div class="col">
									<label> Enter Beacon Experience</label>
									<input type="text" name="btlexp" class="form-control">
								</div>
							</div>
							
							<div class= "row">
								<div class="col">
									<label>Enter Your Total Experience</label>
									<input type="text" name="totexp" class="form-control">
								</div>
								<div class="col">
									<label>Enter your Aadhar Card Details</label>
									<input type="text" name="aadhar" class="form-control">
								</div>
								<div class="col">
									<label>Enter Your Pan Card Details</label>
									<input type="text" name="pan" class="form-control">
								</div>
								<div class="col">
									<label> Enter your Bank Name</label>
									<input type="text" name="bankname" class="form-control">
								</div>
							</div>
							
							<div class= "row">
								<div class="col">
									<label>Enter Your Account Number</label>
									<input type="text" name="accountno" class="form-control">
								</div>
								<div class="col">
									<label>Enter Your Bank IFSC details</label>
									<input type="text" name="ifsc" class="form-control">
								</div>
								<div class="col">
									<label>Enter Number of Dependents</label>
									<input type="text" name="depts" class="form-control">
								</div>
								<div class="col">
									<label> Dependent 1 Name and Age</label>
									<input type="text" name="depts1" class="form-control">
								</div>
							</div>
							
							
							<div class= "row">
								<div class="col">
									<label>Dependent 2 Name and Age</label>
									<input type="text" name="depts2" class="form-control">
								</div>
								<div class="col">
									<label>Dependent 3 Name and Age</label>
									<input type="text" name="depts3" class="form-control">
								</div>
								<div class="col">
									<label>Dependent 4 Name and Age</label>
									<input type="text" name="depts4" class="form-control">
								</div>
								<div class="col">
									<label> Dependent 5 Name and Age</label>
									<input type="text" name="depts5" class="form-control">
								</div>
							</div>
							
							<div class= "row">
								<div class="col">
									<label>Dependent 6 Name and Age</label>
									<input type="text" name="depts6" class="form-control">
								</div>
								<div class="col">
									<label>Emergency Contact Name</label>
									<input type="text" name="emgncyname" class="form-control">
								</div>
								<div class="col">
									<label>Emergency Contact Relation</label>
									<input type="text" name="emgncyrel" class="form-control">
								</div>
								<div class="col">
									<label> Emergency Contact Phone Number</label>
									<input type="text" name="emgncycon" class="form-control">
								</div>
							</div>
							
							<div class= "row">
								<div class="col">
									<label>Enter Your UAN Number</label>
									<input type="text" name="una" class="form-control">
								</div>
								<div class="col">
									<label>Enter Your PF Number</label>
									<input type="text" name="pf" class="form-control">
								</div>
								<div class="col">
									<label>Enter Your ESIC Number</label>
									<input type="text" name="esic" class="form-control">
								</div>
								<div class="col">
									
								</div>
							</div>
							<div class="col" style = "margin-top:10px; text-align:center;">
								<button class="btn btn-primary btn-sm float-end" >Submit</button>
							</div>
							
						</form> 
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
</div>
 <!-- JAVASCRIPT -->
        <script src="assets/libs/jquery/jquery.min.js"></script>
        <script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/libs/metismenu/metisMenu.min.js"></script>
        <script src="assets/libs/simplebar/simplebar.min.js"></script>
        <script src="assets/libs/node-waves/waves.min.js"></script>

        <!-- apexcharts -->
        <script src="assets/libs/apexcharts/apexcharts.min.js"></script>

        <script src="assets/js/pages/dashboard.init.js"></script>

        <script src="assets/js/app.js"></script>
</body>
</html>