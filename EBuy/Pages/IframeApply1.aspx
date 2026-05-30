<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IframeApply1.aspx.cs" Inherits="EBuy.Pages.IframeApply1" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link rel="stylesheet" type="text/css" href="../Assets/css/register.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&family=Roboto+Mono:wght@100;200;300;400;500;600;700&display=swap" rel="stylesheet" />
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
    <!-- Bootstrap 4 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
    <!-- DataTables Core -->
    <link rel="stylesheet" href="https://cdn.datatables.net/2.0.8/css/dataTables.dataTables.min.css" />
    <!-- DataTables Bootstrap 4 -->
    <link rel="stylesheet" href="https://cdn.datatables.net/2.0.8/css/dataTables.bootstrap4.min.css" />
    <!-- DataTables Buttons -->
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/3.0.2/css/buttons.bootstrap4.min.css" />
    <!-- DataTables Responsive -->
    <link rel="stylesheet" href="https://cdn.datatables.net/responsive/3.0.2/css/responsive.bootstrap4.min.css" />
    <!-- DataTables SearchPanes -->
    <link rel="stylesheet" href="https://cdn.datatables.net/searchpanes/2.3.1/css/searchPanes.dataTables.min.css" />
    <link rel="stylesheet" href="https://cdn.datatables.net/searchpanes/2.3.1/css/searchPanes.bootstrap4.min.css" />
    <!-- DataTables Select -->
    <link rel="stylesheet" href="https://cdn.datatables.net/select/2.0.3/css/select.bootstrap4.min.css" />
    <!-- DataTables stateRestore -->
    <link href="https://cdn.datatables.net/staterestore/1.4.3/css/stateRestore.dataTables.min.css" rel="stylesheet" />
    <!-- Select 2 Dropdown -->
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@ttskch/select2-bootstrap4-theme@x.x.x/dist/select2-bootstrap4.min.css" />
    <!-- Datepicker -->
    <link href='https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/ui-lightness/jquery-ui.css' rel='stylesheet' />
    <!-- Switch -->
    <link href="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/css/bootstrap4-toggle.min.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <!-- Back Button and Heading Section -->
        <div class="container-fluid justify-content-between p-4">
            <div class="row">
                <div class="col-md-4 d-flex justify-content-start align-items-center">
                    <a href="Index.aspx" style="text-decoration: none;">
                        <i class="fa-solid fa-arrow-left fa-lg back-icon"></i><span class="ml-2 text-dark">Go to home</span>
                    </a>
                </div>
                <div class="col-md-4 d-flex justify-content-center align-items-center">
                    <p class="h2">User Register</p>
                </div>
                <div class="col-md-4 d-flex justify-content-end align-items-center">
                    <input id="pageSwitch" type="checkbox" data-toggle="toggle" data-on="Admin" data-off="User" data-onstyle="primary" data-offstyle="light" data-style="ios" />
                </div>
            </div>
        </div>
        <div class="container-fluid mt-3">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item active" aria-current="page"><a href="Index.aspx">Home</a></li>
                    <li class="breadcrumb-item"><a href="IframeApply1.aspx">User Register</a></li>
                    <li class="breadcrumb-item"><a href="DatepickerSelect22.aspx">Admin Register</a></li>
                    <li class="breadcrumb-item"><a href="Categories.aspx">Category</a></li>
                    <li class="breadcrumb-item"><a href="ViewProduct.aspx">Product</a></li>
                    <li class="breadcrumb-item active"><a href="checkout.aspx">Checkout</a></li>
                </ol>
            </nav>
        </div>
        <!-- Accordion Section for Modal Form and Table -->
        <div class="container-fluid p-2">
            <div class="container-fluid">
                <div class="accordion" id="userRegisterAccordion">
                    <!-- Card for Modal Form -->
                    <div class="card shadow-sm">
                        <div class="card-header bg-info d-flex justify-content-center align-items-center p-3" id="modalRegisterHeading">
                            <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#registerModal">
                                <i class="fa-solid fa-plus mr-1"></i>
                                Register
                            </button>
                        </div>
                        <!-- Modal Form for User Registration -->
                        <div class="modal fade" id="registerModal" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-hidden="true">
                            <div class="modal-dialog modal-xl modal-dialog-centered">
                                <div class="modal-content border-0 shadow">
                                    <div class="modal-header bg-info text-white">
                                        <h5 class="modal-title">Register User</h5>
                                        <button type="button" class="close text-white" data-dismiss="modal">
                                            <span>&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body p-4">
                                        <!-- Firstname and Lastname -->
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="input-group mb-2">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">Firstname</span>
                                                    </div>
                                                    <input type="text" class="form-control" id="modalFname" placeholder="Enter firstname" />
                                                    <small class="text-danger error-msg w-100 mt-1"></small>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="input-group mb-2">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">Lastname</span>
                                                    </div>
                                                    <input type="text" class="form-control" id="modalLname" placeholder="Enter lastname" />
                                                    <small class="text-danger error-msg w-100 mt-1"></small>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Gender and DOB -->
                                        <div class="row align-items-center">
                                            <div class="col-md-6 d-flex align-items-center">
                                                <label class="mb-0 mt-n4 mr-3 me-3 font-weight-bold text-nowrap">Gender :</label>
                                                <div class="w-100">
                                                    <div class="d-flex align-items-center flex-nowrap">
                                                        <div class="input-group mb-2 mr-3 me-2">
                                                            <div class="input-group-prepend">
                                                                <div class="input-group-text">
                                                                    <input type="radio" name="gender" id="male" value="Male" />
                                                                </div>
                                                            </div>
                                                            <label class="form-control mb-0" for="male">Male</label>
                                                        </div>
                                                        <div class="input-group mb-2">
                                                            <div class="input-group-prepend">
                                                                <div class="input-group-text">
                                                                    <input type="radio" name="gender" id="female" value="Female" />
                                                                </div>
                                                            </div>
                                                            <label class="form-control mb-0" for="female">Female</label>
                                                        </div>
                                                    </div>
                                                    <small class="text-danger error-msg d-block w-100 mt-1"></small>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="input-group mb-2">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">DOB</span>
                                                    </div>
                                                    <input type="text" class="form-control" id="modalDob" placeholder="Enter Birthday" />
                                                </div>
                                                <small class="text-danger error-msg d-block w-100 mt-1"></small>
                                            </div>
                                        </div>
                                        <!-- Membership Dates -->
                                        <div class="row align-items-center">
                                            <div class="col-md-6 d-flex align-items-center">
                                                <label for="modalStartDate" class="font-weight-bold mr-3 mt-n4 mb-0 text-nowrap">Membership:</label>
                                                <div class="w-100">
                                                    <div class="input-group mb-2">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text">Start</span>
                                                        </div>
                                                        <input type="text" class="form-control" id="modalStartDate" placeholder="Start Date" readonly="readonly" />
                                                    </div>
                                                    <small class="text-danger error-msg d-block w-100 mt-1"></small>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="input-group mb-2">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">End</span>
                                                    </div>
                                                    <input type="text" class="form-control" id="modalEndDate" placeholder="End Date" />
                                                </div>
                                                <small class="text-danger error-msg d-block w-100 mt-1"></small>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6">
                                                <!-- Email Address -->
                                                <div class="input-group mb-2">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text px-4">Email Address</span>
                                                    </div>
                                                    <input type="email" class="form-control" id="modalEmail" placeholder="Enter email address" />
                                                    <small class="text-danger error-msg w-100 mt-1"></small>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <!-- Contact Number -->
                                                <div class="input-group mb-2">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text px-3">Contact Number</span>
                                                    </div>
                                                    <input type="tel" class="form-control" minlength="1" maxlength="10" id="modalPhone" placeholder="Enter contact number" />
                                                    <small class="text-danger error-msg w-100 mt-1"></small>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <!-- Password -->
                                                <div class="input-group mb-2">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text px-5">Password</span>
                                                    </div>
                                                    <input type="password" class="form-control" id="modalPassword" placeholder="Enter password" />
                                                    <div class="input-group-append">
                                                        <span class="input-group-text togglePassword">
                                                            <i class="fa-solid fa-eye"></i>
                                                        </span>
                                                    </div>
                                                    <small class="text-danger error-msg w-100 mt-1"></small>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <!-- Confirm Password -->
                                                <div class="input-group mb-2">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">Confirm Password</span>
                                                    </div>
                                                    <input type="password" class="form-control" id="modalConfirmPassword" placeholder="Confirm password" />
                                                    <div class="input-group-append">
                                                        <span class="input-group-text togglePassword">
                                                            <i class="fa-solid fa-eye"></i>
                                                        </span>
                                                    </div>
                                                    <small class="text-danger error-msg w-100 mt-1"></small>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Country, State and City -->
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="input-group mb-2">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">Country</span>
                                                    </div>
                                                    <select class="form-control" id="modalCountry">
                                                        <option value="">Select Country</option>
                                                    </select>
                                                </div>
                                                <small class="text-danger error-msg w-100 mt-n1 mb-1 d-block"></small>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="input-group mb-2">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">State</span>
                                                    </div>
                                                    <select class="form-control" id="modalState">
                                                        <option value="">Select State</option>
                                                    </select>
                                                </div>
                                                <small class="text-danger error-msg w-100 mt-n1 mb-1 d-block"></small>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="input-group mb-2">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">City</span>
                                                    </div>
                                                    <select class="form-control" id="modalCity">
                                                        <option value="">Select City</option>
                                                    </select>
                                                </div>
                                                <small class="text-danger error-msg w-100 mt-n1 mb-1 d-block"></small>
                                            </div>
                                        </div>
                                        <!-- Show Password Checkbox -->
                                        <!--- <div class="form-check mt-n1 mb-2">
                                            <input type="checkbox" class="form-check-input" id="modalShowPassword" />
                                            <label class="form-check-label" for="modalShowPassword">Show Password</label>
                                        </div> --->
                                        <!-- Languages Known -->
                                        <div>
                                            <div class="d-flex align-items-center flex-nowrap mb-2">
                                                <label class="mb-0 mr-3 font-weight-bold text-nowrap">Languages Known :</label>
                                                <div class="input-group mr-3">
                                                    <div class="input-group-prepend">
                                                        <div class="input-group-text">
                                                            <input type="checkbox" name="langcheck" id="engCheck" value="English" />
                                                        </div>
                                                    </div>
                                                    <label class="form-control mb-0" for="engCheck">English</label>
                                                </div>
                                                <div class="input-group mr-3">
                                                    <div class="input-group-prepend">
                                                        <div class="input-group-text">
                                                            <input type="checkbox" name="langcheck" id="tamCheck" value="Tamil" />
                                                        </div>
                                                    </div>
                                                    <label class="form-control mb-0" for="tamCheck">Tamil</label>
                                                </div>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <div class="input-group-text">
                                                            <input type="checkbox" name="langcheck" id="hinCheck" value="Hindi" />
                                                        </div>
                                                    </div>
                                                    <label class="form-control mb-0" for="hinCheck">Hindi</label>
                                                </div>
                                            </div>
                                            <small class="text-danger error-msg d-block mt-1"></small>
                                        </div>
                                        <!-- Select 2 Dropdown for Interests -->
                                        <div class="input-group mb-2">
                                            <div class="input-group-prepend">
                                                <label class="input-group-text" for="modalChoice">Interest</label>
                                            </div>
                                            <select class="mySelect custom-select js-example-responsive" id="modalChoice" name="select1">
                                            </select>
                                            <small class="text-danger error-msg w-100 mt-1"></small>
                                        </div>
                                    </div>
                                    <!-- Modal Footer with Register and Close Buttons -->
                                    <div class="modal-footer border-0 flex-column">
                                        <div class="d-flex justify-content-center align-items-center">
                                            <button type="button" class="btn btn-secondary mr-2" data-dismiss="modal">Close</button>
                                            <button type="button" class="btn btn-success px-4" id="modalSubmitBtn">Register</button>
                                        </div>
                                        <div class="text-center">
                                            <span class="text-muted">Already have an account ?</span>
                                            <a href="#" class="font-weight-bold text-success ml-1">Login</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Card for Modal Form Table -->
                    <div class="card shadow-sm">
                        <div class="card-header bg-info p-0" id="modalTableHeading">
                            <button class="btn btn-block text-left text-white p-3" type="button" data-toggle="collapse" data-target="#modalUserTableCollapse" aria-expanded="false" aria-controls="modalUserTableCollapse">
                                Modal Form User Details
                            </button>
                        </div>
                        <div id="modalUserTableCollapse" class="collapse" aria-labelledby="modalTableHeading" data-parent="#userRegisterAccordion">
                            <div class="card-body">
                                <!-- Table to display user details entered through modal form -->
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover table-striped display nowrap" id="modalUserTable" style="width: 100% !important;">
                                        <thead class="thead-dark">
                                        </thead>
                                        <tbody id="modalTableBody" class="text-center"></tbody>
                                    </table>
                                </div>
                                <!-- user choice display on image -->
                                <div class="row">
                                    <div class="col-md-12 carodiv">
                                        <div id="userchoice" class="carousel slide" data-ride="carousel">
                                            <div class="caroImage">
                                            </div>
                                            <button class="carousel-control-prev d-none" type="button" data-target="#userchoice" data-slide="prev">
                                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                <span class="sr-only">Previous</span>
                                            </button>
                                            <button class="carousel-control-next d-none" type="button" data-target="#userchoice" data-slide="next">
                                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                <span class="sr-only">Next</span>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                </div>
                            </div>
                        </div>

                        <!-- Modal for Editing User Details -->
                        <div class="modal fade" id="editUserModal" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-hidden="true">
                            <div class="modal-dialog modal-xl modal-dialog-centered">
                                <div class="modal-content border-0 shadow">
                                    <div class="modal-header bg-info text-white">
                                        <h5 class="modal-title">Update User Details</h5>
                                        <button type="button" class="close text-white" data-dismiss="modal">
                                            <span>&times;</span>
                                        </button>
                                    </div>

                                    <div class="modal-body p-4">
                                        <input type="hidden" id="editIndex" />
                                        <!-- Edit Firstname, Lastname Fields -->
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="input-group mb-2">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">Firstname</span>
                                                    </div>
                                                    <input type="text" class="form-control editInput" id="editFname" placeholder="Enter firstname" />
                                                    <small class="text-danger error-msg w-100 mt-1"></small>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="input-group mb-2">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">Lastname</span>
                                                    </div>
                                                    <input type="text" class="form-control editInput" id="editLname" placeholder="Enter lastname" />
                                                    <small class="text-danger error-msg w-100 mt-1"></small>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Edit Gender and DOB Fields -->
                                        <div class="row align-items-center">
                                            <div class="col-md-6 d-flex align-items-center">
                                                <label class="mb-0 mt-n4 mr-3 me-3 font-weight-bold text-nowrap">Gender :</label>
                                                <div class="w-100">
                                                    <div class="d-flex align-items-center flex-nowrap">
                                                        <div class="input-group mb-2 mr-3 me-2">
                                                            <div class="input-group-prepend">
                                                                <div class="input-group-text">
                                                                    <input type="radio" name="gender" id="editMale" value="Male" />
                                                                </div>
                                                            </div>
                                                            <label class="form-control mb-0" for="editMale">Male</label>
                                                        </div>
                                                        <div class="input-group mb-2">
                                                            <div class="input-group-prepend">
                                                                <div class="input-group-text">
                                                                    <input type="radio" name="gender" id="editFemale" value="Female" />
                                                                </div>
                                                            </div>
                                                            <label class="form-control mb-0" for="editFemale">Female</label>
                                                        </div>
                                                    </div>
                                                    <small class="text-danger error-msg d-block w-100 mt-1"></small>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="input-group mb-2">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">DOB</span>
                                                    </div>
                                                    <input type="text" class="form-control editInput" id="editModalDob" placeholder="Enter Birthday" />
                                                </div>
                                                <small class="text-danger error-msg d-block w-100 mt-1"></small>
                                            </div>
                                        </div>

                                        <!-- Edit Membership Start and End Dates -->
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="d-flex align-items-center mb-2">
                                                    <label for="editModalStartDate" class="font-weight-bold mr-2 mb-0" style="white-space: nowrap;">Membership:</label>
                                                    <div class="input-group">
                                                        <div class="input-group-prepend">
                                                            <span class="input-group-text">Start</span>
                                                        </div>
                                                        <input type="text" class="form-control" id="editModalStartDate" placeholder="Start Date" readonly="readonly" />
                                                    </div>
                                                </div>
                                                <small class="text-danger error-msg d-block w-100 mt-1"></small>
                                            </div>

                                            <!-- End Date -->
                                            <div class="col-md-6">
                                                <div class="input-group mb-2">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">End</span>
                                                    </div>
                                                    <input type="text" class="form-control" id="editModalEndDate" placeholder="End Date" />
                                                </div>
                                                <small class="text-danger error-msg d-block w-100 mt-1"></small>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <!-- Edit Email Address -->
                                                <div class="input-group mb-2">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">Email Address</span>
                                                    </div>
                                                    <input type="email" class="form-control editInput" id="editEmail" placeholder="Enter email address" />
                                                    <small class="text-danger error-msg w-100 mt-1"></small>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <!-- Edit Contact Number -->
                                                <div class="input-group mb-2">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">Contact Number</span>
                                                    </div>
                                                    <input type="tel" class="form-control editInput" id="editPhone" placeholder="Enter contact number" minlength="1" maxlength="10" />
                                                    <small class="text-danger error-msg w-100 mt-1"></small>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <!-- Edit Password -->
                                                <div class="input-group mb-2">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">Password</span>
                                                    </div>
                                                    <input type="password" class="form-control editInput" id="editPassword" placeholder="Enter password" />
                                                    <div class="input-group-append">
                                                        <button type="button" class="input-group-text togglePassword">
                                                            <i class="fa-solid fa-eye"></i>
                                                        </button>
                                                    </div>
                                                    <small class="text-danger error-msg w-100 mt-1"></small>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <!-- Edit Confirm Password -->
                                                <div class="input-group mb-2">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">Confirm Password</span>
                                                    </div>
                                                    <input type="password" class="form-control editInput" id="editConfirmPassword" placeholder="Confirm password" />
                                                    <div class="input-group-append">
                                                        <button type="button" class="input-group-text togglePassword">
                                                            <i class="fa-solid fa-eye"></i>
                                                        </button>
                                                    </div>
                                                    <small class="text-danger error-msg w-100 mt-1"></small>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Edit Country, State and City -->
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">Country</span>
                                                    </div>
                                                    <select class="form-control" id="editModalCountry">
                                                        <option value="">Select Country</option>
                                                    </select>
                                                </div>
                                                <small class="text-danger error-msg w-100 mt-1 d-block"></small>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">State</span>
                                                    </div>
                                                    <select class="form-control" id="editModalState">
                                                        <option value="">Select State</option>
                                                    </select>
                                                </div>
                                                <small class="text-danger error-msg w-100 mt-1 d-block"></small>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">City</span>
                                                    </div>
                                                    <select class="form-control" id="editModalCity">
                                                        <option value="">Select City</option>
                                                    </select>
                                                </div>
                                                <small class="text-danger error-msg w-100 mt-1 d-block"></small>
                                            </div>
                                        </div>

                                        <!-- Edit Show Password Checkbox -->

                                        <!---<div class="form-check mt-n4 mb-3">
                                        <input type="checkbox" class="form-check-input" id="editModalShowPassword" />
                                        <label class="form-check-label" for="editModalShowPassword">Show Password</label>
                                    </div>----->

                                        <!-- Edit Languages Known -->
                                        <div>
                                            <div class="d-flex align-items-center flex-nowrap mb-2">
                                                <label class="mb-0 mr-3 font-weight-bold text-nowrap">Languages Known :</label>
                                                <div class="input-group mr-3">
                                                    <div class="input-group-prepend">
                                                        <div class="input-group-text">
                                                            <input type="checkbox" name="editLangcheck" id="editEngCheck" value="English" />
                                                        </div>
                                                    </div>
                                                    <label class="form-control mb-0" for="editEngCheck">English</label>
                                                </div>
                                                <div class="input-group mr-3">
                                                    <div class="input-group-prepend">
                                                        <div class="input-group-text">
                                                            <input type="checkbox" name="editLangcheck" id="editTamCheck" value="Tamil" />
                                                        </div>
                                                    </div>
                                                    <label class="form-control mb-0" for="editTamCheck">Tamil</label>
                                                </div>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <div class="input-group-text">
                                                            <input type="checkbox" name="editLangcheck" id="editHinCheck" value="Hindi" />
                                                        </div>
                                                    </div>
                                                    <label class="form-control mb-0" for="editHinCheck">Hindi</label>
                                                </div>
                                            </div>
                                            <small class="text-danger error-msg d-block mt-1"></small>
                                        </div>
                                        <!-- Edit Intrest Select 2 Dropdown -->
                                        <div class="input-group mb-2">
                                            <div class="input-group-prepend">
                                                <label class="input-group-text" for="editModalChoice">Interest</label>
                                            </div>
                                            <select class="mySelect custom-select js-example-responsive" id="editModalChoice" name="select1">
                                            </select>
                                            <small class="text-danger error-msg w-100 mt-1"></small>
                                        </div>
                                    </div>
                                    <!-- Modal Footer with Update, Delete and Close Buttons -->
                                    <div class="modal-footer border-0 flex-column mt-n4">
                                        <div class="d-flex justify-content-center align-items-center mb-3">
                                            <button type="button" class="btn btn-secondary mr-2" data-dismiss="modal">Close</button>
                                            <button type="button" class="btn btn-danger mr-2" id="deleteUserBtn">Delete</button>
                                            <button type="button" class="btn btn-success" id="updateUserBtn">Update</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Modal for product wiki -->
                        <div class="modal fade" id="wikiModal" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-hidden="true">
                            <div class="modal-dialog modal-xl modal-dialog-centered">
                                <div class="modal-content border-0 shadow">
                                    <div class="modal-header bg-info text-white">
                                        <h5 class="modal-title"><i class="fa-solid fa-list fa-sm light-icon mr-3"></i>Category Detail</h5>
                                        <button type="button" class="close text-white" data-dismiss="modal">
                                            <span>&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body p-4">
                                        <div class="embed-responsive embed-responsive-21by9">
                                            <iframe class="embed-responsive-item" id="prodview" allowfullscreen="allowfullscreen"></iframe>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <!-- SweetAlert2 -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <!-- JSZip -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
    <!-- pdfMake -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.2.7/vfs_fonts.js"></script>
    <!-- DataTables Core -->
    <script src="https://cdn.datatables.net/2.0.8/js/dataTables.min.js"></script>
    <!-- DataTables Bootstrap 4 -->
    <script src="https://cdn.datatables.net/2.0.8/js/dataTables.bootstrap4.min.js"></script>
    <!-- DataTables Buttons -->
    <script src="https://cdn.datatables.net/buttons/3.0.2/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/3.0.2/js/buttons.bootstrap4.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/3.0.2/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/3.0.2/js/buttons.print.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/3.0.2/js/buttons.colVis.min.js"></script>
    <!-- DataTables Responsive -->
    <script src="https://cdn.datatables.net/responsive/3.0.2/js/dataTables.responsive.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/3.0.2/js/responsive.bootstrap4.min.js"></script>
    <!-- DataTables Select -->
    <script src="https://cdn.datatables.net/select/2.0.3/js/dataTables.select.min.js"></script>
    <script src="https://cdn.datatables.net/select/2.0.3/js/select.bootstrap4.min.js"></script>
    <!-- DataTables SearchPanes -->
    <script src="https://cdn.datatables.net/searchpanes/2.3.1/js/dataTables.searchPanes.min.js"></script>
    <script src="https://cdn.datatables.net/searchpanes/2.3.1/js/searchPanes.bootstrap4.min.js"></script>
    <!-- SearchPanes Button -->
    <script src="https://cdn.datatables.net/buttons/3.0.2/js/buttons.searchPanes.min.js"></script>
    <!-- DataTables stateRestore -->
    <script src="https://cdn.datatables.net/staterestore/1.4.3/js/dataTables.stateRestore.min.js"></script>
    <!-- Datepicker UI Dropdown -->
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <!-- Select 2 Dropdown -->
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <!-- switch -->
    <script src="https://cdn.jsdelivr.net/gh/gitbrent/bootstrap4-toggle@3.6.1/js/bootstrap4-toggle.min.js"></script>

    <script>
        $(document).ready(function () {
            // ---------------------------------------------------------------------------Hoisting---------------------------------------------------------------------------
            // ---------------------------------------------------------------------Initial Declarations---------------------------------------------------------------------
            //table variable
            let table = null;
            //variable to store index of user being edited
            let pendingEditId = null;
            //local storage declaration
            let userListmodal = JSON.parse(localStorage.getItem("userdetailsModal")) || [];
            // validation rules
            const EDIT_RULES = {
                editFname: { required: "First name is required!", pattern: /^[A-Za-z]+(['][A-Za-z]+)*'?$/, patternMsg: "Only alphabets and ' allowed!", noSpaces: true },
                editLname: { required: "Last name is required!", pattern: /^[A-Za-z]+(['][A-Za-z]+)*'?$/, patternMsg: "Only alphabets and ' allowed!", noSpaces: true },
                editModalDob: { required: "DOB is required!" },
                editModalEndDate: { required: "End Date is required!" },
                editEmail: { required: "Email is required!", pattern: /^[^\s@]+@[^\s@]+\.[^\s@]+$/, patternMsg: "Enter valid email!", noSpaces: true },
                editPhone: { required: "Phone number is required!", pattern: /^[0-9]{10}$/, patternMsg: "Enter valid 10 digit number!" },
                editPassword: { required: "Password is required!", pattern: /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@!$%&]).{8,}$/, patternMsg: "Enter a valid password!", noSpaces: true },
                editConfirmPassword: { required: "Confirm password is required!", match: "editPassword", matchMsg: "Password doesn't match!", noSpaces: true },
                editModalCountry: { required: "Country is required!" },
                editModalState: { required: "State is required!" },
                editModalCity: { required: "City is required!" },
            };
            // group validation rules
            const EDIT_GROUP_RULES = { gender: { required: "Gender is required!" }, editLangcheck: { required: "Please select the languages known!" } };
            // keyboard input restrictions
            const ALLOWED_KEYS = new Set(["Backspace", "Delete", "ArrowLeft", "ArrowRight", "Tab", "Enter"]);
            //Location state data
            const state = {
                India: ["TamilNadu", "Kerala", "Karnataka"], France: ["Occitanie", "Corsica", "Normandy"], Italy: ["Sicily", "Sardinia", "Calabria"]
            };
            //Location city data
            const city = {
                TamilNadu: ["Chennai", "Coimbatore", "Madurai"], Kerala: ["Thiruvananthapuram", "Kochi", "Kozhikode"],
                Karnataka: ["Bengaluru", "Mysuru", "Mangaluru"], Occitanie: ["Toulouse", "Montpellier", "Nîmes"],
                Corsica: ["Ajaccio", "Bastia", "Porto-Vecchio"], Normandy: ["Rouen", "Caen", "Le Havre"],
                Sicily: ["Palermo", "Catania", "Messina"], Sardinia: ["Cagliari", "Sassari", "Olbia"],
                Calabria: ["Reggio Calabria", "Catanzaro", "Lamezia Terme"]
            };
            //interest List
            const userInt =
            {
                "interests": [
                    { "text": "Electronics", "children": [{ "id": "1", "text": "Smart Phones" }, { "id": "2", "text": "Laptops" }] },
                    { "text": "Fashion", "children": [{ "id": "3", "text": "Shirts" }, { "id": "4", "text": "Shoes" }] },
                    { "text": "Home Appliances", "children": [{ "id": "5", "text": "Kitchen Appliances" }, { "id": "6", "text": "Cleaning Appliances" }] }
                ]
            };
            //error message
            const showerror = (message) => {
                Swal.fire({ icon: "error", title: "Error", text: message });
            };
            //success message
            const successmsg = (message) => {
                Swal.fire({ icon: "success", title: "Thank you", text: message });
            };
            //loction detail storage
            const showStates = (countryName) => countryName ? (state[countryName] || []) : [];
            const showCities = (stateName) => stateName ? (city[stateName] || []) : [];
            //table structure redraw
            const rebuildTableHeader = () => {
                $("#modalUserTable thead").empty().append(`
                    <tr>
                        <th class="text-center align-middle"></th>
                        <th class="text-center align-middle">Name</th>
                        <th class="text-center align-middle">Gender</th>
                        <th class="text-center align-middle">DOB</th>
                        <th class="text-center align-middle">Email Address</th>
                        <th class="text-center align-middle">Contact No.</th>
                        <th class="text-center align-middle">Languages</th>
                        <th class="text-center align-middle">Password</th>
                        <th class="text-center align-middle">Action</th>
                        <th class="text-center align-middle">Interest</th>
                    </tr>
                    
                `);
            };
            // date picker initialization
            $('#registerModal').on('shown.bs.modal', function () {
                $("#modalStartDate").val(getTodayFormatted());
                if ($.fn.datepicker) {
                    $("#modalDob").datepicker("destroy").datepicker({
                        dateFormat: 'dd-mm-yy',
                        changeMonth: true,
                        changeYear: true,
                        yearRange: "-50:-18",
                        maxDate: "-18Y",
                        minDate: "-50Y",
                        onSelect: function () {
                            $(this).trigger("input");
                        }
                    });

                    $("#modalEndDate").datepicker("destroy").datepicker({
                        dateFormat: 'dd-mm-yy',
                        changeMonth: true,
                        changeYear: true,
                        minDate: new Date(),
                        maxDate: '+3M',
                        onSelect: function () { $(this).trigger("input"); }
                    });

                } else {
                    console.error("datepicker is not loaded!");
                }
            });
            $("#editUserModal").on("shown.bs.modal", function () {
                if ($.fn.datepicker) {
                    $("#editModalDob").datepicker("destroy").datepicker({
                        dateFormat: 'dd-mm-yy',
                        changeMonth: true,
                        changeYear: true,
                        yearRange: "-50:-18",
                        maxDate: "-18Y",
                        minDate: "-50Y",
                        onSelect: function () {
                            $(this).trigger("input");
                        }
                    });

                    $("#editModalEndDate").datepicker("destroy").datepicker({
                        dateFormat: 'dd-mm-yy',
                        changeMonth: true,
                        changeYear: true,
                        minDate: new Date(),
                        maxDate: '+3M',
                        beforeShow: () => $(".ui-datepicker").css("z-index", 99999),
                        onSelect: function () { $(this).trigger("input"); }
                    });

                } else {
                    console.error("datepicker is not loaded!");
                }
            });
            //Interest select 2 dropdown
            $("#modalChoice").select2({
                theme: 'classic',
                placeholder: "Please choose your interest...",
                allowClear: true,
                width: "90%",
                multiple: true,
                data: userInt.interests,
                dropdownPosition: 'below'
            });
            //show image path data
            const imgPath = {
                "Smart Phones": '../Assets/images/allmobile.png',
                Laptops: '../Assets/images/alllaptop.png',
                Shirts: '../Assets/images/allshirt.png',
                Shoes: '../Assets/images/menshoe.png',
                "Kitchen Appliances": '../Assets/images/allkitchen.png',
                "Cleaning Appliances": '../Assets/images/allhome.png',

            }

            // -------------------------------------------------------------modal show-collapse validation---------------------------------------------------------------------
            // function to reset modal form fields and states
            function resetModal($modal) {
                const isEdit = $modal.attr("id") === "editUserModal";
                $modal.find("input[type='text'], input[type='email'], input[type='tel'], input[type='password']").val("");
                if (isEdit) $modal.find("input[type='hidden']").val("");
                $modal.find("select").val(null).trigger("change.select2");
                $modal.find("input[type='radio'], input[type='checkbox']").prop("checked", false);
                $modal.find("input, select").removeClass("is-valid is-invalid");
                $modal.find(".error-msg").text("").removeClass("text-success").addClass("text-danger");
                const passId = isEdit ? "#editPassword, #editConfirmPassword" : "#modalPassword, #modalConfirmPassword";
                $(passId).attr("type", "password");
                $modal.find(".togglePassword i").removeClass("fa-eye-slash").addClass("fa-eye");
                if (!isEdit) $("#modalShowPassword").prop("checked", false);
                const stateId = isEdit ? "#editModalState" : "#modalState";
                const cityId = isEdit ? "#editModalCity" : "#modalCity";
                $(stateId).html('<option value="">Select State</option>').prop("disabled", true);
                $(cityId).html('<option value="">Select City</option>').prop("disabled", true);
                if (isEdit) pendingEditId = null;
            }
            //reset modal on close and clear pending edit id to avoid accidental edits
            $("#editUserModal, #registerModal").on("hidden.bs.modal", function () {
                resetModal($(this));
            });
            // ensure only one modal or collapse is open at a time to prevent UI conflicts
            $("#registerModal").on("show.bs.modal", function () {
                $("#modalUserTableCollapse").collapse("hide");
                $("#editUserModal.show").modal("hide");
            });
            $("#modalUserTableCollapse").on("show.bs.collapse", function () {
                $("#registerModal.show, #editUserModal.show").modal("hide");
            });
            // Image Carousel control and icon hide
            $('#modalUserTableCollapse').on('hide.bs.collapse', function () {
                $(".carousel-inner").html("");
                $(".carousel-control-prev, .carousel-control-next").hide();
                $("#modalUserTable tbody .showImageBtn i").removeClass("fa-x").addClass("fa-image");
            });
            // -------------------------------------------------------------------Register form validations---------------------------------------------------------------------
            //first name input and no focus validation
            const fnameModalvalidate = () => {
                let isvalid = true;
                const fnameinp = $('#modalFname');
                const fname = fnameinp.val();
                const fnameerror = fnameinp.closest('.col-md-6').find('.error-msg');
                const fnamepattern = /^[A-Za-z]+(['][A-Za-z]+)*'?$/;
                fnameinp.removeClass("is-valid is-invalid");
                if (fname.trim() === "") {
                    fnameerror.text("First name is required!");
                    fnameinp.addClass("is-invalid"); isvalid = false;
                } else if (/\s/.test(fname)) {
                    fnameerror.text("Spaces are not allowed!");
                    fnameinp.addClass("is-invalid"); isvalid = false;
                } else if (!fnamepattern.test(fname)) {
                    fnameerror.text("Only alphabets and apostrophe are allowed!");
                    fnameinp.addClass("is-invalid"); isvalid = false;
                } else {
                    fnameerror.text(""); fnameinp.addClass("is-valid");
                }
                return isvalid;
            };
            const fnameModalnofocus = () => {
                let fnameinp = $('#modalFname');
                if (fnameinp.val().trim() === "") {
                    fnameinp.closest('.col-md-6').find('.error-msg').text("First name is required!");
                    fnameinp.removeClass("is-valid").addClass("is-invalid");
                }
            };
            $("#modalFname").on({ input: fnameModalvalidate, blur: fnameModalnofocus });
            //last name input and no focus validation
            const lnameModalvalidate = () => {
                let isvalid = true;
                let lnameinp = $('#modalLname');
                let lname = lnameinp.val();
                let lnameerror = lnameinp.closest('.col-md-6').find('.error-msg');
                let lnamepattern = /^[A-Za-z]+(['][A-Za-z]+)*'?$/;
                lnameinp.removeClass("is-valid is-invalid");
                if (lname.trim() === "") {
                    lnameerror.text("Last name is required!");
                    lnameinp.addClass("is-invalid"); isvalid = false;
                } else if (/\s/.test(lname)) {
                    lnameerror.text("Spaces are not allowed!");
                    lnameinp.addClass("is-invalid"); isvalid = false;
                } else if (!lnamepattern.test(lname)) {
                    lnameerror.text("Only alphabets, and apostrophe are allowed!");
                    lnameinp.addClass("is-invalid"); isvalid = false;
                } else {
                    lnameerror.text(""); lnameinp.addClass("is-valid");
                }
                return isvalid;
            };
            const lnameModalnofocus = () => {
                let lnameinp = $('#modalLname');
                if (lnameinp.val().trim() === "") {
                    lnameinp.closest('.col-md-6').find('.error-msg').text("Last name is required!");
                    lnameinp.removeClass("is-valid").addClass("is-invalid");
                }
            };
            $("#modalLname").on({ input: lnameModalvalidate, blur: lnameModalnofocus });
            //gender input and no focus validation
            const genderModalvalidate = () => {
                let isvalid = true;
                const genderinp = $('#registerModal input[name="gender"]:checked');
                const gendererror = $('#registerModal input[name="gender"]').closest('.w-100').find('.error-msg');
                $('#registerModal input[name="gender"]').removeClass("is-valid is-invalid");
                if (genderinp.length === 0) {
                    gendererror.text("Please select gender!");
                    $('#registerModal input[name="gender"]').addClass("is-invalid");
                    isvalid = false;
                } else {
                    gendererror.text("");
                    genderinp.addClass("is-valid");
                }
                return isvalid;
            };
            const genderModalnofocus = () => {
                const genderinp = $('#registerModal input[name="gender"]:checked');
                const gendererror = $('#registerModal input[name="gender"]').closest('.w-100').find('.error-msg');
                $('#registerModal input[name="gender"]').removeClass("is-valid is-invalid");
                if (genderinp.length === 0) {
                    gendererror.text("Please select gender!");
                    $('#registerModal input[name="gender"]').addClass("is-invalid");
                } else {
                    gendererror.text("");
                    genderinp.addClass("is-valid");
                }
            };
            $('#registerModal input[name="gender"]').on({ change: genderModalvalidate, blur: genderModalnofocus });
            // dob input and no focus validation
            const dobModalvalidate = () => {
                let isvalid = true;
                const dobinp = $('#modalDob');
                const dob = dobinp.val().trim();
                const doberror = dobinp.closest('.col-md-6').find('.error-msg');
                if (dob === "") {
                    doberror.text("Date of Birth is required!");
                    dobinp.removeClass("is-valid").addClass("is-invalid");
                    isvalid = false;
                } else {
                    doberror.text("");
                    dobinp.removeClass("is-invalid").addClass("is-valid");
                }
                return isvalid;
            };
            const dobModalnofocus = () => {
                const dobinp = $('#modalDob');
                const dob = dobinp.val().trim();
                const doberror = dobinp.closest('.col-md-6').find('.error-msg');
                if (dob === "") {
                    doberror.text("Date of Birth is required!");
                    dobinp.removeClass("is-valid").addClass("is-invalid");
                }
            };
            $("#modalDob").on({ input: dobModalvalidate, blur: dobModalnofocus });
            //Membership Start End Date input and no focus validation
            const getTodayFormatted = () => {
                // debugger;
                const today = new Date();
                const dd = String(today.getDate()).padStart(2, '0');
                const mm = String(today.getMonth() + 1).padStart(2, '0');
                const yyyy = today.getFullYear();
                return `${dd}-${mm}-${yyyy}`;
            };
            const endDateModalvalidate = () => {
                let isvalid = true;
                const enddateinp = $('#modalEndDate');
                const enddate = enddateinp.val().trim();
                const enddateerror = enddateinp.closest('.col-md-6').find('.error-msg');
                if (enddate === "") {
                    enddateerror.text("End Date is required!");
                    enddateinp.removeClass("is-valid").addClass("is-invalid");
                    isvalid = false;
                } else {
                    enddateerror.text("");
                    enddateinp.removeClass("is-invalid").addClass("is-valid");
                }
                return isvalid;
            };
            const endDateModalnofocus = () => {
                const enddateinp = $('#modalEndDate');
                const enddateerror = enddateinp.closest('.col-md-6').find('.error-msg');
                if (enddateinp.val().trim() === "") {
                    enddateerror.text("End Date is required!");
                    enddateinp.removeClass("is-valid").addClass("is-invalid");
                }
            };
            $("#modalEndDate").on({ input: endDateModalvalidate, blur: endDateModalnofocus });
            //email input and no focus validation
            const emailModalvalidate = () => {
                let isvalid = true;
                let emailinp = $('#modalEmail');
                let email = emailinp.val();
                let emailerror = emailinp.closest('.mb-2').find('.error-msg');
                let emailpattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                emailinp.removeClass("is-valid is-invalid");
                if (email.trim() === "") {
                    emailerror.text("Email address is required!");
                    emailinp.addClass("is-invalid"); isvalid = false;
                } else if (/\s/.test(email)) {
                    emailerror.text("Spaces are not allowed!");
                    emailinp.addClass("is-invalid"); isvalid = false;
                } else if (!emailpattern.test(email)) {
                    emailerror.text("Please enter a valid email address!");
                    emailinp.addClass("is-invalid"); isvalid = false;
                } else {
                    emailerror.text(""); emailinp.addClass("is-valid");
                }
                return isvalid;
            };
            const emailModalnofocus = () => {
                let emailinp = $('#modalEmail');
                if (emailinp.val().trim() === "") {
                    emailinp.closest('.mb-2').find('.error-msg').text("Email address is required!");
                    emailinp.removeClass("is-valid").addClass("is-invalid");
                }
            };
            $("#modalEmail").on({ input: emailModalvalidate, blur: emailModalnofocus });
            //phone input, keydown and no focus validation
            const phoneModalvalidate = () => {
                let isvalid = true;
                let phoneinp = $('#modalPhone');
                let phone = phoneinp.val();
                let phoneerror = phoneinp.closest('.mb-2').find('.error-msg');
                let phonepattern = /^[0-9]{10}$/;
                if (phone.trim() === "") {
                    phoneerror.text("Contact number is required!");
                    phoneinp.removeClass("is-valid").addClass("is-invalid"); isvalid = false;
                } else if (!phonepattern.test(phone)) {
                    phoneerror.text("Please enter a valid 10 digit number!");
                    phoneinp.removeClass("is-valid").addClass("is-invalid"); isvalid = false;
                } else {
                    phoneerror.text(""); phoneinp.removeClass("is-invalid").addClass("is-valid");
                }
                return isvalid;
            };
            const phoneModalnofocus = () => {
                let phoneinp = $('#modalPhone');
                if (phoneinp.val().trim() === "") {
                    phoneinp.closest('.mb-2').find('.error-msg').text("Contact number is required!");
                    phoneinp.removeClass("is-valid").addClass("is-invalid");
                }
            };
            $('#modalPhone').on('keydown', function (e) {
                let key = e.key;
                let phoneerror = $(this).closest('.mb-2').find('.error-msg');
                let allowedControls = ['Backspace', 'Delete', 'ArrowLeft', 'ArrowRight', 'Tab', 'Enter'];
                if (allowedControls.includes(key)) { return; }
                if (!/^[0-9]$/.test(key)) {
                    e.preventDefault();
                    phoneerror.text("Only numbers are allowed!");
                    $(this).addClass("is-invalid");
                }
            });
            $("#modalPhone").on({ blur: phoneModalnofocus, input: phoneModalvalidate });
            //location dropdown,input and no focus validation
            const locationModalvalidate = () => {
                let ctryInp = $('#modalCountry');
                let stateInp = $('#modalState');
                let cityInp = $('#modalCity');
                ctryInp.add(stateInp).add(cityInp).removeClass("is-valid is-invalid");
                $('#modalCountry, #modalState, #modalCity').closest('.col-md-4').find('.error-msg').text("");
                if (ctryInp.val() === "") {
                    ctryInp.closest('.col-md-4').find('.error-msg').text("Please select the Country!");
                    ctryInp.addClass("is-invalid");
                    return false;
                }
                ctryInp.addClass("is-valid");
                if (!stateInp.prop('disabled')) {
                    if (stateInp.val() === "") {
                        stateInp.closest('.col-md-4').find('.error-msg').text("Please select the State!");
                        stateInp.addClass("is-invalid");
                        return false;
                    }
                    stateInp.addClass("is-valid");
                }
                if (!cityInp.prop('disabled')) {
                    if (cityInp.val() === "") {
                        cityInp.closest('.col-md-4').find('.error-msg').text("Please select the City!");
                        cityInp.addClass("is-invalid");
                        return false;
                    }
                    cityInp.addClass("is-valid");
                }
                return true;
            };
            $("#modalCountry").on('click', function () {
                if ($(this).children('option').length === 1) {
                    Object.keys(state).forEach(ctry => {
                        $('#modalCountry').append(`<option value="${ctry}">${ctry}</option>`);
                    });
                }
            });
            $('#modalCountry').on('change', function () {
                const selectedCountry = $(this).val();
                const statesList = showStates(selectedCountry);
                $('#modalState').html('<option value="">Select State</option>').prop('disabled', true);
                $('#modalCity').html('<option value="">Select City</option>').prop('disabled', true);
                if (statesList.length > 0) {
                    statesList.forEach(st => {
                        $('#modalState').append(`<option value="${st}">${st}</option>`);
                    });
                    $('#modalState').prop('disabled', false);
                }
                locationModalvalidate();
            });
            $('#modalState').on('change', function () {
                const selectedState = $(this).val();
                const citiesList = showCities(selectedState);
                $('#modalCity').html('<option value="">Select City</option>').prop('disabled', true);
                if (citiesList.length > 0) {
                    citiesList.forEach(ct => {
                        $('#modalCity').append(`<option value="${ct}">${ct}</option>`);
                    });
                    $('#modalCity').prop('disabled', false);
                }
                locationModalvalidate();
            });
            $('#modalCity').on('change', locationModalvalidate);
            $("#modalCountry, #modalState, #modalCity").on("blur", function () {
                const fieldId = `#${$(this).attr("id")}`;
                const val = $(this).val();
                const parent = $(this).closest('.col-md-4');
                $(this).removeClass("is-valid is-invalid");
                parent.find('.error-msg').text("");
                if (val === "") {
                    $(this).addClass("is-invalid");
                    if (fieldId === "#modalCountry") parent.find('.error-msg').text("Please select the Country!");
                    if (fieldId === "#modalState") parent.find('.error-msg').text("Please select the State!");
                    if (fieldId === "#modalCity") parent.find('.error-msg').text("Please select the City!");
                } else {
                    $(this).addClass("is-valid");
                }
            });
            $('#modalCountry, #modalState, #modalCity').on('input change', locationModalvalidate);
            //password input and no focus validation
            const passModalvalidate = () => {
                let isvalid = true;
                let passinp = $('#modalPassword');
                let pass = passinp.val();
                let passerror = passinp.closest('.mb-2').find('.error-msg');
                let passpattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@!$%&]).{8,}$/;
                passinp.removeClass("is-valid is-invalid");
                if (pass.trim() === "") {
                    passerror.text("Password is required!");
                    passinp.addClass("is-invalid"); isvalid = false;
                } else if (/\s/.test(pass)) {
                    passerror.text("Spaces are not allowed!");
                    passinp.addClass("is-invalid"); isvalid = false;
                } else if (pass.length < 8) {
                    passerror.text("Password length must be minimum 8 characters!");
                    passinp.addClass("is-invalid"); isvalid = false;
                } else if (!passpattern.test(pass)) {
                    passerror.text("Password must contain uppercase, lowercase, number and special character!");
                    passinp.addClass("is-invalid"); isvalid = false;
                } else {
                    passerror.text(""); passinp.addClass("is-valid");
                }
                return isvalid;
            };
            const passModalnofocus = () => {
                let passinp = $('#modalPassword');
                if (passinp.val().trim() === "") {
                    passinp.closest('.mb-2').find('.error-msg').text("Password is required!");
                    passinp.removeClass("is-valid").addClass("is-invalid");
                }
            };
            $("#modalPassword").on({ input: passModalvalidate, blur: passModalnofocus });
            //confirm password input and no focus validation
            const cpassModalvalidate = () => {
                let isvalid = true;
                let cpassinp = $('#modalConfirmPassword');
                let cpass = cpassinp.val();
                let pass = $('#modalPassword').val();
                let cpasserror = cpassinp.closest('.mb-2').find('.error-msg');
                cpasserror.removeClass("text-success").addClass("text-danger");
                cpassinp.removeClass("is-valid is-invalid");
                if (cpass.trim() === "") {
                    cpasserror.text("Confirm password is required!");
                    cpassinp.addClass("is-invalid"); isvalid = false;
                } else if (/\s/.test(cpass)) {
                    cpasserror.text("Spaces are not allowed!");
                    cpassinp.addClass("is-invalid"); isvalid = false;
                } else if (cpass !== pass) {
                    cpasserror.text("Password doesn't match!");
                    cpassinp.addClass("is-invalid"); isvalid = false;
                } else {
                    cpasserror.text("Password matched");
                    cpasserror.removeClass("text-danger").addClass("text-success");
                    cpassinp.addClass("is-valid");
                }
                return isvalid;
            };
            const cpassModalnofocus = () => {
                let cpassinp = $('#modalConfirmPassword');
                if (cpassinp.val().trim() === "") {
                    cpassinp.closest('.mb-2').find('.error-msg').text("Confirm your password!");
                    cpassinp.removeClass("is-valid").addClass("is-invalid");
                }
            };
            $('#modalPassword').on('input', function () {
                let cpass = $('#modalConfirmPassword').val();
                if (cpass.trim() !== "") { cpassModalvalidate(); }
            });
            $("#modalConfirmPassword").on({ blur: cpassModalnofocus, input: cpassModalvalidate });
            //languages known input and no focus validation
            const langModalvalidate = () => {
                let isvalid = true;
                const langinp = $('#registerModal input[name="langcheck"]:checked');
                const langerror = $('#registerModal #engCheck').closest('.d-flex').siblings('.error-msg');
                $('#registerModal input[name="langcheck"]').removeClass("is-valid is-invalid");
                if (langinp.length === 0) {
                    langerror.text("Please select the languages known!");
                    $('#registerModal input[name="langcheck"]').addClass("is-invalid");
                    isvalid = false;
                } else {
                    langerror.text("");
                    langinp.addClass("is-valid");
                }
                return isvalid;
            };
            const langModalnofocus = () => {
                const langinp = $('#registerModal input[name="langcheck"]:checked');
                const langerror = $('#registerModal #engCheck').closest('.d-flex').siblings('.error-msg');
                $('#registerModal input[name="langcheck"]').removeClass("is-valid is-invalid");
                if (langinp.length === 0) {
                    langerror.text("Please select the languages known!");
                    $('#registerModal input[name="langcheck"]').addClass("is-invalid");
                } else {
                    langerror.text("");
                    langinp.addClass("is-valid");
                }
            };
            $('#registerModal input[name="langcheck"]').on({ change: langModalvalidate, blur: langModalnofocus });
            //Interest input and no focus validation
            const choiceModalvalidate = () => {
                if (!$("#modalChoice").data('select2')) return true;
                let selectedData = $("#modalChoice").select2('data');
                let choiceerror = $("#modalChoice").closest('.input-group').find('.error-msg');
                $("#modalChoice").next('.select2-container').find('.select2-selection').removeClass("is-valid is-invalid");
                if (selectedData.length === 0) {
                    choiceerror.text("Please choose your interest!");
                    $("#modalChoice").next('.select2-container').find('.select2-selection').addClass("is-invalid");
                    return false;
                } else {
                    choiceerror.text("");
                    $("#modalChoice").next('.select2-container').find('.select2-selection').removeClass("is-invalid");
                    return true;
                }
            };
            $("#modalChoice").on({ change: choiceModalvalidate })
            $("#modalChoice").on("select2:close", choiceModalvalidate);
            //show password toggle
            $(document).on("change click", "#modalShowPassword, #editModalShowPassword, .input-group .togglePassword", function (e) {
                let container = $(this).closest(".modal");
                let isEditModal = container.attr("id") === "editUserModal";
                let passId = isEditModal ? "#editPassword" : "#modalPassword";
                let cpassId = isEditModal ? "#editConfirmPassword" : "#modalConfirmPassword";
                let showAllChkId = isEditModal ? "#editModalShowPassword" : "#modalShowPassword";
                let inputs = container.find(passId + ", " + cpassId);
                let icons = container.find(".togglePassword i");
                if ($(this).is(showAllChkId)) {
                    let showAll = $(this).is(":checked");
                    inputs.attr("type", showAll ? "text" : "password");
                    icons.toggleClass("fa-eye", !showAll).toggleClass("fa-eye-slash", showAll);
                } else {
                    let input = $(this).closest(".input-group").find("input[type='password'], input[type='text']");
                    let icon = $(this).find("i");
                    let isPassword = input.attr("type") === "password";
                    input.attr("type", isPassword ? "text" : "password");
                    icon.toggleClass("fa-eye fa-eye-slash");
                    let allVisible = inputs.filter("[type='text']").length === inputs.length;
                    container.find(showAllChkId).prop("checked", allVisible);
                }
            });

            // ---------------------------------------------------------------------Form Submit Section ---------------------------------------------------------------------
            //submit modal form validation and event
            const submitModalForm = (event) => {
                event.preventDefault();
                let isFnameValid = fnameModalvalidate();
                let isLnameValid = lnameModalvalidate();
                let isDobValid = dobModalvalidate();
                let isEndDateValid = endDateModalvalidate();
                let isGenderValid = genderModalvalidate();
                let isEmailValid = emailModalvalidate();
                let isPhoneValid = phoneModalvalidate();
                let isLocationValid = locationModalvalidate();
                let isPassValid = passModalvalidate();
                let isCpassValid = cpassModalvalidate();
                let isLangValid = langModalvalidate();
                let isIntValid = choiceModalvalidate();
                if (!isFnameValid) { showerror("First name is required!"); return; }
                if (!isLnameValid) { showerror("Last name is required!"); return; }
                if (!isGenderValid) { showerror("Gender is required!"); return; }
                if (!isDobValid) { showerror("Date of Birth is required!"); return; }
                if (!isEndDateValid) { showerror("Membership End Date required!"); return; }
                if (!isEmailValid) { showerror("Email address is required!"); return; }
                if (!isPhoneValid) { showerror("Contact number is required!"); return; }
                if (!isLocationValid) { showerror("Location is required!"); return; }
                if (!isPassValid) { showerror("Password is required!"); return; }
                if (!isCpassValid) { showerror("Confirm password is required!"); return; }
                if (!isLangValid) { showerror("Languages is required!"); return; }
                if (!isIntValid) { showerror("Please choose your interest!"); return; }
                let userData = {
                    id: Date.now(),
                    fname: $("#modalFname").val().trim(),
                    lname: $("#modalLname").val().trim(),
                    gender: $('#registerModal input[name="gender"]:checked').val(),
                    dob: $('#modalDob').val(),
                    startDate: $("#modalStartDate").val(),
                    endDate: $("#modalEndDate").val(),
                    email: $("#modalEmail").val().trim(),
                    phone: $("#modalPhone").val().trim(),
                    location: [$("#modalCountry"), $("#modalState"), $("#modalCity")].map(csc => csc.val().trim()),
                    pass: $("#modalPassword").val().trim(),
                    fullName: `${$("#modalFname").val().trim()} ${$("#modalLname").val().trim()}`.trim(),
                    normalizedPass: $("#modalPassword").val().trim(),
                    languages: $('#registerModal input[name="langcheck"]:checked').map(function () { return this.value; }).get(),
                    interest: $("#modalChoice").select2('data')
                };
                userListmodal.push(userData);
                localStorage.setItem("userdetailsModal", JSON.stringify(userListmodal));
                if (table) {
                    table.row.add(userData).draw();
                    rebuildTableHeader();
                }
                const welcomeName = `${userData.fname} ${userData.lname}`;
                document.activeElement.blur();
                $("#registerModal").modal("hide");
                successmsg(`Welcome, ${welcomeName}`);
                $("#registerModal input:not([type='radio']):not([type='checkbox']), #registerModal select").val("");
                $("#registerModal input[type='radio'], #registerModal input[type='checkbox']").prop("checked", false);
                $("#registerModal input, #registerModal select").removeClass("is-valid is-invalid");
                $("#registerModal .error-msg").text("").removeClass("text-success").addClass("text-danger");
                $('#modalState, #modalCity').html(function () { return `<option value="">Select ${this.id === 'modalState' ? 'State' : 'City'}</option>`; }).prop('disabled', true);
            };
            $("#modalSubmitBtn").on({ click: submitModalForm });

            // ------------------------------------------------------------------------Table Section ------------------------------------------------------------------------
            // function to load user data into datatable
            const loadUserTable = () => {
                let userListmodal = JSON.parse(localStorage.getItem("userdetailsModal")) || [];
                userListmodal = userListmodal.map(user => ({
                    ...user,
                    id: user.id || Date.now() + Math.random(),
                    fullName: `${user.fname || user.firstName || ""} ${user.lname || user.lastName || ""}`.trim(),
                    normalizedPass: user.pass || user.password || "",
                    startDate: user.startDate || "—",
                    endDate: user.endDate || "—",
                    interest: Array.isArray(user.interest) ? user.interest : (user.interest ? [user.interest] : [])
                }));
                localStorage.setItem("userdetailsModal", JSON.stringify(userListmodal));
                if ($.fn.DataTable.isDataTable("#modalUserTable")) {
                    $("#modalUserTable").DataTable().destroy();
                    $("#modalTableBody").empty();
                }
                const childFormat = (d) => {
                    const interestText = d.interest.map(i => i.text).join(", ");
                    return `
                        <table class="table table-sm table-bordered table-hover mb-0">
                            <thead class="thead-dark text-center">
                                <tr>
                                    <th colspan="2">Membership</th>
                                    <th rowspan="2" style="vertical-align: middle;">User Choice</th>
                                    <th rowspan="2" style="vertical-align: middle;">Location</th>
                                </tr>
                                <tr>
                                    <th>Start</th>
                                    <th>End</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="text-center">
                                    <td>${d.startDate}</td>
                                    <td>${d.endDate}</td>
                                    <td>${interestText}</td>
                                    <td>${d.location}</td>
                                </tr>
                            </tbody>
                        </table>
                    `;
                };
                table = $("#modalUserTable").DataTable({
                    data: userListmodal,
                    responsive: false,
                    pageLength: 10,
                    ordering: true,
                    stateSave: false,
                    searching: true,
                    info: true,
                    autoWidth: true,
                    language: {
                        search: "",
                        searchPlaceholder: "Search users...",
                        emptyTable: "No users available",
                        zeroRecords: "No matching users found",
                        info: "Showing _START_ to _END_ of _TOTAL_ users",
                        lengthMenu: "Show _MENU_ users"
                    },
                    columnDefs: [
                        {
                            targets: [10, 11, 12, 13],
                            visible: false
                        }
                    ],
                    dom:
                        '<"row"<"col-12"<"dt-filter-btn">>>' +
                        '<"row"<"col-md-12 mb-2"P>>' +
                        '<"row align-items-center mb-2"' +
                        '<"col-md-2 mt-n3"l>' +
                        '<"col-md-1"<"dt-state-btn">>' +
                        '<"col-md-1"<"dt-load-btn">>' +
                        '<"col-md-8 d-flex justify-content-end"<"dt-export-btn">f>' +
                        '>' +
                        '<"d-none"B>' +
                        't' +
                        '<"d-flex justify-content-between align-items-center pt-2"ip>',
                    searchPanes: {
                        viewCount: true,
                        cascadePanes: true,
                        layout: "columns-3",
                        orderable: false,
                        clear: false,
                        initCollapsed: true
                    },
                    buttons: [
                        {
                            text: '<i class="fa fa-filter mr-1"></i> Filters',
                            className: "btn btn-sm mb-2",
                            action: function () { $('.dtsp-searchPanes').slideToggle(200); }
                        },
                        {
                            extend: "collection",
                            text: '<i class="fa fa-download mr-1"></i> Export',
                            className: "btn btn-sm mb-3",
                            buttons: [
                                {
                                    extend: "copyHtml5",
                                    text: '<i class="fa fa-copy mr-1"></i> Copy',
                                    className: "btn btn-sm"
                                },
                                {
                                    extend: "excelHtml5",
                                    text: '<i class="fa fa-file-excel mr-1"></i> Excel',
                                    className: "btn btn-sm"
                                },
                                {
                                    extend: "pdfHtml5",
                                    text: '<i class="fa fa-file-pdf mr-1"></i> PDF',
                                    className: "btn btn-sm"
                                },
                                {
                                    extend: "csvHtml5",
                                    text: '<i class="fa fa-file-csv mr-1"></i> CSV',
                                    className: "btn btn-sm"
                                },
                                { extend: "print", text: '<i class="fa fa-print mr-1"></i> Print', className: "btn btn-sm" }
                            ]
                        },
                        {
                            extend: "createState",
                            text: "Save Filter",
                            className: "btn btn-sm mb-3"
                        },
                        {
                            extend: "savedStates",
                            text: "Load Filters",
                            className: "btn btn-sm mb-3 btn-secondary"
                        }
                    ],
                    columns: [
                        {
                            className: 'dt-control',
                            orderable: false,
                            data: null,
                            defaultContent: ''
                        },
                        {
                            data: "fullName",
                            className: "text-center align-middle",
                            searchPanes: { show: true },
                            defaultContent: "—",
                            render: $.fn.dataTable.render.text()
                        },
                        {
                            data: "gender",
                            className: "text-center align-middle",
                            searchPanes: { show: true },
                            orderable: false,
                            defaultContent: "—",
                            render: $.fn.dataTable.render.text()
                        },
                        {
                            data: "dob",
                            className: "text-center align-middle",
                            searchPanes: { show: true },
                            orderable: false,
                            defaultContent: "—",
                            render: $.fn.dataTable.render.text()
                        },
                        {
                            data: "email",
                            className: "text-center align-middle",
                            searchPanes: { show: false },
                            orderable: false,
                            defaultContent: "—",
                            render: $.fn.dataTable.render.text()
                        },
                        {
                            data: "phone",
                            className: "text-center align-middle",
                            searchPanes: { show: false },
                            orderable: false,
                            defaultContent: "—",
                            render: $.fn.dataTable.render.text()
                        },
                        {
                            data: "languages",
                            className: "text-center align-middle",
                            searchPanes: { show: true },
                            orderable: false,
                            defaultContent: "—",
                            render: function (data) {
                                return Array.isArray(data) ? data.join(", ") : (data || "—");
                            }
                        },
                        {
                            data: "normalizedPass",
                            className: "text-center align-middle text-muted",
                            orderable: false,
                            searchable: false,
                            searchPanes: { show: false },
                            render: (data, type) => type === "display"
                                ? (data ? "*".repeat(Math.min(data.length, 10)) : "—")
                                : data
                        },
                        {
                            data: null,
                            orderable: false,
                            searchable: false,
                            searchPanes: { show: false },
                            className: "text-center align-middle",
                            render: () => `<button type="button" class="btn btn-sm btn-outline-primary updateBtn" title="Edit User"><i class="fa-solid fa-pen-to-square"></i></button>`
                        },
                        {
                            data: null,
                            orderable: false,
                            searchable: false,
                            searchPanes: { show: false },
                            className: "text-center align-middle",
                            render: () => `<button type="button" class="btn btn-sm btn-outline-primary showImageBtn" title="Show Image"><i class="fa-solid fa-image"></i></button>`
                        },
                        {
                            data: "startDate",
                            className: "text-center align-middle",
                            searchPanes: { show: false },
                            orderable: false,
                            defaultContent: "—",
                            render: $.fn.dataTable.render.text()
                        },
                        {
                            data: "endDate",
                            className: "text-center align-middle",
                            searchPanes: { show: false },
                            orderable: false,
                            defaultContent: "—",
                            render: $.fn.dataTable.render.text()
                        },
                        {
                            data: "interest",
                            className: "text-center align-middle",
                            searchPanes: { show: true },
                            orderable: false,
                            defaultContent: "—",
                            render: function (data) {
                                return Array.isArray(data) ? data.map(i => i.text || i).join(", ") : (data || "—");
                            }
                        },
                        {
                            data: "location",
                            className: "text-center align-middle",
                            searchPanes: { show: true },
                            orderable: false,
                            defaultContent: "—",
                            render: $.fn.dataTable.render.text()
                        }
                    ],
                    initComplete: function () {
                        rebuildTableHeader();
                        const btnContainer = $(this.api().table().container());
                        const allBtns = btnContainer.find('.dt-buttons button');
                        btnContainer.find('.dt-filter-btn').append(allBtns.eq(0).detach());
                        btnContainer.find('.dt-export-btn').append(allBtns.eq(1).detach());
                        btnContainer.find('.dt-state-btn').append(allBtns.eq(2).detach());
                        btnContainer.find('.dt-load-btn').append(allBtns.eq(3).detach());
                        $('.dtsp-searchPanes').hide();
                    }
                });
                table.on('click', 'tbody td.dt-control', function (e) {
                    let tr = e.target.closest('tr');
                    let row = table.row(tr);
                    if (row.child.isShown()) {
                        row.child.hide();
                        $(tr).removeClass('shown');
                    } else {
                        row.child(childFormat(row.data())).show();
                        $(tr).addClass('shown');
                    }
                });
            };
            $('#modalUserTableCollapse').on('shown.bs.collapse', function () {
                if (!table || !$.fn.DataTable.isDataTable('#modalUserTable')) {
                    loadUserTable();
                } else {
                    table.columns.adjust().responsive.recalc();
                }
            });

            // -------------------------------------------------------------------------Edit Section ------------------------------------------------------------------------
            // delete user event
            $("#deleteUserBtn").on("click", function () {
                let userId = parseInt($("#editIndex").val());
                let userIdx = userListmodal.findIndex(u => u.id === userId);
                if (userIdx === -1) return;
                let user = userListmodal[userIdx];
                let fullname = `${user.fname || user.firstName} ${user.lname || user.lastName}`;
                Swal.fire({
                    title: "Caution",
                    text: `Are you sure you want to delete ${fullname}'s record?`,
                    icon: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#3085d6",
                    cancelButtonColor: "#d33",
                    confirmButtonText: "Yes"
                }).then((result) => {
                    if (result.isConfirmed) {
                        userListmodal.splice(userIdx, 1);
                        localStorage.setItem("userdetailsModal", JSON.stringify(userListmodal));
                        if (table) {
                            table.clear().rows.add(userListmodal).draw();
                            rebuildTableHeader();
                        }
                        $("#editUserModal").modal("hide");
                        Swal.fire({ title: "Deleted!", text: `${fullname}'s data is deleted.`, icon: "success" });
                    }
                });
            });
            $("#updateUserBtn").on("click", function () {
                $(".editInput").trigger("input");
                $("#editModalEndDate").trigger("input");
                $("#editUserModal input[name='gender']").trigger("change");
                $("#editUserModal input[name='editLangcheck']").trigger("change");
                validateLocation();
                const isIntValid = validateChoice();
                if ($("#editUserModal .is-invalid").length > 0 || !isIntValid) {
                    showerror("Please fill all the fields correctly!");
                    return;
                }
                let userId = pendingEditId;
                let userIdx = userListmodal.findIndex(u => u.id === userId);
                if (userIdx === -1) return;
                let existingUser = userListmodal[userIdx];
                let updatedUser = {
                    id: existingUser.id,
                    fname: $("#editFname").val().trim(),
                    lname: $("#editLname").val().trim(),
                    gender: $("#editUserModal input[name='gender']:checked").val(),
                    dob: $("#editModalDob").val(),
                    startDate: $("#editModalStartDate").val(),
                    endDate: $("#editModalEndDate").val(),
                    email: $("#editEmail").val().trim(),
                    phone: $("#editPhone").val().trim(),
                    pass: $("#editPassword").val().trim(),
                    fullName: `${$("#editFname").val().trim()} ${$("#editLname").val().trim()}`.trim(),
                    normalizedPass: $("#editPassword").val().trim(),
                    languages: $("#editUserModal input[name='editLangcheck']:checked").map(function () { return this.value; }).get(),
                    location: [
                        $("#editModalCountry").val().trim(),
                        $("#editModalState").val().trim(),
                        $("#editModalCity").val().trim()
                    ],
                    interest: $("#editModalChoice").select2("data")
                };
                userListmodal[userIdx] = updatedUser;
                localStorage.setItem("userdetailsModal", JSON.stringify(userListmodal));
                if (table) {
                    table.clear().rows.add(userListmodal).draw();
                    rebuildTableHeader();
                }
                const updatedName = updatedUser.fullName;
                $("#editUserModal").one("hidden.bs.modal", function () {
                    successmsg(`${updatedName}'s data is updated.`);
                });
                document.activeElement.blur();
                $("#editUserModal").modal("hide");
            });
            // field validation function
            function validateField(input) {
                const $input = $(input);
                const field = $input.attr("id");
                const name = $input.attr("name");
                const value = $input.val() || "";
                const $error = $input.closest(".input-group, .mb-2, .mb-4, .col-md-4").find(".error-msg");
                if (name && EDIT_GROUP_RULES[name]) {
                    const rule = EDIT_GROUP_RULES[name];
                    const $group = $(`input[name='${name}']`);
                    const $groupErr = $group.closest(".mb-2, .d-flex").first().siblings(".error-msg")
                        .add($group.closest(".mb-2").find(".error-msg")).first();
                    $group.removeClass("is-valid is-invalid");
                    if ($group.filter(":checked").length === 0) {
                        $groupErr.text(rule.required);
                        $group.addClass("is-invalid");
                        return false;
                    }
                    $groupErr.text("");
                    $group.filter(":checked").addClass("is-valid");
                    return true;
                }
                const rule = EDIT_RULES[field];
                if (!rule) return true;
                $input.removeClass("is-valid is-invalid");
                $error.text("");
                if (field === "editPhone") {
                    const cleaned = value.replace(/[^0-9]/g, "");
                    $input.val(cleaned);
                }
                const trimmed = (field === "editPhone" ? $input.val() : value);
                if (trimmed === "") {
                    $error.text(rule.required);
                    $input.addClass("is-invalid");
                    return false;
                }
                if (rule.noSpaces && /\s/.test(trimmed)) {
                    $error.text("Spaces are not allowed!");
                    $input.addClass("is-invalid");
                    return false;
                }

                if (rule.pattern && !rule.pattern.test(trimmed)) {
                    $error.text(rule.patternMsg);
                    $input.addClass("is-invalid");
                    return false;
                }
                if (rule.match && trimmed !== $(`#${rule.match}`).val()) {
                    $error.text(rule.matchMsg);
                    $input.addClass("is-invalid");
                    return false;
                }
                $error.text("");
                $input.addClass("is-valid");
                return true;
            }
            // real-time validation on input/change
            $("#editUserModal").on("input change", ".editInput, #editModalEndDate, #editModalCountry, #editModalState, #editModalCity, input[name='gender'], input[name='editLangcheck']",
                function () {
                    validateField(this);
                    if ($(this).attr("id") === "editPassword" && $("#editConfirmPassword").val().trim() !== "") {
                        validateField(document.getElementById("editConfirmPassword"));
                    }
                }
            );
            // validation on blur to show errors when user leaves the field
            $("#editUserModal").on("blur", "input, select", function () {
                const $input = $(this);
                const name = $input.attr("name");
                const field = $input.attr("id");
                if (name && EDIT_GROUP_RULES[name]) {
                    validateField(this);
                    return;
                }
                const rule = EDIT_RULES[field];
                if (!rule) return;
                if ($input.val().trim() === "" && !$input.hasClass("is-invalid")) {
                    $input.closest(".input-group, .mb-2, .mb-4, .col-md-4").find(".error-msg").text(rule.required);
                    $input.removeClass("is-valid").addClass("is-invalid");
                }
            });
            // functions to populate state and city based on selected country and state
            function populateSelect($select, items, placeholder) {
                $select.html(`<option value="">${placeholder}</option>`).prop("disabled", !items.length);
                items.forEach(item => $select.append(`<option value="${item}">${item}</option>`));
                return $select;
            }
            // example data for states and cities
            function validateLocation() {
                const country = $("#editModalCountry");
                const $state = $("#editModalState");
                const $city = $("#editModalCity");
                const fields = [country, $state, $city];
                fields.forEach($f => $f.removeClass("is-valid is-invalid").closest(".col-md-4").find(".error-msg").text(""));
                for (const $f of fields) {
                    if ($f.prop("disabled")) continue;
                    const rule = EDIT_RULES[$f.attr("id")];
                    if ($f.val() === "") {
                        $f.addClass("is-invalid").closest(".col-md-4").find(".error-msg").text(rule.required);
                        return false;
                    }
                    $f.addClass("is-valid");
                }
                return true;
            }
            // example data for countries
            $("#editModalCountry").on("click", function () {
                if ($(this).children("option").length === 1) {
                    populateSelect($(this), Object.keys(state), "Select Country");
                }
            });
            // example data for states
            $("#editModalCountry").on("change", function () {
                const statesList = showStates($(this).val());
                populateSelect($("#editModalState"), statesList, "Select State");
                populateSelect($("#editModalCity"), [], "Select City");
                validateLocation();
            });
            // example data for cities
            $("#editModalState").on("change", function () {
                const citiesList = showCities($(this).val());
                populateSelect($("#editModalCity"), citiesList, "Select City");
                validateLocation();
            });
            // validate location fields when city changes as it's the last field in the hierarchy
            $("#editModalCity").on("change", validateLocation);
            // validate location fields on blur
            $("#editModalCountry, #editModalState, #editModalCity").on("blur", function () {
                const $f = $(this);
                const rule = EDIT_RULES[$f.attr("id")];
                $f.removeClass("is-valid is-invalid").closest(".col-md-4").find(".error-msg").text("");

                if ($f.val() === "") {
                    $f.addClass("is-invalid").closest(".col-md-4").find(".error-msg").text(rule.required);
                } else {
                    $f.addClass("is-valid");
                }
            });
            // restrict phone input to numbers only
            $("#editPhone").on("keydown", function (e) {
                if (ALLOWED_KEYS.has(e.key)) return;
                if (!/^[0-9]$/.test(e.key)) {
                    e.preventDefault();
                    $(this).closest(".mb-2").find(".error-msg").text("Only numbers are allowed!");
                    $(this).addClass("is-invalid");
                }
            });
            // select2 validation
            function validateChoice() {
                if (!$("#editModalChoice").data("select2")) return true;
                const $sel = $("#editModalChoice").next(".select2-container").find(".select2-selection");
                const $err = $("#editModalChoice").closest(".input-group").find(".error-msg");
                const hasValues = $("#editModalChoice").select2("data").length > 0;

                $sel.toggleClass("is-invalid", !hasValues).toggleClass("is-valid", hasValues);
                $err.text(hasValues ? "" : "Please choose your interest!");
                return hasValues;
            }
            // initialize select2
            $("#editModalChoice").select2({
                theme: "classic",
                placeholder: "Please choose your interest...",
                allowClear: true,
                width: "90%",
                multiple: true,
                data: userInt.interests,
                dropdownPosition: "below"
            }).on("change select2:close", validateChoice);
            $("#modalUserTable tbody").on("click", ".updateBtn", function () {
                if (!table) return;
                pendingEditId = table.row($(this).closest("tr")).data().id;
                $("#editUserModal").modal("show");
            });
            // load user data into edit modal when it's shown
            $("#editUserModal").on("shown.bs.modal", function () {
                if (!$.fn.datepicker) { console.error("datepicker is not loaded!"); return; }
                $("#editModalDob").datepicker("destroy").datepicker({
                    dateFormat: 'dd-mm-yy',
                    changeMonth: true,
                    changeYear: true,
                    yearRange: "-50:-18",
                    maxDate: "-18Y",
                    minDate: "-50Y",
                    onSelect: function () {
                        $(this).trigger("input");
                    }
                });

                $("#editModalEndDate").datepicker("destroy").datepicker({
                    dateFormat: 'dd-mm-yy',
                    changeMonth: true,
                    changeYear: true,
                    minDate: new Date(),
                    maxDate: '+3M',
                    beforeShow: () => $(".ui-datepicker").css("z-index", 99999),
                    onSelect: function () { $(this).trigger("input"); }
                });
                if (!pendingEditId) return;
                const users = JSON.parse(localStorage.getItem("userdetailsModal")) || [];
                const rowData = users.find(u => u.id === pendingEditId);
                if (!rowData) {
                    console.error("User not found:", pendingEditId);
                    return;
                }
                $("#editIndex").val(rowData.id);
                $("#editFname").val(rowData.fname || "");
                $("#editLname").val(rowData.lname || "");
                $("#editModalDob").val(rowData.dob || "");
                $("#editModalStartDate").val(rowData.startDate || getTodayFormatted());
                $("#editModalEndDate").val(rowData.endDate || "");
                $("#editEmail").val(rowData.email || "");
                $("#editPhone").val(rowData.phone || "");
                $("#editPassword").val(rowData.pass || "");
                $("#editConfirmPassword").val(rowData.pass || "");
                $("input[name='editGender']").prop("checked", false);
                const gender = (rowData.gender || "").toLowerCase();
                if (gender === "male") {
                    $("#editMale").prop("checked", true);
                }
                else if (gender === "female") {
                    $("#editFemale").prop("checked", true);
                }
                $("#editUserModal input[name='editLangcheck']").prop("checked", false);
                if (Array.isArray(rowData.languages) && rowData.languages.length > 0) {
                    const savedLangs = rowData.languages.map(l => l.trim().toLowerCase());
                    $("#editUserModal input[name='editLangcheck']").each(function () {
                        if (savedLangs.includes($(this).val().trim().toLowerCase())) {
                            $(this).prop("checked", true);
                        }
                    });
                }
                const location = Array.isArray(rowData.location) ? rowData.location : [];
                const savedCountry = location[0] || "";
                const savedState = location[1] || "";
                const savedCity = location[2] || "";
                if ($("#editModalCountry").children("option").length === 1) {
                    Object.keys(state).forEach(ctry => {
                        $("#editModalCountry").append(`<option value="${ctry}">${ctry}</option>`);
                    });
                }
                populateSelect($("#editModalState"), [], "Select State");
                populateSelect($("#editModalCity"), [], "Select City");
                $("#editModalCountry").val(savedCountry);
                if (savedCountry) {
                    populateSelect($("#editModalState"), showStates(savedCountry), "Select State");
                    $("#editModalState").val(savedState);
                    if (savedState) {
                        populateSelect($("#editModalCity"), showCities(savedState), "Select City");
                        $("#editModalCity").val(savedCity);
                    }
                }
                $("#editModalChoice").val(null).trigger("change");
                const rawInterest = rowData.interest;
                const matchedIds = [];
                if (Array.isArray(rawInterest) && rawInterest.length > 0) {
                    rawInterest.forEach(item => {
                        if (item.id) {
                            matchedIds.push(String(item.id));
                        }
                    });
                }
                else if (typeof rawInterest === "string" && rawInterest.trim() !== "") {
                    const savedTexts = rawInterest.split(",").map(t => t.trim().toLowerCase());
                    userInt.interests.forEach(group => {
                        (group.children || []).forEach(child => {
                            if (savedTexts.includes(child.text.trim().toLowerCase())) {
                                matchedIds.push(String(child.id));
                            }
                        });
                    });
                }
                if (matchedIds.length > 0) {
                    $("#editModalChoice").val(matchedIds).trigger("change");
                }
                setTimeout(() => {
                    $(".editInput, #editModalEndDate").trigger("input");
                    $("#editUserModal input[name='gender'], #editUserModal input[name='editLangcheck']").trigger("change");
                    validateLocation();
                    validateChoice();
                }, 50);
            });

            // ------------------------------------------------------------------------- Image Section ------------------------------------------------------------------------
            // image button
            $("#modalUserTable tbody").on("click", ".showImageBtn", function () {
                // debugger;
                
                const $btn = $(this);
                const $icon = $btn.find("i");
                const rowData = table.row($btn.closest("tr")).data();
                const $controls = $("#userchoice .carousel-control-prev, #userchoice .carousel-control-next");
                const $inner = $(".caroImage");
                if ($icon.hasClass("fa-x")) {
                    $inner.html("");
                    $controls.addClass("d-none");
                    $icon.removeClass("fa-x").addClass("fa-image");
                    return;
                }
                $("#modalUserTable tbody .showImageBtn i").removeClass("fa-x").addClass("fa-image");
                $inner.html(`
                    <div class="card shadow-sm mt-5">
                        <div class="card-header d-flex justify-content-center align-items-center p-3" id="productwiki">
                            <div id="productCarousel" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner"></div>
                            </div>
                        </div>
                    </div>
                `);
                const $carouselInner = $inner.find(".carousel-inner");
                const interestRaw = rowData.interest;
                const interests = interestRaw.map(i => i.text);
                const getInterestId = (category) => {
                    if (Array.isArray(interestRaw)) {
                        const found = interestRaw.find(i => (i.text) === category);
                        return found.id;
                    }
                    let id = "";
                    userInt.interests.forEach(group => {
                        (group.children).forEach(child => {
                            if (child.text.trim().toLowerCase() === category.trim().toLowerCase()) {
                                id = child.id;
                            }
                        });
                    });
                    return id;
                };
                let imgContent = "";
                interests.forEach((category, index) => {
                    const interestId = getInterestId(category);
                    const filePath = imgPath[category];
                    if (filePath) {
                        imgContent += `
                            <div class="carousel-item ${index === 0 ? "active" : ""}" data-interval="5000">
                                <a href="#"
                                   class="d-block text-decoration-none productImgLink"
                                   data-product="${category}"
                                   data-id="${interestId}"
                                   data-toggle="modal"
                                   data-target="#wikiModal">
                                    <div class="d-flex justify-content-center rounded bg-info shadow m-5">
                                        <img src="${filePath}" class="d-block w-100 m-5"
                                             alt="${category}"
                                             style="max-height:300px; object-fit:contain;">
                                    </div>
                                </a>
                            </div>
                        `;
                    }
                });
                if (imgContent) {
                    $carouselInner.html(imgContent);
                    $controls.removeClass("d-none");
                    $icon.removeClass("fa-image").addClass("fa-x");
                    $("#userchoice").carousel(0);
                    $('html, body').animate({ scrollTop: $('#productwiki').offset().top }, 200);
                } else {
                    $inner.html("");
                    $controls.addClass("d-none");
                }
            });
            $(document).on("click", ".productImgLink", function () {
                const product = $(this).data("product");
                const id = $(this).data("id");
                $("#prodview").attr("src", `ProductWiki.aspx?id=${id}`);
            });
            $("#wikiModal").on("hidden.bs.modal", function () {
                $("#prodview").attr("src", "");
            });
            const pageSwap = () => {
                var switch1 = $('#pageSwitch');
                var Url = window.location.pathname.toLowerCase();
                switch1.on('change', function () {
                    if ($(this).is(':checked')) {
                        setTimeout(function () {
                            window.location.href = "DatepickerSelect22.aspx";
                        }, 300);
                    } else {
                        setTimeout(function () {
                            window.location.href = "IframeApply1.aspx";
                        }, 300);
                    }
                });
            }
            pageSwap();
        });
    </script>
</body>
</html>