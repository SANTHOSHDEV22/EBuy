<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterDTSState.aspx.cs" Inherits="EBuy.RegisterDTSState" %>

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
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid p-4">
            <a href="Index.aspx" style="text-decoration: none;">
                <i class="fa-solid fa-arrow-left fa-lg back-icon"></i><span class="ml-2 text-dark">Go to home</span>
            </a>
        </div>
        <div class="container-fluid p-2">
            <div class="container-fluid py-5 my-5">
                <div class="accordion" id="userRegisterAccordion">
                    <div class="card shadow-sm">
                        <div class="card-header bg-info d-flex justify-content-center align-items-center p-3" id="modalRegisterHeading">
                            <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#registerModal">
                                <i class="fa-solid fa-plus mr-1"></i>
                                Register
                       
                            </button>
                        </div>
                        <div class="modal fade" id="registerModal" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-hidden="true">
                            <div class="modal-dialog modal-lg modal-dialog-centered">
                                <div class="modal-content border-0 shadow">
                                    <div class="modal-header bg-info text-white">
                                        <h5 class="modal-title">Register User</h5>
                                        <button type="button" class="close text-white" data-dismiss="modal">
                                            <span>&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body p-4">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="input-group mb-4">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">Firstname</span>
                                                    </div>
                                                    <input type="text" class="form-control" id="modalFname" placeholder="Enter firstname" />
                                                    <small class="text-danger error-msg w-100 mt-1"></small>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="input-group mb-4">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">Lastname</span>
                                                    </div>
                                                    <input type="text" class="form-control" id="modalLname" placeholder="Enter lastname" />
                                                    <small class="text-danger error-msg w-100 mt-1"></small>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="mb-4" style="max-width: 500px;">
                                                    <div class="d-flex align-items-center flex-wrap">
                                                        <label class="mb-0 mr-3 font-weight-bold">Gender :</label>
                                                        <div class="input-group mr-3" style="max-width: 130px;">
                                                            <div class="input-group-prepend">
                                                                <div class="input-group-text">
                                                                    <input type="radio" name="gender" id="male" value="Male" />
                                                                </div>
                                                            </div>
                                                            <label class="form-control" for="male">Male</label>
                                                        </div>
                                                        <div class="input-group" style="max-width: 130px;">
                                                            <div class="input-group-prepend">
                                                                <div class="input-group-text">
                                                                    <input type="radio" name="gender" id="female" value="Female" />
                                                                </div>
                                                            </div>
                                                            <label class="form-control" for="female">Female</label>
                                                        </div>
                                                    </div>
                                                    <small class="text-danger error-msg d-block mt-1"></small>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="input-group mb-4">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">DOB</span>
                                                    </div>
                                                    <input type="text" class="form-control" id="modalDob" placeholder="Enter Birthday" />
                                                    <small class="text-danger error-msg w-100 mt-1"></small>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-2 pr-1">
                                                <label for="modalStartDate" class="font-weight-bold mt-2">Membership :</label>
                                            </div>
                                            <div class="col-md-5">
                                                <div class="input-group mb-4 ml-1">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">Start</span>
                                                    </div>
                                                    <input type="text" class="form-control" id="modalStartDate" placeholder="Start Date" />
                                                    <small class="text-danger error-msg d-block w-100 mt-1"></small>
                                                </div>
                                            </div>
                                            <div class="col-md-5">
                                                <div class="input-group mb-4">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text">End</span>
                                                    </div>
                                                    <input type="text" class="form-control" id="modalEndDate" placeholder="End Date" />
                                                    <small class="text-danger error-msg d-block w-100 mt-1"></small>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="input-group mb-4">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text px-4">Email Address</span>
                                            </div>
                                            <input type="email" class="form-control" id="modalEmail" placeholder="Enter email address" />
                                            <small class="text-danger error-msg w-100 mt-1"></small>
                                        </div>
                                        <div class="input-group mb-4">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text px-3">Contact Number</span>
                                            </div>
                                            <input type="tel" class="form-control" minlength="1" maxlength="10" id="modalPhone" placeholder="Enter contact number" />
                                            <small class="text-danger error-msg w-100 mt-1"></small>
                                        </div>
                                        <div class="input-group mb-4">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text px-5">Location</span>
                                            </div>
                                            <select class="form-control" id="modalLocation">
                                                <option value="">Select Location</option>
                                                <option>Chennai, Tamil Nadu, India</option>
                                                <option>Bangalore, Karnataka, India</option>
                                                <option>Kochi, Kerala, India</option>
                                            </select>
                                            <small class="text-danger error-msg w-100 mt-1"></small>
                                        </div>
                                        <div class="input-group mb-4">
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
                                        <div class="input-group mb-4">
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
                                        <div class="form-check mt-2 mb-3">
                                            <input type="checkbox" class="form-check-input" id="modalShowPassword" />
                                            <label class="form-check-label" for="modalShowPassword">Show Password</label>
                                        </div>
                                        <div class="mb-4">
                                            <div class="d-flex align-items-center flex-wrap">
                                                <label class="mb-0 mr-3 font-weight-bold">Languages Known :</label>
                                                <div class="input-group mr-3" style="max-width: 140px;">
                                                    <div class="input-group-prepend">
                                                        <div class="input-group-text">
                                                            <input type="checkbox" name="langcheck" id="engCheck" value="English" />
                                                        </div>
                                                    </div>
                                                    <label class="form-control" for="engCheck">English</label>
                                                </div>
                                                <div class="input-group mr-3" style="max-width: 140px;">
                                                    <div class="input-group-prepend">
                                                        <div class="input-group-text">
                                                            <input type="checkbox" name="langcheck" id="tamCheck" value="Tamil" />
                                                        </div>
                                                    </div>
                                                    <label class="form-control" for="tamCheck">Tamil</label>
                                                </div>
                                                <div class="input-group" style="max-width: 140px;">
                                                    <div class="input-group-prepend">
                                                        <div class="input-group-text">
                                                            <input type="checkbox" name="langcheck" id="hinCheck" value="Hindi" />
                                                        </div>
                                                    </div>
                                                    <label class="form-control" for="hinCheck">Hindi</label>
                                                </div>
                                            </div>
                                            <small class="text-danger error-msg d-block mt-1"></small>
                                        </div>
                                    </div>
                                    <div class="modal-footer border-0 flex-column">
                                        <div class="d-flex justify-content-center align-items-center mb-3">
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
                    <div class="card shadow-sm">
                        <div class="card-header bg-info p-0" id="modalTableHeading">
                            <button class="btn btn-block text-left text-white p-3" type="button" data-toggle="collapse" data-target="#modalUserTableCollapse" aria-expanded="false" aria-controls="modalUserTableCollapse">
                                Modal Form User Details
                       
                            </button>
                        </div>
                        <div id="modalUserTableCollapse" class="collapse" aria-labelledby="modalTableHeading" data-parent="#userRegisterAccordion">
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover table-striped" id="modalUserTable" style="width: 100% !important;">
                                        <thead class="thead-dark">
                                            <tr>
                                                <th>Name</th>
                                                <th>Gender</th>
                                                <th>Email Address</th>
                                                <th>Contact No.</th>
                                                <th>Location</th>
                                                <th>Languages</th>
                                                <th>Password</th>
                                                <th width="120">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody id="modalTableBody" class="text-center"></tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal fade" id="editUserModal" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-hidden="true">
                        <div class="modal-dialog modal-lg modal-dialog-centered">
                            <div class="modal-content border-0 shadow">
                                <div class="modal-header bg-info text-white">
                                    <h5 class="modal-title">Update User Details</h5>
                                    <button type="button" class="close text-white" data-dismiss="modal">
                                        <span>&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body p-4">
                                    <input type="hidden" id="editIndex" />
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="input-group mb-4">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">Firstname</span>
                                                </div>
                                                <input type="text" class="form-control editInput" id="editFname" placeholder="Enter firstname" />
                                                <small class="text-danger error-msg w-100 mt-1"></small>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="input-group mb-4">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">Lastname</span>
                                                </div>
                                                <input type="text" class="form-control editInput" id="editLname" placeholder="Enter lastname" />
                                                <small class="text-danger error-msg w-100 mt-1"></small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="mb-4" style="max-width: 500px;">
                                                <div class="d-flex align-items-center flex-wrap">
                                                    <label class="mb-0 mr-3 font-weight-bold">Gender :</label>
                                                    <div class="input-group mr-3" style="max-width: 130px;">
                                                        <div class="input-group-prepend">
                                                            <div class="input-group-text">
                                                                <input type="radio" name="gender" id="editMale" value="Male" />
                                                            </div>
                                                        </div>
                                                        <label class="form-control" for="male">Male</label>
                                                    </div>
                                                    <div class="input-group" style="max-width: 130px;">
                                                        <div class="input-group-prepend">
                                                            <div class="input-group-text">
                                                                <input type="radio" name="gender" id="editFemale" value="Female" />
                                                            </div>
                                                        </div>
                                                        <label class="form-control" for="female">Female</label>
                                                    </div>
                                                </div>
                                                <small class="text-danger error-msg d-block mt-1"></small>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="input-group mb-4">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">DOB</span>
                                                </div>
                                                <input type="text" class="form-control" id="editModalDob" placeholder="Enter Birthday" />
                                                <small class="text-danger error-msg w-100 mt-1"></small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-2 pr-1">
                                            <label for="modalStartDate" class="font-weight-bold mt-2">Membership :</label>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="input-group mb-4 ml-1">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">Start</span>
                                                </div>
                                                <input type="text" class="form-control" id="editModalStartDate" placeholder="Start Date" />
                                                <small class="text-danger error-msg d-block w-100 mt-1"></small>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="input-group mb-4">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">End</span>
                                                </div>
                                                <input type="text" class="form-control" id="editModalEndDate" placeholder="End Date" />
                                                <small class="text-danger error-msg d-block w-100 mt-1"></small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="input-group mb-4">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">Email Address</span>
                                        </div>
                                        <input type="email" class="form-control editInput" id="editEmail" placeholder="Enter email address" />
                                        <small class="text-danger error-msg w-100 mt-1"></small>
                                    </div>
                                    <div class="input-group mb-4">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">Contact Number</span>
                                        </div>
                                        <input type="tel" class="form-control editInput" id="editPhone" placeholder="Enter contact number" minlength="1" maxlength="10" />
                                        <small class="text-danger error-msg w-100 mt-1"></small>
                                    </div>
                                    <div class="input-group mb-4">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text px-5">Location</span>
                                        </div>
                                        <select class="form-control" id="editLocation">
                                            <option value="">Select Location</option>
                                            <option>Chennai, Tamil Nadu, India</option>
                                            <option>Bangalore, Karnataka, India</option>
                                            <option>Kochi, Kerala, India</option>
                                        </select>
                                        <small class="text-danger error-msg w-100 mt-1"></small>
                                    </div>
                                    <div class="input-group mb-4">
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
                                    <div class="input-group mb-4">
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
                                    <div class="form-check mt-2 mb-3">
                                        <input type="checkbox" class="form-check-input" id="editModalShowPassword" />
                                        <label class="form-check-label" for="editModalShowPassword">Show Password</label>
                                    </div>
                                    <div class="mb-4">
                                        <div class="d-flex align-items-center flex-wrap">
                                            <label class="mb-0 mr-3 font-weight-bold">Languages Known :</label>
                                            <div class="input-group mr-3" style="max-width: 140px;">
                                                <div class="input-group-prepend">
                                                    <div class="input-group-text">
                                                        <input type="checkbox" name="editLangCheck" id="editEngCheck" value="English" />
                                                    </div>
                                                </div>
                                                <label class="form-control" for="editEngCheck">English</label>
                                            </div>
                                            <div class="input-group mr-3" style="max-width: 140px;">
                                                <div class="input-group-prepend">
                                                    <div class="input-group-text">
                                                        <input type="checkbox" name="editLangCheck" id="editTamCheck" value="Tamil" />
                                                    </div>
                                                </div>
                                                <label class="form-control" for="editTamCheck">Tamil</label>
                                            </div>
                                            <div class="input-group" style="max-width: 140px;">
                                                <div class="input-group-prepend">
                                                    <div class="input-group-text">
                                                        <input type="checkbox" name="editLangCheck" id="editHinCheck" value="Hindi" />
                                                    </div>
                                                </div>
                                                <label class="form-control" for="editHinCheck">Hindi</label>
                                            </div>
                                        </div>
                                        <small class="text-danger error-msg d-block mt-1"></small>
                                    </div>
                                </div>
                                <div class="modal-footer border-0 flex-column">
                                    <div class="d-flex justify-content-center align-items-center mb-3">
                                        <button type="button" class="btn btn-secondary mr-2" data-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-danger mr-2" id="deleteUserBtn">Delete</button>
                                        <button type="button" class="btn btn-success" id="updateUserBtn">Update</button>
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
    <script>
        $(document).ready(function () {
            let table = null;

            let userListmodal = JSON.parse(localStorage.getItem("userdetailsModal")) || [];

            //error message
            const showerror = (message) => {
                Swal.fire({
                    icon: "error",
                    title: "Error",
                    text: message
                });
            };

            //success message
            const successmsg = (message) => {
                Swal.fire({
                    icon: "success",
                    title: "Thank you",
                    text: message
                });
            };

            //
            $("#editUserModal").on("hidden.bs.modal", function () {
                $(this).find("input[type='text'], input[type='email'], input[type='tel'], input[type='password'], input[type='hidden']").val("");
                $(this).find("select").val("");
                $(this).find("input[type='radio']").prop("checked", false);
                $(this).find("input[type='checkbox']").prop("checked", false);
                $(this).find("input").removeClass("is-valid is-invalid");
                $(this).find("select").removeClass("is-valid is-invalid");
                $(this).find(".error-msg").text("").removeClass("text-success").addClass("text-danger");
                $("#editPassword, #editConfirmPassword").attr("type", "password");
                $(this).find(".togglePassword i").removeClass("fa-eye-slash").addClass("fa-eye");
            });
            $("#registerModal").on("hidden.bs.modal", function () {
                $(this).find("input[type='text'], input[type='email'], input[type='tel'], input[type='password']").val("");
                $(this).find("select").val("");
                $(this).find("input[type='radio']").prop("checked", false);
                $(this).find("input[type='checkbox']").prop("checked", false);
                $(this).find("input").removeClass("is-valid is-invalid");
                $(this).find(".error-msg").text("").removeClass("text-success").addClass("text-danger");
                $("#modalPassword, #modalConfirmPassword").attr("type", "password");
                $(this).find(".togglePassword i").removeClass("fa-eye-slash").addClass("fa-eye");
                $("#modalShowPassword").prop("checked", false);
            });

            $('#registerModal').on('show.bs.modal', function () {
                $('#modalUserTableCollapse').collapse('hide');
                $('#editUserModal').modal('hide');
            });
            $('#modalUserTableCollapse').on('show.bs.collapse', function () {
                $('#registerModal').modal('hide');
                $('#editUserModal').modal('hide');
            });

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

            const genderModalvalidate = () => {
                let isvalid = true;
                const genderinp = $('input[name="gender"]:checked');
                const gendererror = $('input[name="gender"]').closest('.mb-4').find('.error-msg');
                $('input[name="gender"]').removeClass("is-valid is-invalid");
                if (genderinp.length === 0) {
                    gendererror.text("Please select gender!");
                    $('input[name="gender"]').addClass("is-invalid");
                    isvalid = false;
                } else {
                    gendererror.text("");
                    genderinp.addClass("is-valid");
                }
                return isvalid;
            };
            const genderModalnofocus = () => {
                const genderinp = $('input[name="gender"]:checked');
                const gendererror = $('input[name="gender"]').closest('.mb-4').find('.error-msg');
                $('input[name="gender"]').removeClass("is-valid is-invalid");
                if (genderinp.length === 0) {
                    gendererror.text("Please select gender!");
                    $('input[name="gender"]').addClass("is-invalid");
                } else {
                    gendererror.text("");
                    genderinp.addClass("is-valid");
                }
            };
            $('input[name="gender"]').on({ change: genderModalvalidate, blur: genderModalnofocus });

            const emailModalvalidate = () => {
                let isvalid = true;
                let emailinp = $('#modalEmail');
                let email = emailinp.val();
                let emailerror = emailinp.closest('.mb-4').find('.error-msg');
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
                    emailinp.closest('.mb-4').find('.error-msg').text("Email address is required!");
                    emailinp.removeClass("is-valid").addClass("is-invalid");
                }
            };
            $("#modalEmail").on({ input: emailModalvalidate, blur: emailModalnofocus });

            $('#modalPhone').on('keydown', function (e) {
                let key = e.key;
                let phoneerror = $(this).closest('.mb-4').find('.error-msg');
                let allowedControls = ['Backspace', 'Delete', 'ArrowLeft', 'ArrowRight', 'Tab', 'Enter'];
                if (allowedControls.includes(key)) { return; }
                if (!/^[0-9]$/.test(key)) {
                    e.preventDefault();
                    phoneerror.text("Only numbers are allowed!");
                    $(this).addClass("is-invalid");
                }
            });
            const phoneModalvalidate = () => {
                let isvalid = true;
                let phoneinp = $('#modalPhone');
                let phone = phoneinp.val();
                let phoneerror = phoneinp.closest('.mb-4').find('.error-msg');
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
            $('#modalPhone').on('input', function () { phoneModalvalidate(); });
            const phoneModalnofocus = () => {
                let phoneinp = $('#modalPhone');
                if (phoneinp.val().trim() === "") {
                    phoneinp.closest('.mb-4').find('.error-msg').text("Contact number is required!");
                    phoneinp.removeClass("is-valid").addClass("is-invalid");
                }
            };
            $("#modalPhone").on('blur', phoneModalnofocus);

            const locationModalvalidate = () => {
                let isvalid = true;
                let locationinp = $('#modalLocation');
                let location = locationinp.val();
                let locationerror = locationinp.closest('.mb-4').find('.error-msg');
                locationinp.removeClass("is-valid is-invalid");
                if (location === "") {
                    locationerror.text("Location is required!");
                    locationinp.addClass("is-invalid"); isvalid = false;
                } else {
                    locationerror.text(""); locationinp.addClass("is-valid");
                }
                return isvalid;
            };
            const locationModalnofocus = () => {
                let locationinp = $('#modalLocation');
                if (locationinp.val() === "") {
                    locationinp.closest('.mb-4').find('.error-msg').text("Location is required!");
                    locationinp.removeClass("is-valid").addClass("is-invalid");
                }
            };
            $('#modalLocation').on({ change: locationModalvalidate, blur: locationModalnofocus });

            const passModalvalidate = () => {
                let isvalid = true;
                let passinp = $('#modalPassword');
                let pass = passinp.val();
                let passerror = passinp.closest('.mb-4').find('.error-msg');
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
                    passinp.closest('.mb-4').find('.error-msg').text("Password is required!");
                    passinp.removeClass("is-valid").addClass("is-invalid");
                }
            };
            $("#modalPassword").on({ input: passModalvalidate, blur: passModalnofocus });
            $('#modalPassword').on('input', function () {
                let cpass = $('#modalConfirmPassword').val();
                if (cpass.trim() !== "") { cpassModalvalidate(); }
            });

            const cpassModalvalidate = () => {
                let isvalid = true;
                let cpassinp = $('#modalConfirmPassword');
                let cpass = cpassinp.val();
                let pass = $('#modalPassword').val();
                let cpasserror = cpassinp.closest('.mb-4').find('.error-msg');
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
                    cpassinp.closest('.mb-4').find('.error-msg').text("Confirm your password!");
                    cpassinp.removeClass("is-valid").addClass("is-invalid");
                }
            };
            $('#modalConfirmPassword').on('input', function () { cpassModalvalidate(); });
            $("#modalConfirmPassword").on('blur', cpassModalnofocus);

            const langModalvalidate = () => {
                let isvalid = true;
                const langinp = $('input[name="langcheck"]:checked');
                const langerror = $('input[name="langcheck"]').closest('.mb-4').find('.error-msg');
                $('input[name="langcheck"]').removeClass("is-valid is-invalid");
                if (langinp.length === 0) {
                    langerror.text("Please select the languages known!");
                    $('input[name="langcheck"]').addClass("is-invalid"); isvalid = false;
                } else {
                    langerror.text(""); $('input[name="langcheck"]').addClass("is-valid");
                }
                return isvalid;
            };
            const langModalnofocus = () => {
                const langinp = $('input[name="langcheck"]:checked');
                const langerror = $('input[name="langcheck"]').closest('.mb-4').find('.error-msg');
                $('input[name="langcheck"]').removeClass("is-valid is-invalid");
                if (langinp.length === 0) {
                    langerror.text("Please select the languages known!");
                    $('input[name="langcheck"]').addClass("is-invalid");
                } else {
                    langerror.text(""); $('input[name="langcheck"]').addClass("is-valid");
                }
            };
            $('input[name="langcheck"]').on({ change: langModalvalidate, blur: langModalnofocus });

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

            const submitModalForm = (event) => {
                event.preventDefault();
                let isFnameValid = fnameModalvalidate();
                let isLnameValid = lnameModalvalidate();
                let isGenderValid = genderModalvalidate();
                let isEmailValid = emailModalvalidate();
                let isPhoneValid = phoneModalvalidate();
                let isLocationValid = locationModalvalidate();
                let isPassValid = passModalvalidate();
                let isCpassValid = cpassModalvalidate();
                let isLangValid = langModalvalidate();
                if (!isFnameValid) { showerror("First name is required!"); return; }
                if (!isLnameValid) { showerror("Last name is required!"); return; }
                if (!isGenderValid) { showerror("Gender is required!"); return; }
                if (!isEmailValid) { showerror("Email address is required!"); return; }
                if (!isPhoneValid) { showerror("Contact number is required!"); return; }
                if (!isLocationValid) { showerror("Location is required!"); return; }
                if (!isPassValid) { showerror("Password is required!"); return; }
                if (!isCpassValid) { showerror("Confirm password is required!"); return; }
                if (!isLangValid) { showerror("Languages is required!"); return; }

                let userData = {
                    id: Date.now(),
                    fname: $("#modalFname").val().trim(),
                    lname: $("#modalLname").val().trim(),
                    gender: $('input[name="gender"]:checked').val(),
                    email: $("#modalEmail").val().trim(),
                    phone: $("#modalPhone").val().trim(),
                    location: $("#modalLocation").val(),
                    pass: $("#modalPassword").val().trim(),
                    fullName: `${$("#modalFname").val().trim()} ${$("#modalLname").val().trim()}`.trim(),
                    normalizedPass: $("#modalPassword").val().trim(),
                    languages: $('input[name="langcheck"]:checked').map(function () { return this.value; }).get()
                };
                userListmodal.push(userData);
                localStorage.setItem("userdetailsModal", JSON.stringify(userListmodal));
                if (table) {
                    table.row.add(userData).draw();
                }
                successmsg(`Welcome, ${userData.fname} ${userData.lname}`);
                $("#registerModal").modal("hide");
                $("#registerModal input[type='text'], #registerModal input[type='email'], #registerModal input[type='tel'], #registerModal input[type='password']").val("");
                $("#registerModal select").val("");
                $("#registerModal input[type='radio']").prop("checked", false);
                $("#registerModal input[type='checkbox']").prop("checked", false);
                $("#registerModal input").removeClass("is-valid is-invalid");
                $("#registerModal select").removeClass("is-valid is-invalid");
                $("#registerModal .error-msg").text("").removeClass("text-success").addClass("text-danger");
            };
            $("#modalSubmitBtn").on("click", submitModalForm);

            const loadUserTable = () => {
                userListmodal = JSON.parse(localStorage.getItem("userdetailsModal")) || [];
                userListmodal = userListmodal.map(user => ({
                    ...user,
                    id: user.id || Date.now() + Math.random(),
                    fullName: `${user.fname || user.firstName || ""} ${user.lname || user.lastName || ""}`.trim(),
                    normalizedPass: user.pass || user.password || ""
                }));
                localStorage.setItem("userdetailsModal", JSON.stringify(userListmodal));
                if ($.fn.DataTable.isDataTable("#modalUserTable")) {
                    $("#modalUserTable").DataTable().destroy();
                    $("#modalTableBody").empty();
                }
                table = $("#modalUserTable").DataTable({
                    data: userListmodal,
                    responsive: true,
                    pageLength: 10,
                    ordering: true,
                    stateSave: false,
                    searching: true,
                    info: true,
                    autoWidth: false,
                    order: [[0, "asc"]],
                    language: {
                        search: "",
                        searchPlaceholder: "Search users...",
                        emptyTable: "No users available",
                        zeroRecords: "No matching users found",
                        info: "Showing _START_ to _END_ of _TOTAL_ users",
                        lengthMenu: "Show _MENU_ users"
                    },
                    dom:
                        '<"row"<"col-12"<"dt-filter-btn">>>' +
                        '<"row"<"col-md-12  mb-2"P>>' +
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
                        viewCount: true, cascadePanes: true,
                        layout: "columns-3", orderable: false,
                        clear: false, initCollapsed: true
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
                                {
                                    extend: "print",
                                    text: '<i class="fa fa-print mr-1"></i> Print',
                                    className: "btn btn-sm"
                                }
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
                            title: "Name",
                            data: "fullName",
                            className: "text-center align-middle",
                            searchPanes: { show: true },
                            defaultContent: "—", render: $.fn.dataTable.render.text()
                        },
                        {
                            title: "Gender",
                            data: "gender",
                            className: "text-center align-middle",
                            searchPanes: { show: true },
                            orderable: false,
                            defaultContent: "—",
                            render: $.fn.dataTable.render.text()
                        },
                        {
                            title: "Email",
                            data: "email",
                            className: "text-center align-middle",
                            searchPanes: { show: false },
                            orderable: false,
                            defaultContent: "—",
                            render: $.fn.dataTable.render.text()
                        },
                        {
                            title: "Phone",
                            data: "phone",
                            className: "text-center align-middle",
                            searchPanes: { show: false },
                            orderable: false,
                            defaultContent: "—",
                            render: $.fn.dataTable.render.text()
                        },
                        {
                            title: "Location",
                            data: "location",
                            className: "text-center align-middle",
                            searchPanes: { show: true },
                            orderable: false,
                            defaultContent: "—",
                            render: $.fn.dataTable.render.text()
                        },
                        {
                            title: "Languages",
                            data: "languages",
                            className: "text-center align-middle",
                            searchPanes: { show: true },
                            orderable: false,
                            defaultContent: "—",
                            render: function (data) {
                                return Array.isArray(data) ? data.join(", ") : data;
                            }
                        },
                        {
                            title: "Password",
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
                            title: "Action",
                            data: null,
                            orderable: false,
                            searchable: false,
                            searchPanes: { show: false },
                            className: "text-center align-middle",
                            render: () => `<button type="button" class="btn btn-sm btn-outline-primary updateBtn" title="Edit User">
                                        <i class="fa-solid fa-pen-to-square mr-1"></i>Edit
                                    </button>`
                        }
                    ],
                    initComplete: function () {
                        const btnContainer = $(this.api().table().container());
                        const allBtns = btnContainer.find('.dt-buttons button');
                        btnContainer.find('.dt-filter-btn').append(allBtns.eq(0).detach());
                        btnContainer.find('.dt-export-btn').append(allBtns.eq(1).detach());
                        btnContainer.find('.dt-state-btn').append(allBtns.eq(2).detach());
                        btnContainer.find('.dt-load-btn').append(allBtns.eq(3).detach());
                        setTimeout(() => $('.dtsp-searchPanes').hide(), 50);
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
                        if (table) { table.clear().rows.add(userListmodal).draw(); }
                        $("#editUserModal").modal("hide");
                        Swal.fire({ title: "Deleted!", text: `${fullname}'s data is deleted.`, icon: "success" });
                    }
                });
            });
            $("#updateUserBtn").on("click", function () {
                $(".editInput").trigger("input");
                $("#editLocation").trigger("change");
                $("input[name='editGender']").trigger("change");
                $('input[name="editLangCheck"]').trigger("change");

                if ($("#editUserModal .is-invalid").length > 0) {
                    showerror("Please fill all the fields correctly!");
                    return;
                }
                let userId = parseInt($("#editIndex").val());
                let userIdx = userListmodal.findIndex(u => u.id === userId);
                if (userIdx === -1) return;
                let existingUser = userListmodal[userIdx];
                let updatedUser = {
                    id: existingUser.id,
                    fname: $("#editFname").val().trim(),
                    lname: $("#editLname").val().trim(),
                    gender: $('input[name="editGender"]:checked').val(),
                    email: $("#editEmail").val().trim(),
                    phone: $("#editPhone").val().trim(),
                    location: $("#editLocation").val(),
                    pass: $("#editPassword").val().trim(),
                    fullName: `${$("#editFname").val().trim()} ${$("#editLname").val().trim()}`.trim(),
                    normalizedPass: $("#editPassword").val().trim(),
                    languages: $('input[name="editLangCheck"]:checked').map(function () { return this.value; }).get()
                };
                userListmodal[userIdx] = updatedUser;
                localStorage.setItem("userdetailsModal", JSON.stringify(userListmodal));
                if (table) { table.clear().rows.add(userListmodal).draw(); }
                $("#editUserModal").modal("hide");
                successmsg(`${updatedUser.fullName}'s data is updated.`);
            });

            $("#modalUserTable tbody").on("click", ".updateBtn", function () {
                if (!table) return;
                $("#editUserModal .error-msg").text("").removeClass("text-success").addClass("text-danger");
                $(".editInput").removeClass("is-valid is-invalid");
                let rowData = table.row($(this).closest("tr")).data();
                $("#editIndex").val(rowData.id);
                $("#editFname").val(rowData.fname || rowData.firstName);
                $("#editLname").val(rowData.lname || rowData.lastName);
                $("input[name='editGender']").prop("checked", false);
                if ((rowData.gender || "").toLowerCase() === "male") {
                    $("#editMale").prop("checked", true);
                } else if ((rowData.gender || "").toLowerCase() === "female") {
                    $("#editFemale").prop("checked", true);
                }
                $("#editEmail").val(rowData.email);
                $("#editPhone").val(rowData.phone);
                $("#editLocation").val(rowData.location);
                $("#editPassword").val(rowData.pass || rowData.password);
                $("#editConfirmPassword").val(rowData.pass || rowData.password);
                $('input[name="editLangCheck"]').prop("checked", false);
                if (Array.isArray(rowData.languages)) {
                    rowData.languages.forEach(lang => {
                        $(`input[name="editLangCheck"][value="${lang}"]`).prop("checked", true);
                    });
                }

                $(".editInput").trigger("input");
                $("#editLocation").trigger("change");
                $("input[name='editGender']").trigger("change");
                $('input[name="editLangCheck"]').trigger("change");
                $("#editUserModal").modal("show");
            });

            $("#editUserModal").on("input change", ".editInput, #editLocation, input[name='editGender'], input[name='editLangCheck']", function () {
                let input = $(this);
                let value = input.val();
                let field = input.attr("id");
                let errorcontent = input.closest(".input-group, .mb-4").find(".error-msg");
                input.removeClass("is-valid is-invalid");
                if ($(this).attr("name") === "editGender") {
                    $("input[name='editGender']").removeClass("is-valid is-invalid");
                }
                if ($(this).attr("name") === "editLangCheck") {
                    $("input[name='editLangCheck']").removeClass("is-valid is-invalid");
                }

                if (field === "editFname" || field === "editLname") {
                    let pattern = /^[A-Za-z]+(['][A-Za-z]+)*'?$/;
                    if (value.trim() === "") {
                        errorcontent.text(field === "editFname" ? "First name is required!" : "Last name is required!");
                        input.addClass("is-invalid");
                    } else if (/\s/.test(value)) {
                        errorcontent.text("Spaces are not allowed!"); input.addClass("is-invalid");
                    } else if (!pattern.test(value)) {
                        errorcontent.text("Only alphabets and ' allowed!"); input.addClass("is-invalid");
                    } else {
                        errorcontent.text(""); input.addClass("is-valid");
                    }
                } else if (field === "editEmail") {
                    let pattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                    if (value.trim() === "") {
                        errorcontent.text("Email is required!"); input.addClass("is-invalid");
                    } else if (/\s/.test(value)) {
                        errorcontent.text("Spaces are not allowed!"); input.addClass("is-invalid");
                    } else if (!pattern.test(value)) {
                        errorcontent.text("Enter valid email!"); input.addClass("is-invalid");
                    } else {
                        errorcontent.text(""); input.addClass("is-valid");
                    }
                } else if (field === "editPhone") {
                    input.val(value.replace(/[^0-9]/g, ""));
                    value = input.val();
                    if (value.trim() === "") {
                        errorcontent.text("Phone number is required!"); input.addClass("is-invalid");
                    } else if (!/^[0-9]{10}$/.test(value)) {
                        errorcontent.text("Enter valid 10 digit number!"); input.addClass("is-invalid");
                    } else {
                        errorcontent.text(""); input.addClass("is-valid");
                    }
                } else if (field === "editPassword" || field === "editConfirmPassword") {
                    let pattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@!$%&]).{8,}$/;
                    if (value.trim() === "") {
                        errorcontent.text(field === "editPassword" ? "Password is required!" : "Confirm password is required!");
                        input.addClass("is-invalid");
                    } else if (/\s/.test(value)) {
                        errorcontent.text("Spaces are not allowed!"); input.addClass("is-invalid");
                    } else if (field === "editPassword" && !pattern.test(value)) {
                        errorcontent.text("Enter a valid password!"); input.addClass("is-invalid");
                    } else if (field === "editConfirmPassword" && value !== $("#editPassword").val()) {
                        errorcontent.text("Password doesn't match!"); input.addClass("is-invalid");
                    } else {
                        errorcontent.text(""); input.addClass("is-valid");
                    }
                } else if (field === "editLocation") {
                    if (value === "") {
                        errorcontent.text("Location is required!"); input.addClass("is-invalid");
                    } else {
                        errorcontent.text(""); input.addClass("is-valid");
                    }
                }

                let gendererror = $("input[name='editGender']").closest(".mb-4").find(".error-msg");
                if ($("input[name='editGender']:checked").length === 0) {
                    gendererror.text("Gender is required!");
                    $("input[name='editGender']").removeClass("is-valid").addClass("is-invalid");
                } else {
                    gendererror.text("");
                    $("input[name='editGender']").removeClass("is-invalid is-valid");
                    $("input[name='editGender']:checked").addClass("is-valid");
                }
                let langerror = $("input[name='editLangCheck']").closest(".mb-4").find(".error-msg");
                if ($("input[name='editLangCheck']:checked").length === 0) {
                    langerror.text("Please select the languages known!");
                    $("input[name='editLangCheck']").removeClass("is-valid").addClass("is-invalid");
                } else {
                    langerror.text("");
                    $("input[name='editLangCheck']").removeClass("is-invalid").addClass("is-valid");
                }
            });
            $('#editPhone').on('keydown', function (e) {
                let key = e.key;
                let phoneerror = $(this).closest('.mb-4').find('.error-msg');
                let allowedControls = ['Backspace', 'Delete', 'ArrowLeft', 'ArrowRight', 'Tab', 'Enter'];
                if (allowedControls.includes(key)) { return; }
                if (!/^[0-9]$/.test(key)) {
                    e.preventDefault();
                    phoneerror.text("Only numbers are allowed!");
                    $(this).addClass("is-invalid");
                }
            });

            $("#editUserModal").on("blur", "input, select", function () {
                let input = $(this);
                let value = input.val();
                let field = input.attr("id");
                let errorcontent = input.closest(".input-group, .mb-4").find(".error-msg");
                if ($(this).attr("name") === "editGender") {
                    if ($("input[name='editGender']:checked").length === 0) {
                        errorcontent.text("Gender is required!");
                        $("input[name='editGender']").removeClass("is-valid").addClass("is-invalid");
                    } else {
                        errorcontent.text("");
                        $("input[name='editGender']").removeClass("is-invalid").addClass("is-valid");
                    }
                    return;
                }
                if ($(this).attr("name") === "editLangCheck") {
                    if ($("input[name='editLangCheck']:checked").length === 0) {
                        errorcontent.text("Please select the languages known!");
                        $("input[name='editLangCheck']").removeClass("is-valid").addClass("is-invalid");
                    } else {
                        errorcontent.text("");
                        $("input[name='editLangCheck']").removeClass("is-invalid").addClass("is-valid");
                    }
                    return;
                }
                const fieldMessages = {
                    editFname: "First name is required!",
                    editLname: "Last name is required!",
                    editGender: "Gender is required!",
                    editEmail: "Email address is required!",
                    editPhone: "Contact number is required!",
                    editLocation: "Location is required!",
                    editPassword: "Password is required!",
                    editConfirmPassword: "Confirm password is required!"
                };
                if (value.trim() === "") {
                    errorcontent.text(fieldMessages[field] || "This field is required!");
                    input.removeClass("is-valid").addClass("is-invalid");
                }
            });

        });
    </script>
</body>
</html>
